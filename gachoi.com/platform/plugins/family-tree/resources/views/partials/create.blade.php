<table class="table">
    <tbody>
    <tr>
        <th class="col-sm-4">{{ trans('plugins/family-tree::family.father') }}</th>
        <td class="col-sm-8">
            <div class="display-father family-group">
                <div class="father-option family-option">
                    <div class="selected">
                        @if (!empty($data['family']) && isset($data['family']->father_id))
                            <div class="selected-family-product-list">
                                <div class="wrap-img vertical-align-m-i">
                                    <img class="thumb-image" src="{{ RvMedia::getImageUrl($data['family']->father_image, 'thumb', false, RvMedia::getDefaultImage()) }}">
                                </div>
                                <div class="name">
                                    <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $data['family']->father_id]) }}">{{ $data['family']->father_name }}</a>
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="pull-right">
                        <span class="btn btn-link btn-xs setFamily">{{ trans('plugins/family-tree::family.set_father') }}</span>
                    </div>
                </div>
                <div class="father-choose family-choose">
                    <div class="form-group mb-2">
                        <input type="hidden" class="family-input" name="father_id" value="@if ($product) {{ implode(',', $product->products()->allRelatedIds()->toArray()) }} @endif" />
                        <div class="box-family-tree-search-advance product">
                            <div>
                                <input type="text" class="next-input textbox-family-tree-advancesearch" data-type="single"  placeholder="{{ trans('plugins/ecommerce::products.search_products') }}" data-target="{{ route('family-tree.get-list-product-for-search', ['product_id' => $product ? $product->id : 0, 'type' => 'male']) }}">
                            </div>
                            <div class="panel panel-default">

                            </div>
                        </div>
                    </div>
                    <span class="btn btn-default family-cancel">{{ trans('plugins/family-tree::family.cancel') }}</span>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <th>{{ trans('plugins/family-tree::family.mother') }}</th>
        <td>
            <div class="display-father family-group">
                <div class="father-option family-option">
                    <div class="selected">
                        @if (!empty($data['family']) && isset($data['family']->mother_id))
                            <div class="selected-family-product-list">
                                <div class="wrap-img vertical-align-m-i">
                                    <img class="thumb-image" src="{{ RvMedia::getImageUrl($data['family']->mother_image, 'thumb', false, RvMedia::getDefaultImage()) }}">
                                </div>
                                <div class="name">
                                    <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $data['family']->mother_id]) }}">{{ $data['family']->mother_name }}</a>
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="pull-right">
                        <span class="btn btn-link btn-xs setFamily">{{ trans('plugins/family-tree::family.set_mother') }}</span>
                    </div>
                </div>
                <div class="father-choose family-choose">
                    <div class="form-group mb-2">
                        <input type="hidden" class="family-input" name="mother_id" value="@if ($product) {{ implode(',', $product->products()->allRelatedIds()->toArray()) }} @endif" />
                        <div class="box-family-tree-search-advance product">
                            <div>
                                <input type="text" class="next-input textbox-family-tree-advancesearch" data-type="single"  placeholder="{{ trans('plugins/ecommerce::products.search_products') }}" data-target="{{ route('family-tree.get-list-product-for-search', ['product_id' => $product ? $product->id : 0, 'type' => 'female']) }}">
                            </div>
                            <div class="panel panel-default">

                            </div>
                        </div>
{{--                        @include('plugins/ecommerce::products.partials.selected-products-list', ['products' => $product ? $product->products : collect([]), 'includeVariation' => false])--}}
                    </div>
                    <span class="btn btn-default family-cancel">{{ trans('plugins/family-tree::family.cancel') }}</span>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <th class="col-sm-4">{{ trans('plugins/family-tree::family.parent') }}</th>
        <td class="col-sm-8">
            <div class="display-father family-group">
                <div class="father-option family-option">
                    <div class="selected">
                        @if (!empty($data['parent']))
                            <div class="selected-family-couple-product-list">
                                <div class="wrap-img vertical-align-m-i">
                                    <img class="thumb-image" src="{{ RvMedia::getImageUrl($data['parent']->husband_image, 'thumb', false, RvMedia::getDefaultImage()) }}" >
                                </div>
                                <div class="name">
                                    <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $data['parent']->husband_id]) }}">{{ $data['parent']->husband_name }}</a>
                                </div>
                                <span class="and">&</span>
                                <div class="wrap-img vertical-align-m-i">
                                    <img class="thumb-image" src="{{ RvMedia::getImageUrl($data['parent']->wife_image, 'thumb', false, RvMedia::getDefaultImage()) }}">
                                </div>
                                <div class="name">
                                    <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $data['parent']->wife_id]) }}">{{ $data['parent']->wife_name }}</a>
                                </div>
                            </div>
                        @endif
                    </div>
                    <div class="pull-right">
                        <span class="btn btn-link btn-xs setFamily">{{ trans('plugins/family-tree::family.set_parent') }}</span>
                    </div>
                </div>
                <div class="father-choose family-choose">
                    <div class="form-group mb-2">
                        <input type="hidden" class="family-input" name="parent_id" value="@if ($product) {{ implode(',', $product->products()->allRelatedIds()->toArray()) }} @endif" />
                        <div class="box-family-tree-search-advance product">
                            <div>
                                <input type="text" class="next-input textbox-family-tree-advancesearch" data-type="couple"  placeholder="{{ trans('plugins/ecommerce::products.search_products') }}" data-target="{{ route('family-tree.get-list-product-for-search', ['product_id' => $product ? $product->id : 0, 'type' => 'couple']) }}">
                            </div>
                            <div class="panel panel-default">

                            </div>
                        </div>
                        {{--                        @include('plugins/ecommerce::products.partials.selected-products-list', ['products' => $product ? $product->products : collect([]), 'includeVariation' => false])--}}
                    </div>
                    <span class="btn btn-default family-cancel">{{ trans('plugins/family-tree::family.cancel') }}</span>
                </div>
            </div>
        </td>
    </tr>
    @if(isset($gender))
        <tr class="{{ $gender === 1?'show wife':'hide wife' }}">
            <th>{{ trans('plugins/family-tree::family.wife') }}</th>
            <td>
                <div class="display-father family-group">
                    <div class="father-option family-option">
                        <div class="selected">
                            @foreach($data['wife'] as $wife)
                                <div class="selected-family-product-list">
                                    <div class="wrap-img vertical-align-m-i">
                                        <img class="thumb-image" src="{{ RvMedia::getImageUrl($wife->image, 'thumb', false, RvMedia::getDefaultImage()) }}">
                                    </div>
                                    <div class="name">
                                        <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $wife->id]) }}">{{ $wife->name }}</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <div class="pull-right">
                            <span class="btn btn-link btn-xs setFamily">{{ trans('plugins/family-tree::family.add_wife') }}</span>
                        </div>
                    </div>
                    <div class="father-choose family-choose">
                        <div class="form-group mb-2">
                            <input type="hidden" class="family-input" name="wife_id" value="@if ($product) {{ implode(',', $product->products()->allRelatedIds()->toArray()) }} @endif" />
                            <div class="box-family-tree-search-advance product">
                                <div>
                                    <input type="text" class="next-input textbox-family-tree-advancesearch" data-type="multi"  placeholder="{{ trans('plugins/ecommerce::products.search_products') }}" data-target="{{ route('family-tree.get-list-product-for-search', ['product_id' => $product ? $product->id : 0, 'type' => 'female']) }}">
                                </div>
                                <div class="panel panel-default">

                                </div>
                            </div>
                            {{--                        @include('plugins/ecommerce::products.partials.selected-products-list', ['products' => $product ? $product->products : collect([]), 'includeVariation' => false])--}}
                        </div>
                        <span class="btn btn-default family-cancel">{{ trans('plugins/family-tree::family.cancel') }}</span>
                    </div>
                </div>
            </td>
        </tr>
        <tr class="{{ $gender === 0?'show husband':'hide husband' }}">
            <th>{{ trans('plugins/family-tree::family.husband') }}</th>
            <td>
                <div class="display-father family-group">
                    <div class="father-option family-option">
                        <div class="selected">
                            @foreach($data['husband'] as $husband)
                                <div class="selected-family-product-list">
                                    <div class="wrap-img vertical-align-m-i">
                                        <img class="thumb-image" src="{{ RvMedia::getImageUrl($husband->image, 'thumb', false, RvMedia::getDefaultImage()) }}">
                                    </div>
                                    <div class="name">
                                        <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $husband->id]) }}">{{ $husband->name }}</a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <div class="pull-right">
                            <span class="btn btn-link btn-xs setFamily">{{ trans('plugins/family-tree::family.add_husband') }}</span>
                        </div>
                    </div>
                    <div class="father-choose family-choose">
                        <div class="form-group mb-2">
                            <input type="hidden" class="family-input" name="husband_id" value="@if ($product) {{ implode(',', $product->products()->allRelatedIds()->toArray()) }} @endif" />
                            <div class="box-family-tree-search-advance product">
                                <div>
                                    <input type="text" class="next-input textbox-family-tree-advancesearch" data-type="multi"  placeholder="{{ trans('plugins/ecommerce::products.search_products') }}" data-target="{{ route('family-tree.get-list-product-for-search', ['product_id' => $product ? $product->id : 0, 'type' => 'male']) }}">
                                </div>
                                <div class="panel panel-default">

                                </div>
                            </div>
                            {{--                        @include('plugins/ecommerce::products.partials.selected-products-list', ['products' => $product ? $product->products : collect([]), 'includeVariation' => false])--}}
                        </div>
                        <span class="btn btn-default family-cancel">{{ trans('plugins/family-tree::family.cancel') }}</span>
                    </div>
                </div>
            </td>
        </tr>
    @endif
    </tbody>
</table>

<script id="selected_family_tree_product_list_template" type="text/x-custom-template">
    <div class="selected-family-product-list">
        <div class="wrap-img vertical-align-m-i">
            <img class="thumb-image" src="__image__" alt="__name__" title="__name__">
        </div>
        <div class="name">
            <a class="hover-underline pre-line" href="__url__">__name__</a>
            <p class="type-subdued">__attributes__</p>
        </div>
    </div>
</script>
<script id="selected_family_tree_couple_product_list_template" type="text/x-custom-template">
    <div class="selected-family-couple-product-list">
        <div class="wrap-img vertical-align-m-i">
            <img class="thumb-image" src="__husband_image__" alt="__husband_name__" title="__husband_name__">
        </div>
        <div class="name">
            <a class="hover-underline pre-line" href="__husband_url__">__husband_name__</a>
            <p class="type-subdued">__husband_attributes__</p>
        </div>
        <span class="and">&</span>
        <div class="wrap-img vertical-align-m-i">
            <img class="thumb-image" src="__wife_image__" alt="__wife_name__" title="__wife_name__">
        </div>
        <div class="name">
            <a class="hover-underline pre-line" href="__wife_url__">__wife_name__</a>
            <p class="type-subdued">__wife_attributes__</p>
        </div>
    </div>
</script>

@php
    Assets::addStyles(['family-admin'])
                ->addScripts([
                    'family-admin'
                ])
                ->addStylesDirectly(['vendor/core/plugins/family-tree/css/family-admin.css'])
                ->addScriptsDirectly([
                    'vendor/core/plugins/family-tree/js/family.js',
                    'vendor/core/plugins/family-tree/js/family-admin.js',
                ]);
@endphp
