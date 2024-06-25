<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    // Relationship to debts
    public function hutangs()
    {
        return $this->hasMany(Hutang::class);
    }
}