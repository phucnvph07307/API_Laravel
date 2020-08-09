<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{
    public function index()
    {
     
        $data = Category::all();
        return response()->json($data, 200);
    }
    public function getAll()
    {
        $data = Category::paginate(5);
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $data = new Category;
        $data->fill($request->all());
        $data->save();
        return response()->json($data, 201);
    }

    public function show($id)
    {
        $data = Category::find($id);
        return response()->json($data, 200);
    }

    public function update(Request $request, $id)
    {
        $data = Category::findOrFail($id);
        $data->update($request->all());
        return response()->json($data, 200);
    }

    public function destroy($id)
    {
        $data = Category::findOrFail($id);
        $data->delete();
        return response()->json(null, 204);
    }
}
