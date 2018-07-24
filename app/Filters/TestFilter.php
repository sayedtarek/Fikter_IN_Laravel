<?php 

// TestFilter.php

namespace App\Filters;

use App\Filters\AbstractFilter;
use Illuminate\Database\Eloquent\Builder;

class TestFilter extends AbstractFilter
{
    protected $filters = [
        'type' => TypeFilter::class
    ];
}


 ?>