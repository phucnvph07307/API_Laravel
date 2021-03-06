<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\InvoiceDetail;
class InvoiceDetailController extends Controller
{
   
    public function index()
    {
        $data = InvoiceDetail::all();
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $data = new InvoiceDetail;
        $data->fill($request->all());
        $data->save();
        return response()->json($data, 201);
    }

    public function show($id)
    {
        $data = InvoiceDetail::find($id);
        return response()->json($data, 200);
    }

    public function update(Request $request, $id)
    {
        $data = InvoiceDetail::findOrFail($id);
        $data->update($request->all());
        return response()->json($data, 200);
    }

}