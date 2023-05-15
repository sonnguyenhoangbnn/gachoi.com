<?php

namespace Botble\FamilyTree\Models;

use Illuminate\Database\Eloquent\Relations\Pivot;

class CouplePivot extends Pivot
{
    protected $casts = [
        'product_id' => 'string',
    ];
}
