<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Invoice;

class InvoiceController extends Controller
{
    public function index()
    {
        $data = Invoice::all();
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $data = new Invoice;
        $data->fill($request->all());
        $data->save();
        return response()->json($data, 201);
    }

    public function show($id)
    {
        $data = Invoice::find($id)->invoice_detail;
        return response()->json($data, 200);
    }

    public function update(Request $request, $id)
    {
        $data = Invoice::findOrFail($id);
        $data->update($request->all());
        return response()->json($data, 200);
    }

}