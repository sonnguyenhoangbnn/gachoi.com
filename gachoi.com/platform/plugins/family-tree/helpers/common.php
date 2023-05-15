<?php

use Botble\FamilyTree\Repositories\Interfaces\FamilyTreeInterface;

if (!function_exists('generate_ads_key')) {
    /**
     * @return string
     */
    function family_tree(): array
    {
        $adsRepository = app(FamilyTreeInterface::class);

        do {
            $key = strtoupper(Str::random(12));
        } while ($adsRepository->count(compact('key')) > 0);

        return $key;
    }
}
