<?php

namespace Botble\FamilyTree\Supports;

use Botble\Base\Supports\Helper;
use Botble\Ecommerce\Models\Product;
use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Slug\SlugHelper;
use Carbon\Carbon;
use Html;
use Illuminate\Support\Collection;
use RvMedia;

class FamilyTreeManager
{
    /**
     * @var Collection
     */
    protected $data = [];

    /**
     * @var Collection
     */
    protected $slug = [];

    /**
     * Whether the settings data are loaded.
     *
     * @var boolean
     */
    protected $loaded = false;

    /**
     * @var array
     */
    protected $locations = [];

    /**
     * AdsManager constructor.
     */
    public function __construct()
    {
        $this->locations = [
            'not_set' => trans('plugins/ads::ads.not_set'),
        ];
    }

    /**
     * @param string $location
     * @param array $attributes
     * @return string
     */
    public function display(string $location, array $attributes = []): string
    {
        $this->load();

        $data = $this->data
            ->where('location', $location)
            ->sortBy('order');

        if ($data->count() > 1) {
            $data = $data->random(1);
        }

        $html = '';
        foreach ($data as $item) {
            if (!$item->image) {
                continue;
            }

            $image = Html::image(RvMedia::getImageUrl($item->image), $item->name, ['style' => 'max-width: 100%'])
                ->toHtml();

            if ($item->url) {
                $image = Html::link(route('public.ads-click', $item->key), $image, ['target' => '_blank'], null, false)
                    ->toHtml();
            }

            $html .= Html::tag('div', $image, $attributes)->toHtml();
        }

        return $html;
    }

    /**
     * Make sure data is loaded.
     *
     * @param boolean $force Force a reload of data. Default false.
     * @return self
     */
    public function load(bool $force = false)
    {
        if (!$this->loaded || $force) {
            $this->data = $this->read();
            $this->slug = $this->readSlug();
            $this->loaded = true;
        }

        return $this;
    }

    /**
     * @return Collection
     */
    protected function read()
    {
        return app(FamilyTreeInterface::class);
    }

    /**
     * @return Collection
     */
    protected function readSlug()
    {
        return app(SlugHelper::class);
    }

    /**
     * @param string $location
     * @return bool
     */
    public function locationHasAds(string $location): bool
    {
        $this->load();

        return (bool)$this->data
            ->where('location', $location)
            ->sortBy('order')
            ->count();
    }

    private function renderTree(&$compare, $id) {
        $data = $this->data->loadParentTree($id);

        if (!empty($data) && !in_array($data->father_id.'.'.$data->father_id, $compare)) {
            array_push($compare, $data->father_id.'.'.$data->father_id);
            echo "<ul>";
            if($data->father_id) {
                $url = $this->slug->getSlug(null, null, Product::class, $data->father_id);
                $url = url("{$url->prefix}/{$url->key}");
                echo"<li>
                    <a href=\"{$url}\"><img src='".RvMedia::getImageUrl($data->father_image, 'thumb', false, RvMedia::getDefaultImage())."'/><span>{$data->father_name}</span></a>
                    ";
                $this->renderTree($compare, $data->father_id);
                echo "</li>";
            }
            if($data->mother_id) {
                echo "<li>
                    <a href=\"#\"><img src='".RvMedia::getImageUrl($data->mother_image, 'thumb', false, RvMedia::getDefaultImage())."'/><span>{$data->mother_name}</span></a>
                    ";
                $this->renderTree($compare, $data->mother_id);
                echo "</li>";
            }
            echo "</ul>";

        }

//        return true;
    }

    /**
     * @param string|null $key
     * @param array $attributes
     * @param array $linkAttributes
     * @return string|null
     */
    public function genderTree($id, array $attributes = [], array $linkAttributes = [])
    {
        if (!$id) {
            return null;
        }
        $this->load();
        $html = '';
        $compare = [];
        $this->renderTree($compare,  $id);
//        return $html;
    }

    /**
     * @param bool $isLoad
     * @param bool $isNotExpired
     * @return Collection
     */
    public function getData(bool $isLoad = false, bool $isNotExpired = false): Collection
    {
        if ($isLoad) {
            $this->load();
        }

        if ($isNotExpired) {
            return $this->data
                ->where('status', BaseStatusEnum::PUBLISHED)
                ->filter(function ($item) {
                    if ($expiredAt = $item->getRawOriginal('expired_at')) {
                        return Carbon::parse($expiredAt)->gte(now());
                    }
                    return true;
                });
        }

        return $this->data;
    }

    /**
     * @param string $key
     * @param string $name
     * @return $this
     */
    public function registerLocation(string $key, string $name): self
    {
        $this->locations[$key] = $name;

        return $this;
    }

    /**
     * @return array
     */
    public function getLocations(): array
    {
        return $this->locations;
    }
}
