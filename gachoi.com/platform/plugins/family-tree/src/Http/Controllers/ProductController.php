<?php


namespace Botble\FamilyTree\Http\Controllers;


use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ecommerce\Models\Product;
use Botble\FamilyTree\Http\Requests\StoreAddChildRequest;
use Botble\FamilyTree\Models\FamilyCouple;
use Botble\FamilyTree\Models\FamilyTree;
use Botble\FamilyTree\Repositories\Interfaces\FamilyCoupleInterface;
use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;
use RvMedia;
use Illuminate\Http\Request;
use Botble\Ecommerce\Traits\ProductActionsTrait;
use Illuminate\Support\Facades\DB;
use Symfony\Component\Console\Input\Input;

class ProductController
{
    /**
     * @var FamilyTreeInterface
     */
    protected $familyTreeRepository;

    /**
     * @var FamilyCoupleInterface
     */
    protected $familyCoupleRepository;


    /**
     * ProductActionsTrait constructor.
     * @param FamilyTreeInterface $familyTreeRepository
     * @param FamilyCoupleInterface $familyCoupleRepository
     */
    public function __construct(
        FamilyTreeInterface $familyTreeRepository,
        FamilyCoupleInterface $familyCoupleRepository
    ) {
        $this->familyTreeRepository = $familyTreeRepository;
        $this->familyCoupleRepository = $familyCoupleRepository;
    }

    public function getListProductForSearch (Request $request, BaseHttpResponse $response) {
        $includeVariation = $request->input('include_variation', 0);
        $type = $request->type;
        $view = 'plugins/family-tree::partials.panel-search-data';
        switch ($type) {
            case 'couple':
                $availableProducts = $this->familyCoupleRepository->getProductSearch($request,2 )->simplePaginate(5);
                $view = 'plugins/family-tree::partials.panel-search-couple-data';
                break;
            case 'female':
                $availableProducts = $this->familyTreeRepository->getProductSearch($request,0 )->simplePaginate(5);
                break;
            case 'parent':
                $gender = $this->familyTreeRepository->getGender($request->input('product_id'));
                $availableProducts = $this->familyCoupleRepository->getParentSearch($request, $gender)->simplePaginate(5);
                $view = 'plugins/family-tree::partials.panel-search-couple-data';
                break;
            default:
                $availableProducts = $this->familyTreeRepository->getProductSearch($request,1 )->simplePaginate(5);
                break;
        }

//
//        dd($this->familyTreeRepository->getProductSearch($request,1 ));
//        $availableProducts = $this->productRepository
//            ->advancedGet([
//                'with'     => ['user'],
//                'condition' => [
//                    'status' => BaseStatusEnum::PUBLISHED,
//                    ['is_variation', '<>', 1],
//                    ['id', '<>', $request->input('product_id', 0)],
//                    ['name', 'LIKE', '%' . $request->input('keyword') . '%'],
//                ],
//                'select'    => [
//                    'id',
//                    'name',
//                    'images',
//                    'image',
//                    'price',
//                ],
//                'paginate'  => [
//                    'per_page'      => 5,
//                    'type'          => 'simplePaginate',
//                    'current_paged' => (int)$request->input('page', 1),
//                ],
//            ]);
//

//        dd(DB::getQueryLog());
        return $response->setData(
            view($view, compact(
                'availableProducts',
                'includeVariation',
                'type'
            ))->render()
        );
    }

    public function storeAddChild(StoreAddChildRequest $request, BaseHttpResponse $response) {
        DB::beginTransaction();
        try {
            $id = $request->get('ref_from');
            $child = new Product();
            $child->name = $request->get('name');
            $child->status = BaseStatusEnum::PUBLISHED;
            $child->save();
            $familyTree = new FamilyTree();
            $familyTree->gender_id = $request->get('gender');
            $familyTree->parent_id = $request->get('parent');
            $familyTree->product_id = $child->id;
            $familyTree->manager_id = $id;
            $parent = $this->storeFamilyTree($id);
            if ($request->get('parent')) {
                $couple = FamilyCouple::find($request->get('parent'));
                $familyTree->father_id = $couple->husband_id;
                $familyTree->mother_id = $couple->wife_id;
                $familyTree->save();
            } else {
                if ($parent->gender_id == FamilyTree::MALE) {
                    $familyTree->father_id = $id;
                } else {
                    $familyTree->mother_id = $id;
                }
            }
            $familyTree->save();
            DB::commit();
            return response()->json([
                'done'   => 'done',
                'status' => true,
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return $response->setError(true)->setMessage($e->getMessage());
        }

    }

    private function storeFamilyTree($id) {
        $parent = FamilyTree::where('product_id',$id)->first();
        if (empty($parent)) {
            $parent = new FamilyTree();
            $parent->product_id = $id;
            $parent->gender_id = FamilyTree::MALE;
            $parent->save();
        }
        return $parent;
    }

    public function getChildAndSibling(Request $request, BaseHttpResponse $response) {
        try {
            $children = $this->familyTreeRepository->getChildren($request->get('ref_from'));
            $siblings = $this->familyTreeRepository->getSiblings($request->get('ref_from'));
            foreach ($children as $child) {
                $child->image = RvMedia::getImageUrl($child->image, 'thumb', false, RvMedia::getDefaultImage());
            }
            foreach ($siblings as $sib) {
                $sib->image = RvMedia::getImageUrl($sib->image, 'thumb', false, RvMedia::getDefaultImage());
            }
            return response()->json([
                'children' => $children,
                'siblings' => $siblings
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return $response->setError(true)->setMessage($e->getMessage());
        }

    }

    public function storeAddFamily(Request $request, BaseHttpResponse $response) {
        DB::beginTransaction();
        try {
            $parent = $this->storeFamilyTree($request->get('ref_from'));
            if ($request->has('gender_id') && $request->get('gender_id')) {
                $parent->gender_id = $request->get('gender_id');
            }
            if ($request->has('father_id') && $request->get('father_id')) {
                $parent->father_id = $request->get('father_id');
            }
            if ($request->has('mother_id') && $request->get('mother_id')) {
                $parent->mother_id = $request->get('mother_id');
            }
            if ($request->has('parent_id') && $request->get('parent_id')) {
                $parent->parent_id = $request->get('parent_id');
            }
            if ($request->has('wife_id') && $request->get('wife_id')) {
                if ($parent->gender_id === FamilyTree::MALE && !FamilyCouple::where(['husband_id' => $request->get('ref_from'), 'wife_id' => $request->get('wife_id')])->exists()) {
                    $couple = new FamilyCouple();
                    $couple->husband_id = $request->get('ref_from');
                    $couple->wife_id = $request->get('wife_id');
                    $couple->product_id = $request->get('ref_from');
                    $couple->save();
                } else {
                    return $response->setError(true)->setMessage('This wife exists');
                }
            }
            if ($request->has('husband_id') && $request->get('husband_id')) {
                if ($parent->gender_id === FamilyTree::FEMALE && !FamilyCouple::where(['wife_id' => $request->get('ref_from'), 'husband_id' => $request->get('wife_id')])->exists()) {
                    $couple = new FamilyCouple();
                    $couple->husband_id = $request->get('husband_id');
                    $couple->wife_id = $request->get('ref_from');
                    $couple->product_id = $request->get('ref_from');
                    $couple->save();
                } else {
                    return $response->setError(true)->setMessage('This husband exists');
                }
            }
            $parent->save();
            DB::commit();
            return response()->json([
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return $response->setError(true)->setMessage($e->getMessage());
        }

    }
}
