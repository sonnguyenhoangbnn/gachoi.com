<?php

namespace Botble\FamilyTree\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Base\Traits\EnumCastable;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;

class FamilyCouple extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'family_couples';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'key',
        'status',
        'expired_at',
        'location',
        'image',
        'url',
        'clicked',
        'order',
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

    /**
     * @param Builder $query
     * @return Builder
     */
    public function scopeNotExpired($query)
    {
        return $query->where(function ($query) {
            $query->whereDate('expired_at', '>=', now()->toDateString());
        });
    }

    /**
     * @return string|null
     */
    public function getExpiredAtAttribute($value)
    {
        if (!$value) {
            return null;
        }

        return Carbon::parse($value)->format('m/d/Y');
    }

    public function product() {

    }
}
