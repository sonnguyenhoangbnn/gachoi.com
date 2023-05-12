<?php

namespace Botble\FamilyTree\Facades;

use Botble\FamilyTree\Supports\FamilyTreeManager;
use Illuminate\Support\Facades\Facade;

class FamilyTreeManagerFacade extends Facade
{

    /**
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return FamilyTreeManager::class;
    }
}
