<?php

namespace MadComics\Models;

use Carbon\Carbon;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use TCG\Voyager\Traits\VoyagerUser;

class User extends Authenticatable
{
    use Notifiable, SoftDeletes, VoyagerUser;
    //From Voyager
    protected $guarded = [];

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    //protected $fillable = ['name', 'email', 'phone', 'password'];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

     /**
       * The attributes that should be mutated to dates.
       *
       * @var array
       */
     protected $dates = ['created_at', 'deleted_at', 'updated_at'];

     /**
     * On save make sure to set the default avatar if image is not set.
     */
    public function save(array $options = [])
    {
      // If no avatar has been set, set it to the default
      $this->avatar = $this->avatar ?: config('voyager.user.default_avatar', 'users/default.png');
      parent::save();
    }

    public function getNameAttribute($value)
    {
      return ucwords($value);
    }

    public function getCreatedAtAttribute($value)
    {
      return Carbon::parse($value)->format('F jS, Y h:i A');
    }

    public function setCreatedAtAttribute($value)
    {
      $this->attributes['created_at'] = Carbon::parse($value)->format('Y-m-d H:i:s');
    }

}
