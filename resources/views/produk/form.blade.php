<div class="modal fade" id="modal-form" tabindex="-1" role="dialog" aria-labelledby="modal-form">
    <div class="modal-dialog" role="document">
        <form action="" method="POST" class="form-horizontal">
            @csrf
            @method('post')

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="nama_produk" class="col-md-2 col-md-offset-1 control-label">Nama</label>
                        <div class="col-md-8">
                            <input type="text" name="nama_produk" id="nama_produk" class="form-control" required autofocus>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="id_kategori" class="col-md-2 col-md-offset-1 control-label">Kategori</label>
                        <div class="col-md-8">
                            <select name="id_kategori" id="id_kategori" class="form-control" required>
                                <option value="">Pilih Kategori</option>
                                @foreach ($kategori as $key => $item)
<<<<<<< HEAD
                                    <option value="{{ $key }}">{{ $item }}</option>
=======
                                <option value="{{ $key }}">{{ $item }}</option>
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                                @endforeach
                            </select>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
<<<<<<< HEAD
                        <label for="merk" class="col-md-2 col-md-offset-1 control-label">Merk</label>
                        <div class="col-md-8">
                            <input type="text" name="merk" id="merk" class="form-control">
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="harga_beli" class="col-md-2 col-md-offset-1 control-label">Harga Beli</label>
                        <div class="col-md-8">
                            <input type="number" name="harga_beli" id="harga_beli" class="form-control">
=======
                        <label for="harga_beli" class="col-md-2 col-md-offset-1 control-label">Harga Beli</label>
                        <div class="col-md-8">
                            <input type="number" name="harga_beli" id="harga_beli" class="form-control" >
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="harga_jual" class="col-md-2 col-md-offset-1 control-label">Harga Jual</label>
                        <div class="col-md-8">
                            <input type="number" name="harga_jual" id="harga_jual" class="form-control" required>
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
<<<<<<< HEAD
                        <label for="diskon" class="col-md-2 col-md-offset-1 control-label">Diskon</label>
                        <div class="col-md-8">
                            <input type="number" name="diskon" id="diskon" class="form-control" value="0">
=======
                        <label for="stok" class="col-md-2 col-md-offset-1 control-label">Stok</label>
                        <div class="col-md-8">
                            <input type="number" name="stok" id="stok" class="form-control" required value="0"> 
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                    <div class="form-group row">
<<<<<<< HEAD
                        <label for="stok" class="col-md-2 col-md-offset-1 control-label">Stok</label>
                        <div class="col-md-8">
                            <input type="number" name="stok" id="stok" class="form-control" required value="0">
=======
                        <label for="deskripsi" class="col-md-2 col-md-offset-1 control-label">Deskripsi</label>
                        <div class="col-md-8">
                            <input type="text" name="deskripsi" id="deskripsi" class="form-control"> 
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                            <span class="help-block with-errors"></span>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
<<<<<<< HEAD
                    <button class="btn btn-sm btn-flat btn-primary">Simpan</button>
=======
                    <button class ="btn btn-sm btn-flat btn-primary">Simpan</button>
>>>>>>> 716ba28dab9921f603509009bb3e50ac8e4584d2
                    <button type="button" class="btn btn-sm btn-flat btn-default" data-dismiss="modal">Batal</button>
                </div>
            </div>
        </form>
    </div>
</div>