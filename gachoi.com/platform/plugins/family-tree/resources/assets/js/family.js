import CreateComponent from './components/CreateComponent'
import Vue from 'vue';

Vue.component('family-tree-component', CreateComponent);

/**
 * This let us access the `__` method for localization in VueJS templates
 * ({{ __('key') }})
 */
Vue.prototype.__ = key => {
    return _.get(window.trans, key, key);
};

new Vue({
    el: '#main-family-tree',
});
