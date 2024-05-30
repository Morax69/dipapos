@extends('layouts.master')

@section('title')
    Daftar Produk
@endsection

@section('breadcrumb')
    @parent
<<<<<<< HEAD
    <li class="active">Daftar Produk</li>
=======
    <li class="active">Produk</li>
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
@endsection

@section('content')
    <!-- Small boxes (Stat box) -->
<<<<<<< HEAD
    <div class="row">
      </div>
      <!-- /.row -->
      <!-- Main row -->
=======
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
<<<<<<< HEAD
                <div class="btn-group">
                    <button onclick="addform('{{ route('produk.store') }}')" class="btn btn-success xs btn-flat"><i class="fa fa-plus-circle"></i> Tambah</button>
                    <button onclick="deleteSelected('{{ route('produk.delete_selected') }}')" class="btn btn-danger xs btn-flat"><i class="fa fa-trash"></i> Hapus</button>
                </div>
            </div>
            <div class="box-body table-responsive">
                <form action="" class="form-produk">
                    @csrf
                    <table class="table table-stiped table-bordered">
                        <thead>
                            <th>
                                <input type="checkbox" name="select_all" id="select_all">
                            </th>
                            <th width="5%">No</th>
                            <th>Kode</th>
                            <th>Nama</th>
                            <th>Kategori</th>
                            <th>Merk</th>
                            <th>Harga Beli</th>
                            <th>Harga Jual</th>
                            <th>Diskon</th>
                            <th>Stok</th>
                            <th width="15%"><i class="fa fa-cog"></i></th>
                        </thead>
                    </table>
                </form>
=======
              <button onclick="addform('{{ route('produk.store') }}')" class="btn btn-success xs btn-flat"><i class="fa fa-plus-circle"></i> Tambah</button>

            </div>
            <div class="box-body table-responsive">
                <table class="table table-stiped table-bordered">
                    <thead>
                        <th width="5%">No</th>
                        <th>Kode</th>
                        <th>Nama</th>
                        <th>Kategori</th>
                        <th>Harga Beli</th>
                        <th>Harga Jual</th>
                        <th>Stok</th>
                        <th>Deskripsi</th>
                        <th width="15%"><i class="fa fa-cog"></i></th>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
            </div>
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row (main row) -->

<<<<<<< HEAD
      @includeIf('produk.form')
=======
@includeIf('produk.form')
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
@endsection

@push('scripts')
    <script>
        let table;
<<<<<<< HEAD
        $(function(){
=======

        $(function() {
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
            table =  $('.table').DataTable({
                processing: true,
                autoWidth: false,
                ajax: {
<<<<<<< HEAD
                    url: '{{ route('produk.data') }}',
                },
                columns:[
                    {data: 'select_all'},
=======
                 url: '{{ route('produk.data') }}',
                 },
                 columns: [
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                    {data: 'DT_RowIndex', searchable: false, sortable: false},
                    {data: 'kode_produk'},
                    {data: 'nama_produk'},
                    {data: 'nama_kategori'},
<<<<<<< HEAD
                    {data: 'merk'},
                    {data: 'harga_beli'},
                    {data: 'harga_jual'},
                    {data: 'diskon'},
                    {data: 'stok'},
                    {data: 'aksi', searchable: false, sortable: false},
                ]
            });

            $('#modal-form').validator().on('submit', function (e){
                if(! e.preventDefault()){
                    $.post($('#modal-form form').attr('action'), $('#modal-form form').serialize())
=======
                    {data: 'harga_beli'},
                    {data: 'harga_jual'},
                    {data: 'stok'},
                    {data: 'deskripsi'},
                    {data: 'aksi', searchable: false, sortable:false},
                 ]
            });
            
            $('#modal-form').validator().on('submit', function (e){
                if(! e.preventDefault()) {
                    $.ajax({
                        url: $('#modal-form form').attr('action'),
                        type: 'post',
                        data: $('#modal-form form').serialize()
                    })
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                    .done((response) => {
                        $('#modal-form').modal('hide');
                        table.ajax.reload();
                    })
                    .fail((errors) => {
                        alert('Tidak dapat menyimpan data');
                        return;
                    });
                }
            });
<<<<<<< HEAD

            $('[name=select_all]').on('click', function (){
                $(':checkbox').prop('checked', this.checked);
            });
=======
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
        });

        function addform(url){
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Tambah Produk');

            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('post');
            $('#modal-form [name= nama_produk]').focus();
        }

<<<<<<< HEAD
        function editForm(url){
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Edit Produk');

=======
        function editForm(url) {
            $('#modal-form').modal('show');
            $('#modal-form .modal-title').text('Edit Produk');

            
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
            $('#modal-form form')[0].reset();
            $('#modal-form form').attr('action', url);
            $('#modal-form [name=_method]').val('put');
            $('#modal-form [name= nama_produk]').focus();
<<<<<<< HEAD
            $.get(url)
                .done((response) => {
                    $('#modal-form [name= nama_produk]').val(response.nama_produk);
                    $('#modal-form [name= id_kategori]').val(response.id_kategori);
                    $('#modal-form [name= merk]').val(response.merk);
                    $('#modal-form [name= harga_beli]').val(response.harga_beli);
                    $('#modal-form [name= harga_jual]').val(response.harga_jual);
                    $('#modal-form [name= diskon]').val(response.diskon);
                    $('#modal-form [name= stok]').val(response.stok);
                })
                .fail((errors) => {
                    alert('Tidak dapat menampilkan data');
                    return;
                });
        }
        
        function deleteData(url){
            if(confirm('Yakin ingin menghapus data terpilih?')){
                $.post(url, {
                    '_token': $('[name=csrf-token]').attr('content'),
                    '_method': 'delete'
=======

            $.get(url)
             .done((response) => {
                $('#modal-form [name=nama_produk]').val(response.nama_produk);
                $('#modal-form [name=id_kategori]').val(response.id_kategori);
                $('#modal-form [name=harga_beli]').val(response.harga_beli);
                $('#modal-form [name=harga_jual]').val(response.harga_jual);
                $('#modal-form [name=stok').val(response.stok);
                $('#modal-form [name=deskripsi').val(response.deskripsi);
             })
             .fail((errors) => {
                alert('Tidak dapat menampilkan data');
                return;
             });
        }

        function deleteData(url) {
            if(confirm('Yakin ingin menghapus data terpilih?')) {
                $.post(url, {
                        '_token': $('[name=csrf-token]').attr('content'),
                        '_method':'delete'
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                })
                .done((response) => {
                    table.ajax.reload();
                })
                .fail((errors) => {
                    alert('Tidak dapat menghapus data');
                    return;
<<<<<<< HEAD
                })
            }
        }

        function deleteSelected(url){
            if($('input:checked').length > 1){
                if(confirm('Yakin ingin menghapus data terpilih?')){
                    $.post(url, $('.form-produk').serialize())
                .done((response) => {
                        table.ajax.reload();
                    })
                .fail((errors) => {
                        alert('Tidak dapat menghapus data');
                        return;
                    })
                }
            } else{
                alert('Pilih data yg akan dihapus');
                return;
            }
        }

=======
                });
            }
        }
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
    </script>
@endpush