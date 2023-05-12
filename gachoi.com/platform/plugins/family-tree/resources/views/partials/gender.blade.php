@php
$gender = $repository->getGender($product->id);
@endphp
<select name="gender" class="form-control ui-select ui-select is-valid">
    <option value="1" @if($gender === 1) selected="selected" @endif>{{ trans('plugins/family-tree::family.male') }}</option>
    <option value="0" @if($gender === 0) selected="selected" @endif>{{ trans('plugins/family-tree::family.female') }}</option>
</select>
