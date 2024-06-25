@extends('layouts.master')

@section('content')
<div class="container">
    <h1>Tambah Hutang</h1>
    <form action="{{ route('hutang.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="customer_id">Customer</label>
            <select name="customer_id" id="customer_id" class="form-control">
                @foreach ($customers as $customer)
                    <option value="{{ $customer->id }}">{{ $customer->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="amount">Jumlah</label>
            <input type="text" name="amount" id="amount" class="form-control">
        </div>
        <div class="form-group">
            <label for="due_date">Tenggat Waktu</label>
            <input type="date" name="due_date" id="due_date" class="form-control">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
@endsection