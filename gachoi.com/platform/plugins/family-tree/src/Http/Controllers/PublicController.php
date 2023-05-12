<?php

namespace Botble\FamilyTree\Http\Controllers;

use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Http\Responses\BaseHttpResponse;

class PublicController extends BaseController
{
    /**
     * @var FamilyTreeInterface
     */
    protected $adsRepository;

    /**
     * @param FamilyTreeInterface $adsRepository
     */
    public function __construct(FamilyTreeInterface $adsRepository)
    {
        $this->adsRepository = $adsRepository;
    }

    /**
     * @param string $key
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function getAdsClick($key, BaseHttpResponse $response)
    {
        $ads = $this->adsRepository->getFirstBy(compact('key'));

        if (!$ads || !$ads->url) {
            return $response->setNextUrl(route('public.single'));
        }

        $ads->clicked++;
        $ads->save();

        return $response->setNextUrl($ads->url);
    }
}
