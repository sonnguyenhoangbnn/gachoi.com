<?php

namespace Botble\FamilyTree\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Ecommerce\Models\Product;
use Botble\FamilyTree\Models\FamilyCouple;
use Botble\FamilyTree\Models\FamilyTree;
use Botble\Slug\Models\Slug;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;
use Illuminate\Support\Facades\DB;

class FamilyTreeRepository extends RepositoriesAbstract implements FamilyTreeInterface
{
    /**
     * {@inheritDoc}
     */
    public function getAll()
    {
        $data = $this->model
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->notExpired()
            ->with(['metadata']);

        return $this->applyBeforeExecuteQuery($data)->get();
    }

    public function getProductSearch($request, $gender = 1) {
        $query = $this->model->rightJoin('ec_products', 'ec_products.id','=','family_tree.product_id');
        if ($gender) {
            $query->where(function($query) use ($gender){
                $query->where('family_tree.gender_id', $gender);
                $query->orwhereNull('family_tree.gender_id');
            });
        } else {
            $query->where('family_tree.gender_id', $gender);
        }
        return $query
            ->select('ec_products.name', 'ec_products.id', 'ec_products.image')
        ->where('ec_products.status', BaseStatusEnum::PUBLISHED)
        ->where('ec_products.is_variation', '<>', 1)
//        ->where('ec_products.id', '<>', $request->input('product_id', 0))
        ->where('ec_products.name', 'LIKE', '%' . $request->input('keyword') . '%');
    }

    public function getFamily($id) {
        $productName = app(Product::class)->getTable();
        $slug = app(Slug::class)->getTable();
        $data = $this->model->where('product_id', $id)
            ->leftJoin("{$productName} as father", 'family_tree.father_id', '=', "father.id")
            ->leftJoin("{$productName} as mother", 'family_tree.mother_id', '=', "mother.id")
            ->selectRaw("family_tree.parent_id as parent_id,family_tree.gender_id, father.id as father_id, father.name as father_name, father.image as father_image, mother.id as mother_id, mother.name as mother_name, mother.image as mother_image")
            ->first();

        $husband = FamilyCouple::where('wife_id' ,$id)->rightJoin("{$productName} as husband", 'family_couples.husband_id', '=', "husband.id")->selectRaw("husband.id as id, husband.name as name, husband.image as image")->get();
        $wife = FamilyCouple::where('husband_id' ,$id)->rightJoin("{$productName} as wife", 'family_couples.wife_id', '=', "wife.id")->selectRaw("wife.id as id, wife.name as name, wife.image as image")->get();
        if (!empty($data) && !empty($data->parent_id)) {
            $parent = FamilyCouple::where('family_couples.id' , $data->parent_id)->rightJoin("{$productName} as wife", 'family_couples.wife_id', '=', "wife.id")->rightJoin("{$productName} as husband", 'family_couples.husband_id', '=', "husband.id")
                ->selectRaw("wife.id as wife_id, wife.name as wife_name, wife.image as wife_image,husband.id as husband_id, husband.name as husband_name, husband.image as husband_image")->first();
        } else {
            $parent = null;
        }

        return ['family' => $data, 'husband' => $husband, 'wife' => $wife, 'parent' => $parent];
    }

    public function loadParentTree($id) {
        $productName = app(Product::class)->getTable();
        $data = $this->model->where('product_id', $id)->first();
        if (!empty($data) && !empty($data->parent_id)) {
            return FamilyCouple::where('family_couples.id' , $data->parent_id)->rightJoin("{$productName} as wife", 'family_couples.wife_id', '=', "wife.id")->rightJoin("{$productName} as husband", 'family_couples.husband_id', '=', "husband.id")
                ->selectRaw("wife.id as mother_id, wife.name as mother_name, wife.image as mother_image,husband.id as father_id, husband.name as father_name, husband.image as father_image")->first();
        } else {
            return $this->model->where('product_id', $id)
                ->leftJoin("{$productName} as father", 'family_tree.father_id', '=', "father.id")
                ->leftJoin("{$productName} as mother", 'family_tree.mother_id', '=', "mother.id")
                ->selectRaw("father.id as father_id, father.name as father_name, father.image as father_image, mother.id as mother_id, mother.name as mother_name, mother.image as mother_image")
                ->first();
        }
    }

    public function getGender($id)
    {
        $parent = $this->model->where('product_id', $id)->first();
        if (empty($parent)) {
            $parent = new FamilyTree();
            $parent->product_id = $id;
            $parent->gender_id = FamilyTree::MALE;
            $parent->save();
        }
        return $parent->gender_id;
        // TODO: Implement getParentSearch() method.
    }

    public function getChildren($id) {
        $gender = $this->getGender($id);

        $productName = app(Product::class)->getTable();

        $columnName = 'family_tree.mother_id';

        if ($gender === FamilyTree::MALE) {
            $columnName = 'family_tree.father_id';
        }

        return $this->model->where($columnName, $id)->selectRaw("p.id, p.name, p.image, CASE WHEN family_tree.gender_id = " . FamilyTree::MALE . " THEN 'M' ELSE 'F' END as gender")->join("{$productName} as p", 'family_tree.product_id', '=', "p.id")->get();
    }

    public function getSiblings($id) {
        $product = $this->model->where('product_id', $id)->first();
        $productName = app(Product::class)->getTable();
        if (is_null($product->father_id) && is_null($product->mother_id) && is_null($product->parent_id)) {
            $siblings = collect([]);
        } else {
            $siblings = $this->model->where('product_id', '!=', $id)
                ->where(function ($query) use ($product) {
                    if (!is_null($product->father_id)) {
                        $query->where('family_tree.father_id', $product->father_id);
                    }

                    if (!is_null($product->mother_id)) {
                        $query->orWhere('family_tree.mother_id', $product->mother_id);
                    }

                    if (!is_null($product->parent_id)) {
                        $query->orWhere('family_tree.parent_id', $product->parent_id);
                    }

                })
                ->selectRaw("p.id, p.name, p.image, CASE WHEN family_tree.gender_id = " . FamilyTree::MALE . " THEN 'M' ELSE 'F' END as gender")->join("{$productName} as p", 'family_tree.product_id', '=', "p.id")
                ->get();
        }
        return $siblings;
    }
}
