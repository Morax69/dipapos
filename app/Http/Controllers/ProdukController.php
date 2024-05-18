<?php


namespace App\Http\Controllers;

use App\Models\Kategori;
use Illuminate\Http\Request;
use App\Models\Produk;


class ProdukController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kategori = Kategori::all()->pluck('nama_kategori','id_kategori');
        
        return view('produk.index', compact('kategori'));
    }

    public function data()
    {
        $produk = Produk::leftJoin('kategori', 'kategori.id_kategori', 'produk.id_kategori')
            ->select('produk.*', 'nama_kategori')
            ->orderBy('id_produk', 'desc')
            ->get();

        return datatables()
            ->of($produk)
            ->addIndexColumn()
            ->addColumn('kode_produk', function ($produk) {
                return '<span class="badge badge-succes">'.$produk->kode_produk .'</span>';
            })
            ->addColumn('harga_beli', function ($produk){
                return format_uang($produk->harga_beli);
            })
            ->addColumn('harga_jual', function ($produk){
                return format_uang($produk->harga_jual);
            })
            ->addColumn('aksi', function ($produk) {
                return ' 
                <div class = "btn-group">
                    <button onclick="editForm(`'. route('produk.update', $produk->id_produk).'`)" class="btn btn-xs btn-info btn-flat"><i class="fa fa-edit"></i></button>
                    <button onclick="deleteData(`'. route('produk.destroy', $produk->id_produk).'`)" class="btn btn-xs btn-danger btn-flat"><i class="fa fa-trash"></i></button>
                </div>
                ';

            })
            ->rawColumns(['aksi', 'kode_produk'])
            ->make(true);

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $produk = Produk::latest()->first();
    
    // Tentukan kode produk berdasarkan apakah produk ada atau tidak
    if ($produk !== null) {
        $new_id = (int)$produk->id_produk + 1;
    } else {
        $new_id = 1; // Jika tidak ada produk, mulai dengan ID 1
    }
    
    // Buat kode produk baru
    $request['kode_produk'] = 'P' . tambah_nol_didepan($new_id, 6);
    
    // Simpan produk baru
    $produk = Produk::create($request->all());
    
    // Kembalikan response sukses
    return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $produk = Produk::find($id);

        return response()->json($produk);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     * 
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, string $id)
    {
        $produk = Produk::find($id);
        $produk->update($request->all());

        return response()->json('Data berhasil disimpan', 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $produk = Produk::find($id);
        $produk->delete();

        return response(null,204);
    }
}
