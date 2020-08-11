<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
class ContactController extends Controller
{
    public function index()
    {
     
        $data = Contact::all();
        return response()->json($data, 200);
    }


    public function store(Request $request)
    {
        $data = Contact::create([
            'email' => "am@gmail.com",
            'message' => "jdhfd" 
        ]);
     
        return response()->json($data, 201);
    }

    public function show($id)
    {
        $data = Contact::find($id);
        return response()->json($data, 200);
    }

    public function update(Request $request, $id)
    {
        $data = Contact::findOrFail($id);
        $data->update($request->all());
        return response()->json($data, 200);
    }

    public function destroy($id)
    {
        $data = Contact::findOrFail($id);
        $data->delete();
        return response()->json(null, 204);
    }
}
