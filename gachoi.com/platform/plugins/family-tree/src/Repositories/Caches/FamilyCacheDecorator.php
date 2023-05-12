<?php

namespace Botble\FamilyTree\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;

class FamilyCacheDecorator extends CacheAbstractDecorator implements FamilyTreeInterface
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

    /**
     * {@inheritDoc}
     */
    public function getGender($request)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritDoc}
     */
    public function getChildren($id)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritDoc}
     */
    public function getSiblings($id)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritDoc}
     */
    public function getFamily($id)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    /**
     * {@inheritDoc}
     */
    public function loadParentTree($id)
    {
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
