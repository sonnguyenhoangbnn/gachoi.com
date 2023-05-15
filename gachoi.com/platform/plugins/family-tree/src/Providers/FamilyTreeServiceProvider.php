<?php

namespace Botble\FamilyTree\Providers;

use Botble\FamilyTree\Models\FamilyCouple;
use Botble\FamilyTree\Repositories\Caches\FamilyCoupleCacheDecorator;
use Botble\FamilyTree\Repositories\Eloquent\FamilyCoupleRepository;
use Botble\FamilyTree\Repositories\Interfaces\FamilyCoupleInterface;
use FamilyTreeManager;
use Botble\FamilyTree\Facades\FamilyTreeManagerFacade;
use Botble\FamilyTree\Models\FamilyTree;
use Botble\FamilyTree\Repositories\Caches\FamilyCacheDecorator;
use Botble\FamilyTree\Repositories\Eloquent\FamilyTreeRepository;
use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;
use Botble\Base\Supports\Helper;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Event;
use Illuminate\Foundation\AliasLoader;
use Illuminate\Support\ServiceProvider;

class FamilyTreeServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(FamilyTreeInterface::class, function () {
            return new FamilyCacheDecorator(new FamilyTreeRepository(new FamilyTree));
        });

        $this->app->bind(FamilyCoupleInterface::class, function () {
            return new FamilyCoupleCacheDecorator(new FamilyCoupleRepository(new FamilyCouple));
        });

        Helper::autoload(__DIR__ . '/../../helpers');

        AliasLoader::getInstance()->alias('FamilyTreeManager', FamilyTreeManagerFacade::class);
    }

    public function boot()
    {
        $this->setNamespace('plugins/family-tree')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web'])
            ->loadAndPublishViews();
        $this->app->register(HookServiceProvider::class);

        if (function_exists('shortcode')) {
            add_shortcode('family-tree', 'FamilyTree', 'FamilyTree', function ($shortcode) {
                if (!$shortcode->content) {
                    return null;
                }

                return FamilyTreeManager::genderTree($shortcode->content);
            });
            shortcode()->setAdminConfig('family-tree', function ($attributes) {
                dd($attributes);
                return Theme::partial('short-codes.featured-product-categories-admin-config', compact('attributes'));
            });
        }
    }
}
