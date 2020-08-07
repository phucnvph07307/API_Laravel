<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $table = "invoices";
    protected $fillable = [
        'customer_name',
        'customer_phone_number',
        'customer_email',
        'customer_address',
        'message',
        'total_price'
    ];
    public function invoice_detail()
    {
        return $this->hasMany('App\InvoiceDetail','invoice_id','id');
    }
}