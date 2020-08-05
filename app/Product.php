<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = "products";
    protected $fillable = [
        'name',
        'image',
        'price',
        'price_sale',
        'short_desc',
        'detail',
        'cate_id',
        'quantity'
    ];
}