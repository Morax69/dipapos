@extends('layouts.master')

@section('title')
    Hutang
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Daftar Hutang</li>
@endsection

@section('content')
<div class="container">
    <a href="{{ route('hutang.create') }}" class="btn btn-primary">Tambah Hutang</a>
    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    <table class="table table-bordered mt-3">
        <thead>
            <tr>
                <th>ID</th>
                <th>Customer</th>
                <th>Amount</th>
                <th>Due Date</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($hutangs as $item)
                <tr>
                    <td>{{ $item->id }}</td>
                    <td>{{ $item->customer->name }}</td>
                    <td>{{ $item->amount }}</td>
                    <td>{{ $item->due_date }}</td>
                    <td>{{ $item->status }}</td>
                    <td>
                        <a href="{{ route('hutang.edit', $item->id) }}" class="btn btn-warning">Edit</a>
                        <form action="{{ route('hutang.destroy', $item->id) }}" method="POST" style="display:inline-block;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection