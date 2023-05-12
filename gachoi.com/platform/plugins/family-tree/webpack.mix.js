let mix = require('laravel-mix');

const path = require('path');
let directory = path.basename(path.resolve(__dirname));

const source = 'platform/plugins/' + directory;
const dist = 'public/vendor/core/plugins/' + directory;

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix
    .js(source + '/resources/assets/js/family.js', dist + '/js').vue({ version: 2 })
    .copy(dist + '/js/family.js', source + '/public/js');

const scripts = [
    'family-admin.js'
];

scripts.forEach(item => {
    mix
        .js(source + '/resources/assets/js/' + item, dist + '/js')
        .copy(dist + '/js/' + item, source + '/public/js');
});

const styles = [
    'family-admin.scss'
];

styles.forEach(item => {
    mix
        .sass(source + '/resources/assets/sass/' + item, dist + '/css')
        .copy(dist + '/css/' + item.replace('.scss', '.css'), source + '/public/css');
});
