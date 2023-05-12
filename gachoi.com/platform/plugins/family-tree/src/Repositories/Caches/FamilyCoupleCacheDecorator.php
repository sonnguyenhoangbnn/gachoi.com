<?php

namespace Botble\FamilyTree\Repositories\Caches;

use Botble\FamilyTree\Repositories\Interfaces\FamilyCoupleInterface;
use Botble\Support\Repositories\Caches\CacheAbstractDecorator;

class FamilyCoupleCacheDecorator extends CacheAbstractDecorator implements FamilyCoupleInterface
{
    /**
     * {@inheritDoc}
     */
    public function getAll()
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritDoc}
     */
    public function getProductSearch($request, $gender = 1)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    public function getParentSearch($request, $gender = 1)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
