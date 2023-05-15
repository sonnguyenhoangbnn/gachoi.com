
$(document).ready(() => {
    $('.setFamily').on('click', function(e) {
        let choose = $(this).closest('.family-group').find('.family-choose');
        if ($(this).closest('.family-group').find('.next-input').data('type') === 'single') {
          $(this).closest('.family-option').hide();
        } else {
            $(this).hide()
        }
        choose.show()
    })
    $('.family-cancel').on('click', function(e) {
        let choose = $(this).closest('.family-choose');
        let option = $(this).closest('.family-group').find('.family-option');
        if ($(this).closest('.family-group').find('.next-input').data('type') !== 'single') {
            $(this).closest('.family-group').find('.setFamily').show()
        }
        choose.hide()
        option.show()
    })
    function setFamily(url, data) {
          $.ajax({
            url: url,
            data: data,
            type: 'POST',
            success: res => {
            },
            error: data => {
            },
        });
    }
    $(document).on('click', 'body', (e) => {
        let container = $('.box-family-tree-search-advance');

        if (!container.is(e.target) && container.has(e.target).length === 0) {
            container.find('.panel').addClass('hidden');
        }
    });
    $(document).on('click', '.list-family-tree-search-data .selectable-item', event => {
        event.preventDefault();
        let _self = $(event.currentTarget);
        let $input = _self.closest('.form-group').find('input[type=hidden]');
        let $setting = _self.closest('.box-family-tree-search-advance').find('.textbox-family-tree-advancesearch');
        let $parent = _self.closest('.family-group').find('.selected');
        $input.val(_self.data('id'));
        var name = $input.attr('name');
        let data = {};
        data[name] = _self.data('id')
        let template = $(document).find('#selected_family_tree_product_list_template').html();
        let productItem = template
            .replace(/__name__/gi, _self.data('name'))
            .replace(/__id__/gi, _self.data('id'))
            .replace(/__url__/gi, _self.data('url'))
            .replace(/__image__/gi, _self.data('image'))
            .replace(/__attributes__/gi, _self.find('a span').text());
        let choose = _self.closest('.family-group').find('.family-choose');
        let option = _self.closest('.family-group').find('.family-option');
        $.ajax({
            url: _self.closest('.list-family-tree-search-data').data('target'),
            data: data,
            type: 'POST',
            success: res => {
                if (res.error !== undefined && res.error) {
                    let $formBody = _self.closest('.box-family-tree-search-advance').find('.panel');
                    $formBody.removeClass('hidden');
                    $formBody.addClass('active');
                    Botble.blockUI({
                        target: $formBody,
                        iconOnly: true,
                        overlayColor: 'none'
                    });
                    Botble.showError(res.message);
                    Botble.unblockUI($formBody);
                } else {
                    if ($setting.data('type') === 'single') {
                        choose.hide()
                        $parent.html(productItem);
                    } else {
                        $parent.append(productItem);
                    }
                    option.show()
                }
            },
            error: data => {
            },
        });
        _self.closest('.panel').addClass('hidden');
    });
    $(document).on('click', '.list-family-tree-search-data .selectable-couple-item', event => {
        event.preventDefault();
        let _self = $(event.currentTarget);
        let $input = _self.closest('.form-group').find('input[type=hidden]');
        let $setting = _self.closest('.box-family-tree-search-advance').find('.textbox-family-tree-advancesearch');
        let $parent = _self.closest('.family-group').find('.selected');


        if ($setting.data('type') === 'couple') {
            $input.val(_self.data('id'));
            var name = $input.attr('name');
            let data = {};
            data[name] = _self.data('id')
            let template = $(document).find('#selected_family_tree_couple_product_list_template').html();
            let productItem = template
                .replace(/__husband_name__/gi, _self.data('husband-name'))
                .replace(/__wife_name__/gi, _self.data('wife-name'))
                .replace(/__id__/gi, _self.data('id'))
                .replace(/__husband_url__/gi, _self.data('husband-url'))
                .replace(/__wife_url__/gi, _self.data('wife-url'))
                .replace(/__husband_image__/gi, _self.data('husband-image'))
                .replace(/__wife_image__/gi, _self.data('wife-image'))
                .replace(/__husband_attributes__/gi, _self.find('a span').text())
                .replace(/__wife_attributes__/gi, _self.find('a span').text());
            $.ajax({
                url: _self.closest('.list-family-tree-search-data').data('target'),
                data: data,
                type: 'POST',
                success: res => {
                    if (res.error !== undefined && res.error) {
                        let $formBody = _self.closest('.box-family-tree-search-advance').find('.panel');
                        $formBody.removeClass('hidden');
                        $formBody.addClass('active');
                        Botble.blockUI({
                            target: $formBody,
                            iconOnly: true,
                            overlayColor: 'none'
                        });
                        Botble.showError(res.message);
                        Botble.unblockUI($formBody);
                    } else {
                        $parent.html(productItem);
                        let choose = _self.closest('.family-group').find('.family-choose');
                        let option = _self.closest('.family-group').find('.family-option');
                        choose.hide()
                        option.show()
                    }
                },
                error: data => {
                },
            });

            // _self.closest('.form-group').find('.list-selected-products').removeClass('hidden');

        } else {
            let existedValues = $input.val().split(',');
            $.each(existedValues, (index, el) => {
                existedValues[index] = parseInt(el);
            });

            if ($.inArray(_self.data('id'), existedValues) < 0) {
                if ($input.val()) {
                    $input.val($input.val() + ',' + _self.data('id'));
                } else {
                    $input.val(_self.data('id'));
                }

                let template = $(document).find('#selected_product_list_template').html();

                let productItem = template
                    .replace(/__name__/gi, _self.data('name'))
                    .replace(/__id__/gi, _self.data('id'))
                    .replace(/__url__/gi, _self.data('url'))
                    .replace(/__image__/gi, _self.data('image'))
                    .replace(/__attributes__/gi, _self.find('a span').text());
                _self.closest('.form-group').find('.list-selected-products').removeClass('hidden');
                _self.closest('.form-group').find('.list-selected-products table tbody').append(productItem);
            }
        }

        _self.closest('.panel').addClass('hidden');
    });
    $(document).on('click', '.textbox-family-tree-advancesearch', event => {
        let _self = $(event.currentTarget);
        let $formBody = _self.closest('.box-family-tree-search-advance').find('.panel');
        $formBody.removeClass('hidden');
        $formBody.addClass('active');
        if ($formBody.find('.panel-body').length === 0) {
            Botble.blockUI({
                target: $formBody,
                iconOnly: true,
                overlayColor: 'none'
            });

            $.ajax({
                url: _self.data('target'),
                type: 'GET',
                success: res => {
                    if (res.error) {
                        Botble.showError(res.message);
                    } else {
                        $formBody.html(res.data);
                        Botble.unblockUI($formBody);
                    }
                },
                error: data => {
                    Botble.handleError(data);
                    Botble.unblockUI($formBody);
                },
            });
        }
    });

    $(document).on('keyup', '.textbox-family-tree-advancesearch', event => {
        let _self = $(event.currentTarget);
        let $formBody = _self.closest('.box-family-tree-search-advance').find('.panel');
        setTimeout(() => {
            Botble.blockUI({
                target: $formBody,
                iconOnly: true,
                overlayColor: 'none'
            });

            $.ajax({
                url: _self.data('target') + '&keyword=' + _self.val(),
                type: 'GET',
                success: res => {
                    if (res.error) {
                        Botble.showError(res.message);
                    } else {
                        $formBody.html(res.data);
                        Botble.unblockUI($formBody);
                    }
                },
                error: data => {
                    Botble.handleError(data);
                    Botble.unblockUI($formBody);
                },
            });
        }, 500);
    });

    $(document).on('click', '.box-family-tree-search-advance .page-link', event => {
        event.preventDefault();
        let _self = $(event.currentTarget);
        if (!_self.closest('.page-item').hasClass('disabled') && _self.prop('href')) {
            let $formBody = _self.closest('.box-family-tree-search-advance').find('.panel');
            Botble.blockUI({
                target: $formBody,
                iconOnly: true,
                overlayColor: 'none'
            });

            $.ajax({
                url: _self.prop('href') + '&keyword=' + _self.val(),
                type: 'GET',
                success: res => {
                    if (res.error) {
                        Botble.showError(res.message);
                    } else {
                        $formBody.html(res.data);
                        Botble.unblockUI($formBody);
                    }
                },
                error: data => {
                    Botble.handleError(data);
                    Botble.unblockUI($formBody);
                },
            });
        }
    });

    function loadChildAndSibling() {
        if ($('#gender_id').val() == 0) {
            $('#main-family-tree .wife').removeClass('show').addClass('hide')
            $('#main-family-tree .husband').removeClass('hide').addClass('show')
        } else {
            $('#main-family-tree .wife').removeClass('hide').addClass('show')
            $('#main-family-tree .husband').removeClass('show').addClass('hide')
        }

        $.ajax({
            url: $('.family-child-cancel').data('target'),
            type: 'GET',
            success: res => {
                if (res.error) {
                    Botble.showError(res.message);
                } else {
                    $('#main-family-tree-child .list-group .list-group-item:not(:last-child)').remove();
                    $('#main-family-tree-siblings .list-group li').remove();
                    let template = $(document).find('#family_tree_child_template').html();
                    res.children.forEach(item => {
                            let productItem = template
                                .replace(/__image__/gi, item.image)
                                .replace(/__name__/gi, item.name)
                                .replace(/__id__/gi, item.id)
                                .replace(/__gender__/gi, item.gender);
                        $('#main-family-tree-child .list-group li:eq(0)').before(productItem);
                    });
                    res.siblings.forEach(item => {
                        let productItem = template
                            .replace(/__image__/gi, item.image)
                            .replace(/__name__/gi, item.name)
                            .replace(/__id__/gi, item.id)
                            .replace(/__gender__/gi, item.gender);
                        $('#main-family-tree-siblings .list-group').append(productItem);
                    });
                }
            },
            error: data => {
                Botble.handleError(data);
            },
        });
    }

    $('#gender_id').on('change', event => {
        $.ajax({
            url: event.target.getAttribute('data-target'),
            data: {
                gender_id: event.target.value
            },
            type: 'POST',
            success: res => {
                if (res.error) {
                    Botble.showError(res.message);
                } else {
                    loadChildAndSibling()
                }
            },
            error: data => {
                Botble.handleError(data);
            },
        });
    });
    $(document).on('click', '.submit-add-child', event => {
        event.preventDefault();
        let name = $('input[name=add_child_name]').val();
        let gender = $('input[name=add_child_gender]:checked').val();
        let parent = $('input[name=add_child_parent]').val();
        let _self = $(event.currentTarget);
        if (name === '') {
            $('input[name=add_child_name]').closest('.form-group').addClass('has-error')
        } else {
            $('input[name=add_child_name]').closest('.form-group').removeClass('has-error')
        }
        if (gender === undefined) {
            $('input[name=add_child_gender]').closest('.form-group').addClass('has-error')
        } else {
            $('input[name=add_child_gender]').closest('.form-group').removeClass('has-error')
        }
        if (name !== '' && gender !== undefined) {
            $.ajax({
                url: _self.data('target'),
                data: {
                    name: name,
                    gender: gender,
                    parent: parent
                },
                type: 'POST',
                success: res => {
                    if (res.error) {
                        Botble.showError(res.message);
                    } else {
                        loadChildAndSibling()
                    }
                },
                error: data => {
                    Botble.handleError(data);
                },
            });
        }
    });
    $(document).on('click', '.btn-add-child', event => {
        event.preventDefault();
        $('.form-child').show()
    });
    $(document).on('click', '.family-child-cancel', event => {
        event.preventDefault();
        $('.form-child').hide()
    });
});
