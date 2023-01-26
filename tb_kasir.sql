
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `nama_barang` text NOT NULL,
  `harga_barang` varchar(250) NOT NULL,
  `tgl_input` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `barang` (`id`, `id_barang`, `nama_barang`, `harga_barang`, `tgl_input`) VALUES
(23, 'BRG001', 'Citul', '2000', '2 April 2022, 21:33'),
(24, 'BRG002', 'Cireng', '2000', '2 April 2022, 21:34'),
(25, 'BRG003', 'Gehu', '5000', '2 April 2022, 21:34');

CREATE TABLE `keranjang` (
  `id_cart` int(11) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `quantity` text NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `no_transaksi` varchar(255) NOT NULL,
  `bayar` varchar(255) NOT NULL,
  `kembalian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `keranjang` (`id_cart`, `kode_barang`, `nama_barang`, `harga_barang`, `quantity`, `subtotal`, `tgl_input`, `no_transaksi`, `bayar`, `kembalian`) VALUES
(87, 'BRG001', 'sosis kecil', '2000', '2', '4000', '2 April 2022', 'AD20420222145', '300000', '14000'),
(88, 'BRG002', 'fishroll', '2000', '6', '12000', '2 April 2022', 'AD20420222145', '300000', '14000'),
(89, 'BRG003', 'sosis jumbo', '5000', '54', '270000', '2 April 2022', 'AD20420222145', '300000', '14000'),
(90, 'BRG001', 'sosis kecil', '2000', '4', '8000', '23 April 2022', '', '', '');

CREATE TABLE `laporanku` (
  `id_cart` int(11) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `quantity` text NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `no_transaksi` varchar(255) NOT NULL,
  `bayar` varchar(255) NOT NULL,
  `kembalian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `laporanku` (`id_cart`, `kode_barang`, `nama_barang`, `harga_barang`, `quantity`, `subtotal`, `tgl_input`, `no_transaksi`, `bayar`, `kembalian`) VALUES
(85, 'BRG001', 'sosis kecil', '2000', '2', '4000', '2 April 2022', 'AD20420222136', '30000', '6000'),
(86, 'BRG003', 'sosis jumbo', '5000', '4', '20000', '2 April 2022', 'AD20420222136', '30000', '6000');

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_toko` varchar(50) NOT NULL,
  `user` varchar(250) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `login` (`id_login`, `nama_toko`, `user`, `pass`, `alamat`, `telp`) VALUES
(1, 'KASIRKU', 'admin', '123', 'Kp. Lengkong Rt.04/01 Ds. Tawangsari Kec. Lengkong Kab. Tasikmalaya', '085795629025');

ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_cart`);

ALTER TABLE `laporanku`
  ADD PRIMARY KEY (`id_cart`);

ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

ALTER TABLE `keranjang`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

ALTER TABLE `laporanku`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

