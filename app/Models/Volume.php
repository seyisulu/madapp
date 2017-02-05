<?php

namespace MadComics\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Volume extends Model
{
  use SoftDeletes;

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
    'number',
    'comic_id'
  ];

  /**
   * The attributes that should be casted to native types.
   *
   * @var array
   */
  protected $casts = [
    'live' => 'boolean',
    'number' => 'integer',
  ];

  /**
   * Set the volume's title to title case and also updates the slug.
   *
   * @param  string  $value
   * @return void
   */
  public function setNameAttribute($value) {
    $this->attributes['name'] = title_case($value);
    $this->attributes['slug'] = str_slug($value);
  }

  /**
   * Get the comic that owns the volume.
   */
  public function comic()
  {
    return $this->belongsTo(Comic::class);
  }

  /**
   * Get the issues in this volume.
   */
  public function issues()
  {
    return $this->hasMany(Issue::class);
  }
}
