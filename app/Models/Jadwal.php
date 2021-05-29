<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Guru;

class Jadwal extends Model
{
    use HasFactory;

    protected $table = 'tbl_jadwal';

    public function guru(){
        return $this->hasMany(Guru::class);
    }
}
