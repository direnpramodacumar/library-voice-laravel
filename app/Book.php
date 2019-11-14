<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
  public function category(){
    
    return $this->belongsTo('App\Category');
  }
  
  public function loan(){
        
    return $this->hasMany('App\Loan');
  }
  
}
