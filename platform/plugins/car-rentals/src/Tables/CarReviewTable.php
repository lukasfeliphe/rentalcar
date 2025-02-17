<?php

namespace Botble\CarRentals\Tables;

use Botble\CarRentals\Models\CarReview;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\Columns\Column;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\FormattedColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\StatusColumn;
use Illuminate\Database\Eloquent\Builder;

class CarReviewTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(CarReview::class)
            ->addActions([
                EditAction::make()->route('car-rentals.reviews.edit'),
                DeleteAction::make()->route('car-rentals.reviews.destroy'),
            ])
            ->addColumns([
                IdColumn::make(),
                Column::make('car.name')
                    ->title(trans('plugins/car-rentals::car-rentals.review.forms.car')),
                Column::make('customer.name')
                    ->title(trans('plugins/car-rentals::car-rentals.review.forms.customer')),
                FormattedColumn::make('star')
                    ->title('Star')
                    ->getValueUsing(function (FormattedColumn $column) {
                        $item = $column->getItem();

                        if (! $item->star) {
                            return '-';
                        }

                        return view('plugins/car-rentals::reviews.partials.rating', ['star' => $item->star])->render();
                    }),
                Column::make('content')
                    ->title(trans('plugins/car-rentals::car-rentals.review.forms.content')),
                StatusColumn::make(),
                CreatedAtColumn::make(),
            ])
            ->addBulkActions([
                DeleteBulkAction::make()->permission('car-rentals.car-tags.destroy'),
            ])
            ->queryUsing(function (Builder $query): void {
                $query->select([
                    'id',
                    'star',
                    'customer_id',
                    'car_id',
                    'content',
                    'status',
                    'created_at',
                ])->with(['car', 'customer']);
            });
    }
}
