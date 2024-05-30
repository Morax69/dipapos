    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
    
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li>
                    <a href="{{ route('dashboard') }}">
                        <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('supplier.index') }}">
                        <i class="fa fa-users"></i> <span>Supplier</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('member.index') }}">
                        <i class="fa fa-id-card"></i> <span>Member</span>
                    </a>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-shopping-bag"></i>
                        <span>Penjualan</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> Transaksi Penjualan</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Daftar Penjualan</a></li>
                    </ul>
                </li>

                <li>
                    <a href="{{ route('pembelian.index') }}">
                        <i class="fa fa-shopping-cart"></i> <span>Pembelian</span>
                    </a>
                </li>

                <li>
                    <a href="{{ route('pengeluaran.index') }}">
                        <i class="fa fa-money"></i> <span>Pengeluaran</span>
                    </a>
                </li>

                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-cubes"></i>
                        <span>Gudang</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="{{ route('kategori.index') }}"><i class="fa fa-circle-o"></i> Kategori</a></li>
                        <li><a href="{{ route('produk.index') }}"><i class="fa fa-circle-o"></i> Produk</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-book"></i> <span>Laporan</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-user-circle-o"></i> <span>User</span>
                    </a>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>