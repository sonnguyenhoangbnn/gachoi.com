<?php

namespace Botble\FamilyTree\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\FamilyTree\Models\FamilyTree;
use Botble\FamilyTree\Repositories\Interfaces\FamilyCoupleInterface;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;

class FamilyCoupleRepository extends RepositoriesAbstract implements FamilyCoupleInterface
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
        $query = $this->model
            ->rightJoin('ec_products as husband', 'husband.id','=','family_couples.husband_id')
            ->rightJoin('ec_products as wife', 'wife.id','=','family_couples.wife_id');
        return $query
            ->selectRaw('husband.name AS husband_name, wife.name AS wife_name, husband.id as husband_id, wife.id AS wife_id,
  husband.image AS husband_image, wife.image AS wife_image, family_couples.id, wife.id as wife_id')
        ->where('husband.status', BaseStatusEnum::PUBLISHED)
        ->where('wife.status', BaseStatusEnum::PUBLISHED)
        ->where('husband.is_variation', '<>', 1)
        ->where('wife.is_variation', '<>', 1)
            ->where(function($query) use ($request){
                $query->where('husband.name', 'LIKE', '%' . $request->input('keyword') . '%');
                $query->orWhere('wife.name', 'LIKE', '%' . $request->input('keyword') . '%');
            });
    }

    public function getParentSearch($request, $gender = 1) {
        $query = $this->getProductSearch($request, $gender);
        if ($gender === FamilyTree::MALE) {
            return $query->where('family_couples.husband_id', $request->input('product_id'));
        } else {
            return $query->where('family_couples.wife_id', $request->input('product_id'));
        }
    }
}
