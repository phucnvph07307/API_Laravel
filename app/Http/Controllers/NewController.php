<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;
class NewController extends Controller
{
    public function index()
    {
     
        $data = News::all();
        return response()->json($data, 200);
    }


    public function store(Request $request)
    {
        $data = News::create([
            'email' => "am@gmail.com",
            'message' => "jdhfd" 
        ]);
     
        return response()->json($data, 201);
    }

    public function show($id)
    {
        $data = News::find($id);
        return response()->json($data, 200);
    }

    public function update(Request $request, $id)
    {
        $data = News::findOrFail($id);
        $data->update($request->all());
        return response()->json($data, 200);
    }

    public function destroy($id)
    {
        $data = News::findOrFail($id);
        $data->delete();
        return response()->json(null, 204);
    }
}
