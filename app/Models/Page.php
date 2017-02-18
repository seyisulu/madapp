<?php

namespace MadComics\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Page extends Model
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
    'image',
    'issue_id'
  ];

  /**
   * The attributes that should be casted to native types.
   *
   * @var array
   */
  protected $casts = [
    'live' => 'boolean',
  ];

  /**
   * Get the issue that owns the page.
   */
  public function issue()
  {
    return $this->belongsTo('MadComics\Models\Issue');
  }

  public function issueId()
  {
   return $this->belongsTo('MadComics\Models\Issue');
  }
}
