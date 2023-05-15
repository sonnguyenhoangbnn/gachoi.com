<template>
    <div class="aaaaaaaa">
        <table class="table">
            <tbody>
            <tr>
                <th class="col-sm-4">{{ __('family.form.father') }}</th>
                <td class="col-sm-8">
                    <div v-if="!setFather">
                        <a href="http://tree.local/users/5a3dd850-4bc4-4d7f-9176-84e50f0c2c9d">cha</a>
                        <div class="pull-right">
                            <div @click="callSetFather($event)" class="btn btn-link btn-xs">Set Parent</div>

                        </div>
                    </div>
                    <div v-else>
                        eeee
                    </div>
                </td>
            </tr>
            <tr @click="callSetFather">
                <th>{{ __('family.form.mother') }}</th>
                <td>
                    <a href="http://tree.local/users/5a3dd850-4bc4-4d7f-9176-84e5022c2c9d">me</a>
                    <div class="pull-right">
                        <a href="http://tree.local/users/5a3dd850-4bc4-4d7f-9176-84e50f0c2c9d?action=set_mother" class="btn btn-link btn-xs">{{ __('family.form.set_mother') }}</a>
                    </div>
                </td>
            </tr>
            <tr>
                <th class="col-sm-4">{{ __('family.form.parent') }}</th>
                <td class="col-sm-8">
                    <div class="pull-right">
                        <a href="http://tree.local/users/5a3dd850-4bc4-4d7f-9176-84e50f0c2c9d?action=set_parent" class="btn btn-link btn-xs">{{ __('family.form.set_parent') }}</a>
                    </div>

                    cha &amp; me

                </td>
            </tr>
            <tr>
                <th>{{ __('family.form.wife') }}</th>
                <td>
                    <div class="pull-right">
                        <a href="http://tree.local/users/5a3dd850-4bc4-4d7f-9176-84e50f0c2c9d?action=add_spouse" class="btn btn-link btn-xs">{{ __('family.form.add_wife') }}</a>
                    </div>

                    <ul class="list-unstyled">
                        <li><a href="http://tree.local/users/5a3dd850-4bc4-4d7f-9176-84e5022c2c9d">me</a></li>
                    </ul>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</template>

<style>
    .date-time-group .invalid-feedback {
        display: none !important;
    }
</style>

<script>
    let moment = require('moment');

    export default {
        data: () => {
            return {
                setFather: false,
                title: null,
                code: null,
                is_promotion: false,
                type: 'coupon',
                is_unlimited: 1,
                quantity: 0,
                unlimited_time: 1,
                start_date: moment().format('DD-MM-Y'),
                start_time: '00:00',
                end_date: moment().format('DD-MM-Y'),
                end_time: '23:59',
                type_option: 'amount',
                discount_value: null,
                target: 'all-orders',
                can_use_with_promotion: false,
                value_label: 'Discount',
                variants: {
                    data: [],
                },
                selected_variants: [],
                selected_variant_ids: [],
                hidden_product_search_panel: true,
                product_collection_id: null,
                product_collections: [],
                discount_on: 'per-order',
                min_order_price: null,
                product_quantity: 1,
                products: {
                    data: [],
                },
                selected_products: [],
                selected_product_ids: [],
                product_keyword: null,
                customers: {
                    data: [],
                },
                selected_customers: [],
                selected_customer_ids: [],
                customer_keyword: null,
                hidden_customer_search_panel: true,
                loading: false,
                discountUnit: '$'
            }
        },
        props: {
            productId: {
                type: String,
                default: () => null,
                required: true
            },
        },
        mounted: function () {
            let context = this;
            $(document).on('click', 'body', e => {
                let container = $('.box-search-advance');

                if (!container.is(e.target) && container.has(e.target).length === 0) {
                    context.hidden_product_search_panel = true;
                    context.hidden_customer_search_panel = true;
                }
            });

            this.discountUnit = this.currency;
        },
        methods: {
            callSetFather: function (event) {
                this.setFather = !this.setFather
                console.log(this.setFather)
            },
            generateCouponCode: function (event) {
                event.preventDefault();
                let context = this;
                axios
                    .post(route('discounts.generate-coupon'))
                    .then(res => {
                        context.code = res.data.data;
                        context.title = null;
                        $('.coupon-code-input').closest('div').find('.invalid-feedback').remove();
                    })
                    .catch(res => {
                        Botble.handleError(res.response.data);
                    });
            },
            changeDiscountType: function () {
                let context = this;
                if (context.type === 'coupon') {
                    context.is_promotion = false;
                    context.code = context.title;
                    context.title = null;
                } else {
                    context.is_promotion = true;
                    context.title = context.code;
                    context.code = null;
                }
            },
            handleChangeTypeOption: function () {
                let context = this;

                context.discountUnit = this.currency;
                context.value_label = __('discount.discount');

                switch (context.type_option) {
                    case 'amount':
                        context.target = 'all-orders';
                        break;
                    case 'percentage':
                        context.target = 'all-orders';
                        context.discountUnit = '%';
                        break;
                    case 'shipping':
                        context.value_label = __('discount.when_shipping_fee_less_than');
                        break;
                    case 'same-price':
                        context.target = 'group-products';
                        context.value_label = __('discount.is');
                        context.getListProductCollections();
                        break;
                }
            },
            loadListProductsForSearch: function (include_variation = 1, page = 1, force = false) {
                let context = this;
                context.hidden_product_search_panel = false;
                $('.textbox-advancesearch').closest('.box-search-advance').find('.panel').removeClass('hidden');
                if (_.isEmpty(context.variants.data) || _.isEmpty(context.products.data) || force) {
                    context.loading = true;
                    axios
                        .get(route('products.get-list-products-for-select', {
                            keyword: context.product_keyword,
                            include_variation: include_variation,
                            page: page
                        }))
                        .then(res => {
                            if (include_variation) {
                                context.variants = res.data.data;
                            } else {
                                context.products = res.data.data;
                            }

                            context.loading = false;
                        })
                        .catch(res => {
                            Botble.handleError(res.response.data);
                        });
                }
            },
            handleSearchProduct: function (include_variation = 1, value) {
                if (value !== this.product_keyword) {
                    let context = this;
                    this.product_keyword = value;
                    setTimeout(() => {
                        context.loadListProductsForSearch(include_variation, 1, true);
                    }, 500);
                }
            },
            handleChangeTarget: function () {
                let context = this;
                switch (context.target) {
                    case 'group-products':
                        context.getListProductCollections();
                        break;
                    case 'specific-product':
                        context.selected_variant_ids = [];
                        context.selected_customers = [];
                        context.selected_customer_ids = [];
                        break;
                    case 'product-variant':
                        context.selected_products = [];
                        context.selected_product_id = [];
                        context.selected_customers = [];
                        context.selected_customer_ids = [];
                        break;
                    case 'customer':
                        context.selected_products = [];
                        context.selected_product_ids = [];
                        context.selected_variant_ids = [];
                        break;
                }
            },
            getListProductCollections: function () {
                let context = this;
                if (_.isEmpty(context.product_collections)) {
                    context.loading = true;
                    axios
                        .get(route('product-collections.get-list-product-collections-for-select'))
                        .then(res => {
                            context.product_collections = res.data.data;
                            if (!_.isEmpty(res.data.data)) {
                                context.product_collection_id = _.first(res.data.data).id;
                            }
                            context.loading = false;
                        })
                        .catch(res => {
                            Botble.handleError(res.response.data);
                        });
                }
            },
            loadListCustomersForSearch: function (page = 1, force = false) {
                let context = this;
                context.hidden_customer_search_panel = false;
                $('.textbox-advancesearch.customer').closest('.box-search-advance.customer').find('.panel').addClass('active');
                if (_.isEmpty(context.customers.data) || force) {
                    context.loading = true;
                    axios
                        .get(route('customers.get-list-customers-for-search', {
                            keyword: context.customer_keyword,
                            page: page
                        }))
                        .then(res => {
                            context.customers = res.data.data;
                            context.loading = false;
                        })
                        .catch(res => {
                            Botble.handleError(res.response.data);
                        });
                }
            },
            handleSearchCustomer: function (value) {
                if (value !== this.customer_keyword) {
                    let context = this;
                    this.customer_keyword = value;
                    setTimeout(() => {
                        context.loadListCustomersForSearch(1, true);
                    }, 500);
                }
            },
            handleSelectProducts: function (item) {
                if (!_.includes(this.selected_product_ids, item.id)) {
                    item.product_link = route('products.edit', item.id);
                    this.selected_products.push(item);
                    this.selected_product_ids.push(item.id);
                }
                this.hidden_product_search_panel = true;
            },
            handleRemoveProduct: function ($event, currentItem) {
                $event.preventDefault();
                this.selected_product_ids = _.reject(this.selected_product_ids, (item) => {
                    return item === currentItem.id;
                });

                this.selected_products = _.reject(this.selected_products, (item) => {
                    return item.id === currentItem.id;
                });
            },
            handleSelectCustomers: function (item) {
                if (!_.includes(this.selected_customer_ids, item.id)) {
                    item.customer_link = route('customers.edit', item.id);
                    this.selected_customers.push(item);
                    this.selected_customer_ids.push(item.id);
                }
                this.hidden_customer_search_panel = true;
            },
            handleRemoveCustomer: function ($event, currentItem) {
                $event.preventDefault();
                this.selected_customer_ids = _.reject(this.selected_customer_ids, (item) => {
                    return item === currentItem.id;
                });

                this.selected_customers = _.reject(this.selected_customers, (item) => {
                    return item.id === currentItem.id;
                });
            },
            handleSelectVariants: function (productVariant, variation) {
                if (!_.includes(this.selected_variant_ids, variation.product_id)) {
                    let variantItem = variation;
                    variantItem.product_name = productVariant.name;
                    variantItem.image_url = productVariant.image_url;
                    variantItem.product_link = route('products.edit', variation.configurable_product_id);
                    this.selected_variants.push(variantItem);
                    this.selected_variant_ids.push(variation.product_id);
                }
                this.hidden_product_search_panel = true;
            },
            handleRemoveVariant: function ($event, variant) {
                $event.preventDefault();
                this.selected_variant_ids = _.reject(this.selected_variant_ids, (item) => {
                    return item === variant.product_id;
                });

                this.selected_variants = _.reject(this.selected_variants, (item) => {
                    return item.product_id === variant.product_id;
                });
            }
        }
    }
</script>
