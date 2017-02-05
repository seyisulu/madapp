<?php

namespace MadComics\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use View;
use MadComics\Models\Comic;
use MadComics\Models\Issue;
use MadComics\Models\Page;
use MadComics\Models\Volume;

class ComicController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index()
  {
    $comics =  Comic::paginate(env('COMIC_COUNT', 9));
    return View::make('comic.index', ['comics'=> $comics]);
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function create()
  {
    //View::make('comic.show', ['comic' => Comic::findOrFail()])
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
      //
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    $comic = Comic::findOrFail($id);

    $volumes = Volume::where('comic_id', $id)->with(['issues' => function ($query) {
      $query->orderBy('id', 'asc');
    }])->get();

    $views = Issue::select('volume_id', DB::raw("sum(views) as 'views'"))
      ->whereIn('volume_id', Volume::where('comic_id', $id)->pluck('id')->all())
      ->groupBy('volume_id')
      ->pluck('views', 'volume_id');

    return View::make('comic.show', [
      'comic' => $comic,
      'volumes' => $volumes,
      'views' => $views
    ]);
  }

  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function edit($id)
  {
      //
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
      //
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
      //
  }

  public function read($comicSlug, $volumeId, $issueId)
  {
    /*
  	$page = Page::whereSlug($pageSlug)
  	->whereHas('category', function ($query) use ($categorySlug) {
  	   $query->whereSlug($categorySlug);
  	})
  	->whereHas('category.subject', function ($query) use ($subjectSlug) {
  	   $query->whereSlug($subjectSlug);
    })->first();
    //*/
    $pages = Page::where([
      'issue_id'=> $issueId,
      'live'=> 1
    ])->whereHas('issue.volume', function ($query) use ($volumeId) {
  	   $query->whereId($volumeId);
  	})->whereHas('issue.volume.comic', function ($query) use ($comicSlug) {
  	   $query->whereSlug($comicSlug);
  	})->paginate(1);
    return View::make('comic.read', [
      'comicSlug'=> $comicSlug,
      'volumeId'=> $volumeId,
      'issueId'=> $issueId,
      'pages'=> $pages,
    ]);
  	//return view('pages.show',compact('page'));
  }
}
