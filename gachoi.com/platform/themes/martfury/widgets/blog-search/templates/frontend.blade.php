<aside class="widget widget--blog widget--search">
    <h3 class="widget__title">{{ $config['name'] }}</h3>
    <form class="ps-form--widget-search" action="{{ route('public.search') }}" method="GET">
        <input class="form-control" name="q" value="{{ request()->query('q') }}" type="text" placeholder="{{ __('Search...') }}">
        <button type="submit"><i class="icon-magnifier"></i></button>
    </form>
</aside>
