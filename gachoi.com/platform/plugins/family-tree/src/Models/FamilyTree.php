<?php

namespace Botble\FamilyTree\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Base\Traits\EnumCastable;
use Botble\Ecommerce\Models\Product;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;

class FamilyTree extends BaseModel
{
    use EnumCastable;

    public const MALE = 1;
    public const FEMALE = 0;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'family_tree';

    /**
     * @var array
     */
    protected $fillable = [
        'gender_id',
        'father_id',
        'mother_id',
        'parent_id',
        'product_id',
        'manager_id'
    ];

    /**
     * @var string[]
     */
    protected $dates = [
        'expired_at',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];

    public function couples()
    {
        if ($this->gender_id == self::FEMALE) {
            return $this->belongsToMany(Product::class, 'family_couples', 'product_id', 'husband_id', 'product_id')->withPivot('product_id');
        }

        return $this->belongsToMany(Product::class, 'family_couples', 'product_id', 'wife_id', 'product_id')->withPivot('product_id');
    }

    public function childs()
    {
        return $this->hasMany(Product::class, 'id', 'product_id');
    }

}
