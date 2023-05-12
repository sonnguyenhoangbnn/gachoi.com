<?php

namespace Botble\FamilyTree\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class StoreAddChildRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'     => 'required',
            'gender'      => 'required',
            'parent'   => 'nullable|exists:family_couples,id',
        ];
    }
}
