<?php

Route::group(['namespace' => 'Botble\FamilyTree\Http\Controllers', 'middleware' => ['web']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'family-tree', 'as' => 'family-tree.'], function () {
            Route::resource('', 'AdsController')->parameters(['' => 'ads']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'AdsController@deletes',
                'permission' => 'ads.destroy',
            ]);
            Route::get('get-list-product-for-search', [
                'as'   => 'get-list-product-for-search',
                'uses' => 'ProductController@getListProductForSearch',
            ]);
            Route::get('get-child-and-sibling', [
                'as'   => 'get-child-and-sibling',
                'uses' => 'ProductController@getChildAndSibling',
            ]);
            Route::post('add-child-family-product', [
                'as'   => 'add-child-family-product',
                'uses' => 'ProductController@storeAddChild',
            ]);
            Route::post('add-family-product', [
                'as'   => 'add-family-product',
                'uses' => 'ProductController@storeAddFamily',
            ]);
        });
    });

    if (defined('THEME_MODULE_SCREEN_NAME')) {
        Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {
            Route::get('ads-click/{key}', [
                'as'   => 'public.ads-click',
                'uses' => 'PublicController@getAdsClick',
            ]);
        });
    }

});
