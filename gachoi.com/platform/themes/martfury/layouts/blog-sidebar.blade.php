
<div class="container">
    <div class="row">
        <div class="col-12">
            {!! Theme::partial('header') !!}

            <div class="ps-page--blog">
                <div class="php ">
                    <div class="ps-page__header">
                        {{--            <h1>{{ SeoHelper::getTitle() }}</h1>--}}
                        {{--            <div class="ps-breadcrumb--2">--}}
                        {{--                {!! Theme::partial('breadcrumbs') !!}--}}
                        {{--            </div>--}}
                    </div>
                    <div class="ps-layout--shop">
{{--                        ps-blog__left--}}
                        <div class="ps-layout__left" id="sidebar-primary">
                            {!! dynamic_sidebar('primary_sidebar') !!}

                                <div class="ps-filter__header d-block d-xl-none">
                                    <h3>{{ __('Filter Products') }}</h3><a class="ps-btn--close ps-btn--no-boder" href="#"></a>
                                </div>
                                {{--                                {!! dynamic_sidebar('primary_sidebar') !!}--}}
                                <div class="ps-layout__left-content">
                                    <form action="{{ URL::current() }}" data-action="{{ route('public.products') }}" method="GET" id="products-filter-form">
                                        @include(Theme::getThemeNamespace() . '::views/ecommerce/includes/filters')
                                    </form>
                                </div>

                        </div>

                        <div class="ps-layout__right">
                            {!! Theme::content() !!}
                        </div>

                    </div>
                </div>
            </div>

            {!! Theme::partial('footer') !!}
        </div>
    </div>
</div>
