<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InvoiceDetail extends Model
{
    protected $table = "invoice_detail";
    protected $fillable = [
        'invoice_id',
        'product_id',
        'quantity',
        'unit_price'
    ];
    public $timestamps = true;
}