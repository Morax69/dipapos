<?php

//models Hutang dan Customer, migration, web resource hutangs, view hutang

namespace App\Http\Controllers;

use App\Models\Hutang;
use App\Models\Customer;
use Illuminate\Http\Request;

class HutangController extends Controller
{
    public function index()
    {
        $debts = Hutang::with('customer')->get();
        return view('hutang.index', compact('hutang'));
    }

    public function create()
    {
        $customers = Customer::all();
        return view('hutang.create', compact('customers'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'customer_id' => 'required|exists:customers,id',
            'amount' => 'required|numeric',
            'due_date' => 'required|date',
        ]);

        Hutang::create($request->all());

        return redirect()->route('hutang.index')->with('Berhasil', 'Hutang sudah dibuat.');
    }

    public function edit(Hutang $debt)
    {
        $customers = Customer::all();
        return view('hutang.edit', compact('hutang', 'customers'));
    }

    public function update(Request $request, Hutang $debt)
    {
        $request->validate([
            'customer_id' => 'required|exists:customers,id',
            'amount' => 'required|numeric',
            'due_date' => 'required|date',
        ]);

        $debt->update($request->all());

        return redirect()->route('hutang.index')->with('Berhasil', 'Hutang sudah dibuat.');
    }

    public function destroy(Hutang $debt)
    {
        $debt->delete();

        return redirect()->route('hutang.index')->with('Berhasil', 'Hutang sudah dibuat.');
    }
}

