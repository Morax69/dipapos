@extends('layouts.master')

@section('content')
<div class="container">
    <h1>Edit Debt</h1>
    <form action="{{ route('hutang.update', $debt->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="customer_id">Customer</label>
            <select name="customer_id" id="customer_id" class="form-control">
                @foreach ($customers as $customer)
                    <option value="{{ $customer->id }}" {{ $customer->id == $debt->customer_id ? 'selected' : '' }}>
                        {{ $customer->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="form-group">
            <label for="amount">Jumlah</label>
            <input type="text" name="amount" id="amount" class="form-control" value="{{ $debt->amount }}">
        </div>
        <div class="form-group">
            <label for="due_date">Tenggat waktu</label>
            <input type="date" name="due_date" id="due_date" class="form-control" value="{{ $debt->due_date }}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
@endsection