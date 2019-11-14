<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Fine extends Model
{
    public function user(){
    
        return $this->belongsTo('App\User');
    }
    public function Loan(){
    
        return $this->belongsTo('App\Loan');
    }
}
