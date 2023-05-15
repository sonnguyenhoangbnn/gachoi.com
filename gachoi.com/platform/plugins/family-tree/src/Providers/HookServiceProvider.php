<?php

namespace Botble\FamilyTree\Providers;

use Assets;
use Auth;
use BaseHelper;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Models\BaseModel;
use Botble\Ecommerce\Models\Product;
use Botble\FamilyTree\Models\FamilyTree;
use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;
use Html;
use Illuminate\Support\ServiceProvider;
use Language;
use MarketplaceHelper;
use Route;
use SlugHelper;
use Throwable;

class HookServiceProvider extends ServiceProvider
{
    public function boot()
    {
        $this->app->booted(function () {
            add_filter(BASE_FILTER_AFTER_FORM_CREATED, [$this, 'registerAdditionalData'], 128, 2);
        });
    }
    /**
     * @param FormAbstract $form
     * @param BaseModel $data
     * @throws \Illuminate\Contracts\Container\BindingResolutionException
     */
    public function registerAdditionalData($form, $data)
    {
        if (get_class($data) == Product::class && request()->segment(1) === BaseHelper::getAdminPrefix()) {
            if($data->id) {
                $repository = $this->app->make(FamilyTreeInterface::class);
                $genders = [FamilyTree::FEMALE => trans('plugins/family-tree::family.female'), FamilyTree::MALE => trans('plugins/family-tree::family.male')] ;
                $children = $repository->getChildren($data->id);
                $siblings = $repository->getSiblings($data->id);
                $family = $repository->getFamily($data->id);
                $gender = $repository->getGender($data->id);
                $form->add('gender_id', 'customSelect', [
                    'label'      => trans('plugins/family-tree::family.gender'),
                    'label_attr' => ['class' => 'control-label'],
                    'choices'    => $genders,
                    'selected'   => $gender,
                    'attr'          => [
                        'data-target' => route('family-tree.add-family-product')
                    ]

                ])->removeMetaBox('family-tree')
                    ->removeMetaBox('family-tree-child')
                    ->removeMetaBox('family-tree-siblings')
                    ->addMetaBoxes([
                        'family-tree'    => [
                            'title'          => trans('plugins/family-tree::family.genealogy'),
                            'content'        => view('plugins/family-tree::partials.create',
                                [
                                    'product'     => $data,
                                    'gender'     =>  $gender,
                                    'data'     =>  $family,
                                ])
                                ->render(),
                            'before_wrapper' => '<div id="main-family-tree">',
                            'after_wrapper' => '</div>',
                            'priority'       => 10,
                        ],
                        'family-tree-child'    => [
                            'title'          => trans('plugins/family-tree::family.child'),
                            'content'        => view('plugins/family-tree::partials.childs',
                                [
                                    'product'     => $data,
                                    'children'     => $children,
                                ])
                                ->render(),
                            'before_wrapper' => '<div id="main-family-tree-child">',
                            'after_wrapper' => '</div>',
                            'priority'       => 11,
                        ],
                        'family-tree-siblings'    => [
                            'title'          => trans('plugins/family-tree::family.siblings'),
                            'content'        => view('plugins/family-tree::partials.siblings',
                                [
                                    'product'     => $data,
                                    'siblings'     => $siblings,
                                ])
                                ->render(),
                            'before_wrapper' => '<div id="main-family-tree-siblings">',
                            'after_wrapper' => '</div>',
                            'priority'       => 12,
                        ]
                    ]);

            }
        }

        return $form;
    }
}
