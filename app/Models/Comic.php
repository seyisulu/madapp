<?php

namespace MadComics\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comic extends Model
{
  use SoftDeletes;

  protected static function boot() {
    parent::boot();

    static::deleting(function($m) {
      $m->volumes()->delete();
    });
    static::restored(function($m) {
      $m->volumes()->withTrashed()->restore();
    });
  }

  protected $dates = [
    'deleted_at',
    'created_at',
    'updated_at'
  ];

  /**
   * Attributes that are mass assignable
   *
   * @var array
   */
  protected $fillable = [
    'name',
    'image',
    'synopsis'
  ];

  /**
   * Set the comic's title to title case and also updates the slug.
   *
   * @param  string  $value
   * @return void
   */
  public function setNameAttribute($value) {
    $this->attributes['name'] = title_case($value);
    $this->attributes['slug'] = str_slug($value);
  }

  /**
   * The attributes that should be casted to native types.
   *
   * @var array
   */
  protected $casts = [
    'live' => 'boolean',
    'views' => 'integer',
  ];

  /**
   * Get the volumes in this comic.
   */
  public function volumes()
  {
    return $this->hasMany(Volume::class);
  }
}
