<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Loan extends Model
{
    public function book(){
    
        return $this->belongsTo('App\Book');
    }
    
    public function user(){
    
        return $this->belongsTo('App\User');
    }
    public function fine(){
        
        return $this->hasMany('App\Fine');
      }
}
