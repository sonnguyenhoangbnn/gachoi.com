<ul class="list-group">
    @foreach($siblings as $child)
        <li class="list-group-item">
            <div class="wrap-img">
                <img src="{{ RvMedia::getImageUrl($child->image, 'thumb', false, RvMedia::getDefaultImage()) }}" class="thumb-image">
            </div>
            <div class="name">
                <a class="hover-underline pre-line" href="{{ route('products.edit', ['product' => $child->id]) }}">{{ $child->name }}</a> ({{ $child->gender }})
            </div>
        </li>
    @endforeach
</ul>
