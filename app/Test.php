<?php

namespace App;
use App\Filters\TestFilter;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\Builder;

class Test extends Model
{
    public function scopeFilter(Builder $builder, $request)
    {
        return (new TestFilter($request))->filter($builder);
    }
}
