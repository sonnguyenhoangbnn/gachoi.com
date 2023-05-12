<div class="panel-body">
    <div class="list-family-tree-search-data" data-target="{{ route('family-tree.add-family-product') }}">
        <ul class="clearfix">
            @if (!$availableProducts->isEmpty())
                @foreach($availableProducts as $availableProduct)
                    <li class="@if (!$includeVariation) selectable-couple-item @endif" @if (!$includeVariation) data-husband-name="{{ $availableProduct->husband_name }}" data-wife-name="{{ $availableProduct->wife_name }}"  data-husband-image="{{ RvMedia::getImageUrl($availableProduct->husband_image, 'thumb', false, RvMedia::getDefaultImage()) }}" data-wife-image="{{ RvMedia::getImageUrl($availableProduct->wife_image, 'thumb', false, RvMedia::getDefaultImage()) }}" data-id="{{ $availableProduct->id }}" data-husband-url="{{ route('products.edit', $availableProduct->husband_id) }}" data-wife-url="{{ route('products.edit', $availableProduct->wife_id) }}" data-price="#" @endif>
                        <div class="wrap-img inline_block vertical-align-t float-start">
                            <img class="thumb-image" src="{{ RvMedia::getImageUrl($availableProduct->husband_image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $availableProduct->husband_name }}">
                        </div>
                        <label class="inline_block ml10 mt10 ws-nm" style="width:calc(100% - 50px);">{{ $availableProduct->husband_name }}</label>
                        @if ($includeVariation)
                            <div class="clear"></div>
                            <ul>
                                @foreach($availableProduct->variations as $variation)
                                    <li class="clearfix product-variant selectable-item" data-name="{{ $availableProduct->name }}"  data-image="{{ RvMedia::getImageUrl($variation->product->image, 'thumb', false, RvMedia::getDefaultImage()) }}" data-id="{{ $variation->product->id }}" data-url="{{ route('products.edit', $availableProduct->id) }}" data-price="{{ $availableProduct->price }}">
                                        <a href="#" class="color_green float-start">
                                            <span>
                                                @foreach($variation->variationItems as $variationItem)
                                                    {{ $variationItem->attribute->title }}
                                                    @if (!$loop->last)
                                                        /
                                                    @endif
                                                @endforeach
                                            </span>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        @endif
                        &
                        <div class="wrap-img inline_block vertical-align-t float-start">
                            <img class="thumb-image" src="{{ RvMedia::getImageUrl($availableProduct->wife_image, 'thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $availableProduct->wife_name }}">
                        </div>
                        <label class="inline_block ml10 mt10 ws-nm" style="width:calc(100% - 50px);">{{ $availableProduct->wife_name }}</label>
                        @if ($includeVariation)
                            <div class="clear"></div>
                            <ul>
                                @foreach($availableProduct->variations as $variation)
                                    <li class="clearfix product-variant selectable-couple-item" data-name="{{ $availableProduct->name }}"  data-image="{{ RvMedia::getImageUrl($variation->product->image, 'thumb', false, RvMedia::getDefaultImage()) }}" data-id="{{ $variation->product->id }}" data-url="{{ route('products.edit', $availableProduct->id) }}" data-price="{{ $availableProduct->price }}">
                                        <a href="#" class="color_green float-start">
                                            <span>
                                                @foreach($variation->variationItems as $variationItem)
                                                    {{ $variationItem->attribute->title }}
                                                    @if (!$loop->last)
                                                        /
                                                    @endif
                                                @endforeach
                                            </span>
                                        </a>
                                    </li>
                                @endforeach
                            </ul>
                        @endif
                    </li>
                @endforeach
            @else
                <li>
                    <p>{{ trans('plugins/ecommerce::products.form.no_results') }}</p>
                </li>
            @endif
        </ul>
    </div>
</div>

@if ($availableProducts->hasPages())
    <div class="panel-footer">
        <div class="btn-group float-end">
            {!! $availableProducts->appends(['type' => $type])->links() !!}
        </div>
        <div class="clearfix"></div>
    </div>
@endif
