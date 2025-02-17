@extends('core/base::forms.form')

@section('form_end')
    @if ($form->getModel()->id)
        {!! Form::modalAction(
        'add-service-history-modal',
        trans('plugins/car-rentals::car-rentals.car.maintenance_history.forms.add_maintenance_history'),
        'info',
        \Botble\CarRentals\Forms\CarMaintenanceHistoryForm::createFromArray(['car' => $form->getModel()])
            ->setUrl(route(is_in_admin(true) ? 'car-rentals.car-maintenance-histories.store' : 'car-rentals.vendor.car-maintenance-histories.store', ['car' => $form->getModel()]))
            ->renderForm(),
        'confirm-add-entity-button',
        trans('plugins/car-rentals::car-rentals.car.maintenance_history.forms.add'),
        'modal-md',
    ) !!}

        <x-core::modal
                id="edit-service-entity-modal"
                :title="trans('plugins/car-rentals::car-rentals.car.maintenance_history.forms.edit_maintenance_history')"
        >
            <x-core::loading />
            <x-slot:footer>
                <x-core::button
                        data-bs-dismiss="modal"
                >
                    {{ trans('core/base::base.close') }}
                </x-core::button>

                <x-core::button
                        class="ms-auto"
                        color="primary"
                        data-bb-toggle="confirm-edit-entity-button"
                >
                    {{ trans('plugins/car-rentals::car-rentals.car.maintenance_history.forms.edit') }}
                </x-core::button>
            </x-slot:footer>
        </x-core::modal>
    @endif


    <x-core::modal.action
            type="danger"
            id="modal-confirm-delete"
            :title="trans('core/base::tables.confirm_delete')"
            :description="trans('core/base::tables.confirm_delete_msg')"
            :submit-button-label="trans('core/base::tables.delete')"
            :submit-button-attrs="['data-bb-toggle' => 'confirm-delete']"
    />
@stop
