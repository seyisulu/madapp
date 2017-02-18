<?php

namespace MadComics\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Issue extends Model
{
  use SoftDeletes;

  protected static function boot() {
    parent::boot();

    static::deleting(function($m) {
      $m->pages()->delete();
    });
    static::restored(function($m) {
      $m->pages()->withTrashed()->restore();
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
    'volume_id'
  ];

  /**
   * The attributes that should be casted to native types.
   *
   * @var array
   */
  protected $casts = [
    'live' => 'boolean',
    'views' => 'integer',
    'number' => 'integer',
  ];

  /**
   * Set the issue's title to title case and also updates the slug.
   *
   * @param  string  $value
   * @return void
   */
  public function setNameAttribute($value) {
    $this->attributes['name'] = title_case($value);
    $this->attributes['slug'] = str_slug($value);
  }

  /**
   * Get the volume that owns the issue.
   */
  public function volume()
  {
    return $this->belongsTo(Volume::class);
  }

  public function volumeId()
  {
   return $this->belongsTo(Volume::class);
  }

  /**
   * Get the pages for the comic.
   */
  public function pages()
  {
    return $this->hasMany(Page::class);
  }
}
