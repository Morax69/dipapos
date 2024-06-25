<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hutang extends Model
{
    use HasFactory;

    protected $fillable = [
        'customer_id',
        'amount',
        'due_date',
        'status'
    ];

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}