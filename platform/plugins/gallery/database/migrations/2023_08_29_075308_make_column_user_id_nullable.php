<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::table('galleries', function (Blueprint $table): void {
            $table->foreignId('user_id')->nullable()->change();
        });
    }
};
