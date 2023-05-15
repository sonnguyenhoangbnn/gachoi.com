<button type="button" class="btn btn-add-child">{{ trans('plugins/family-tree::family.add_child') }}</button>
<ul class="list-group">
    @foreach($children as $child)
        <li class="list-group-item">
            <div class="wrap-img">
                <img src="{{ RvMedia::getImageUrl($child->image, 'thumb', false, RvMedia::getDefaultImage()) }}" class="thumb-image">
            </div>
            <div class="name">
                <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $child->id]) }}">{{ $child->name }}</a> ({{ $child->gender }})
            </div>
        </li>
    @endforeach
    <li class="list-group-item form-child">
        <div class="row">
            <div class="col-md-8">
                <div class="form-group ">
                    <label for="add_child_name" class="control-label">{{ trans('plugins/family-tree::family.child_name') }}</label>
                    <input class="form-control" name="add_child_name" type="text" id="add_child_name">
                    <span class="help-block small">{{ trans('plugins/family-tree::family.the_add_child_name') }}</span>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group ">
                    <label for="add_child_gender_id" class="control-label">{{ trans('plugins/family-tree::family.child_gender') }}</label>
                    <ul class="radio list-inline">
                        <li><label for="add_child_gender_id_1"><input id="add_child_gender_id_1" name="add_child_gender" type="radio" value="1">{{ trans('plugins/family-tree::family.male') }}</label></li>
                        <li><label for="add_child_gender_id_0"><input id="add_child_gender_id_0" name="add_child_gender" type="radio" value="0">{{ trans('plugins/family-tree::family.female') }}</label></li>
                    </ul>
                    <span class="help-block small">{{ trans('plugins/family-tree::family.the_add_child_gender') }}</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="display-father family-group">
                    <div class="father-choose family-choose">
                        <div class="form-group mb-3">
                            <label for="" class="control-label">{{ trans('plugins/family-tree::family.select_spouse', ['product' => $product?$product->name:'']) }}</label>
                            <input type="hidden" class="family-input" name="add_child_parent" value="@if ($product) {{ implode(',', $product->products()->allRelatedIds()->toArray()) }} @endif" />
                            <div class="box-family-tree-search-advance product">
                                <div>
                                    <input type="text" class="next-input textbox-family-tree-advancesearch" data-type="couple"  placeholder="{{ trans('plugins/ecommerce::products.search_products') }}" data-target="{{ route('family-tree.get-list-product-for-search', ['product_id' => $product ? $product->id : 0, 'type' => 'parent']) }}">
                                </div>
                                <div class="panel panel-default">

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="father-option family-option">
                        <div class="selected">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <span data-target="{{ route('family-tree.add-child-family-product') }}" class="btn btn-success btn-sm submit-add-child">{{ trans('plugins/family-tree::family.add_child') }}</span>
                <span data-target="{{ route('family-tree.get-child-and-sibling') }}" class="btn btn-default family-child-cancel">{{ trans('plugins/family-tree::family.cancel') }}</span>
            </div>
        </div>
    </li>
</ul>
<script id="family_tree_child_template" type="text/x-custom-template">
    <li class="list-group-item">
        <div class="wrap-img">
            <img src="__image__" class="thumb-image">
        </div>
        <div class="name">
            <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => '__id__']) }}">__name__</a> (__gender__)
        </div>
    </li>
</script>
