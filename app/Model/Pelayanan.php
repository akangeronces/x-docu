<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Pelayanan extends Model
{
    //
    protected $table = 'tb_pelayanan';

    public function bidang()
    {
        return $this->belongsTo(Bidang::class, 'bidang_id');
    }
}
