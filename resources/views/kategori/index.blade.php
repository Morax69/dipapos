@extends('layouts.master')

@section('title')
    Kategori
@endsection

@section('breadcrumb')
    @parent
    <li class="active">Kategori</li>
@endsection

@section('content')
    <!-- Small boxes (Stat box) -->
    <div class="row">
      </div>
      <!-- /.row -->
      <!-- Main row -->
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
              <button onclick="addform('{{ route('kategori.store') }}')" class="btn btn-success xs btn-flat"><i class="fa fa-plus-circle"></i> Tambah</button>

            </div>
            <div class="box-body table-responsive">
                <table class="table table-stiped table-bordered">
                    <thead>
                        <th width="5%">No</th>
                        <th>Kategori</th>
                        <th width="15%"><i class="fa fa-cog"></i></th>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row (main row) -->

      @includeIf('kategori.form')
@endsection

@push('scripts')
    <script>
        let table;
        $(function(){
            table =  $('.table').DataTable({
                processing: true,
                autoWidth: false,
                ajax: {
                 url: '{{ route('kategori.data') }}',
                 },
                 columns: [
                    {data: 'DT_RowIndex', searchable: false, sortable: false},
                    {data: 'nama_kategori'},
                    {data: 'aksi', searchable: false, sortable:false},
                 ]
            });
            $('#modal-form').validator().on('submit', function (e){
                if(! e.preventDefault()){
                    $.ajax({
                        url: $('#modal-form form').attr('action'),
                        type: 'post',
                        data: $('#modal-form form').serialize()
                    })
                    .done((response) => {
                        $('#modal-form').modal('hide');
                        table.ajax.reload();
                    })
                    .fail((errors) => {
                        alert('Tidak dapat menyimpan data');
                        return;
                    })
                }
            })
        })

        function addform(url){
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Tambah Kategori');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('post');
            $('#modal-form [name= nama_kategori]').focus();
        }
    </script>
@endpush