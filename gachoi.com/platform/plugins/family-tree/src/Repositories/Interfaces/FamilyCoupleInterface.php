<?php

namespace Botble\FamilyTree\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface FamilyCoupleInterface extends RepositoryInterface
{
    /**
     * @return \Illuminate\Database\Eloquent\Builder[]|\Illuminate\Database\Eloquent\Collection|\Illuminate\Database\Query\Builder[]|\Illuminate\Support\Collection
     */
    public function getAll();
    public function getProductSearch($request, $gender = 1);
    public function getParentSearch($request, $gender = 1);
}
