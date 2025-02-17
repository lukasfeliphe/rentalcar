<?php

namespace Botble\CarRentals\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Http\Controllers\BaseController;
use Botble\CarRentals\Forms\TaxForm;
use Botble\CarRentals\Http\Requests\TaxRequest;
use Botble\CarRentals\Models\Tax;

class TaxController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans('plugins/car-rentals::car-rentals.name'));
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/car-rentals::car-rentals.tax.create'));

        return TaxForm::create()->renderForm();
    }

    public function store(TaxRequest $request)
    {
        $form = TaxForm::create()->setRequest($request);
        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('car-rentals.settings.taxes'))
            ->setNextUrl(route('car-rentals.taxes.edit', $form->getModel()->getKey()))
            ->withCreatedSuccessMessage();
    }

    public function edit(Tax $tax)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $tax->title]));

        return TaxForm::createFromModel($tax)->renderForm();
    }

    public function update(Tax $tax, TaxRequest $request)
    {
        TaxForm::createFromModel($tax)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('car-rentals.settings.taxes'))
            ->withUpdatedSuccessMessage();
    }

    public function destroy(Tax $tax): DeleteResourceAction
    {
        return DeleteResourceAction::make($tax);
    }
}
