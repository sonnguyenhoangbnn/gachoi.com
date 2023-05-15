<?php

namespace Botble\FamilyTree\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface FamilyTreeInterface extends RepositoryInterface
{
    /**
     * @return \Illuminate\Database\Eloquent\Builder[]|\Illuminate\Database\Eloquent\Collection|\Illuminate\Database\Query\Builder[]|\Illuminate\Support\Collection
     */
    public function getAll();
    public function getProductSearch($request, $gender = 1);
    public function getGender($request);
    public function getChildren($id);
    public function getSiblings($id);
    public function getFamily($id);
    public function loadParentTree($id);
}
