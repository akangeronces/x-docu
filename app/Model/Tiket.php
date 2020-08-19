<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Tiket extends Model
{
    //
    protected $table = 'tb_tiket';


    public function pelayanan()
    {
        return $this->belongsTo(Pelayanan::class, 'pelayanan_id');
    }
    
}
