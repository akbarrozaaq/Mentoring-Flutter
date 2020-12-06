-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2020 pada 22.08
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_financeapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tips`
--

CREATE TABLE `tb_tips` (
  `tips_id` int(11) NOT NULL,
  `tips_judul` text NOT NULL,
  `tips_isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_tips`
--

INSERT INTO `tb_tips` (`tips_id`, `tips_judul`, `tips_isi`) VALUES
(22, 'Belajar Disiplin dalam Mengatur Uang', 'Mengatur keuangan itu tidak sulit, namun perlu pemahaman dasar soal istilah finansial. Ada baiknya mengetahui apa itu cash flow, ROI, IRA dan sebagainya. Dengan demikian, kesadaran untuk hidup hemat lebih tinggi. Tak perlu baca buku, semua istilah finansial bisa dipelajari langsung secara gratis via internet.'),
(23, 'Membuat Rekening Alternatif', 'Sebenarnya, tidak begitu sulit untuk menyembunyikan uang. Cukup membuat rekening tabungan alternatif tanpa akses kartu ATM. Setiap kali rekening tabungan menerima gaji bulanan, segera transfer nominal tertentu ke rekening tabungan alternatif atau aktifkan saja opsi transfer otomatis agar tidak repot kirim manual.\r\n\r\nSupaya uang di tabungan alternatif tidak terpakai sama sekali, lakukan print buku tabungan setiap 4-5 bulan sekali. Setiap kali menerima bonus, segera setor langsung  dan jika pendapatan bulanan naik, berarti nominal yang disetor harus naik pula.'),
(24, 'Catat Pengeluaran dan Evaluasi secara Berkala', 'Selain peduli pada pendapatan, coba luangkan perhatian pada pengeluaran. Ambil kertas dan pensil, lalu catat semua pengeluaran dalam sebulan. Coba analisa mendalam semua pengeluaran dan cari tahu apakah ada sektor yang bisa ditekan atau dihapus karena tidak penting. Menekan pengeluaran bulanan merupakan cara paling efektif menghemat uang.'),
(25, 'Cari Teman atau Anggota Keluarga yang Satu Visi, Dukungan Partner Mutlak Diperlukan', 'Agar lebih semangat dan terkendali dalam upaya menghemat pengeluaran, minta dukungan dan peran serta partner. Seorang ibu rumah tangga wajib melibatkan semua anggota keluarga untuk merasakan hidup hemat. Dengan keterlibatan semua pihak, maka pengeluaran bulanan lebih gampang dikendalikan.'),
(26, 'Hindari Pembelian Mendadak', 'Jangan membeli sesuatu yang mendadak atau di luar pos pengeluaran bulanan, apalagi tidak bersifat \'wajib\'. Mengeluarkan uang untuk barang yang tak penting karena godaan \'sale cuci gudang\' adalah bagian dari pemborosan. Jangan sampai mengambil keputusan yang berujung pada penyesalan.'),
(27, 'Bayar Tunai, Hindari Hutang yang Tidak Perlu', 'Dampak positif kehadiran kartu kredit yaitu tak perlu bawa uang banyak ketika berbelanja. Akan tetapi dampak negatif bagi si pemilik kartu yaitu utang menumpuk akibat pemakaian tidak terkendali. Agar finansial aman bebas dari virus kartu kredit, lebih baik jangan taruh di dompet dan bayar segala sesuatu dengan uang tunai.'),
(28, 'Pertimbangkan untuk Membeli Barang Kondisi Bekas Pakai', 'Apakah Anda sering tergoda untuk membeli barang tertentu yang bukan bagian dari pos pengeluaran? Boleh-boleh saja, namun pertimbangkan membeli barang dalam kondisi bekas ketimbang baru. Harga barang bekas alias second jauh lebih murah dan terjangkau, soal kualitas tergantung pada ketelitian calon pembeli saat mengambil keputusan.'),
(29, 'Lawan Kebiasaan Buruk yang Membuat Anda Boros', 'Semua orang pasti memiliki kebiasaan buruk, namun ada pula yang berdampak negatif pada finansial. Coba pahami dan kenali diri, apakah memiliki kebiasaan buruk yang merugikan seperti hobi nongkrong di kafe atau doyan beli cemilan. Bila sukses melawan kebiasaan buruk, hidup hemat bukan sekedar omong kosong.'),
(30, 'Potong Biaya Transportasi untuk Efisiensi', 'Seperti diketahui, biaya transportasi merupakan salah satu pos pengeluaran tertinggi.  Jika ingin hemat habis-habisan, pertimbangkan pergi ke kantor naik sepeda atau biasakan anak jalan kaki ke sekolah. Jika kebutuhan kendaraan bermotor tak bisa diajak kompromi, lebih baik naik sepeda motor ketimbang mobil.'),
(31, 'Jaga Kesehatan, Sakit itu Mahal!', 'Menjaga kesehatan tubuh sangat penting agar tidak mudah jatuh sakit, apalagi biaya yang harus dikeluarkan bisa menguras dompet dan buku tabungan. Oleh karena itu, rajin olahraga, minum dan makan teratur. Ingat, mencegah itu lebih baik daripada mengobati. Terus sehat bantu cegah pengeluaran ekstra untuk biaya obat dan rumah sakit.'),
(32, 'Menambah Sumber Penghasilan', 'Secara bertahap menambah sumber pendapatan akan memberikan akses ke lebih banyak pilihan dalam menjalani gaya hidup. Jika menjalani hidup sederhana, penghasilan tambahan akan menambah pundi kekayaan.'),
(33, 'Hindari Persaingan Gaya Hidup dengan Tetangga atau Teman Kerja', 'Jika hidup dalam lingkungan rumah mewah, atau lingkungan kerja sosialita tak pelak hal ini bisa membuat Anda terbawa arus gaya hidup bersaing dengan tetangga atau teman kantor. Hindari hal seperti ini dan ingat persaingan gaya hidup tak akan pernah habis dan justru akan semakin membuat boros. Fokus pada situasi dan diri sendiri, dan mencoba untuk melakukan yang lebih baik daripada yang dilakukan tahun lalu.'),
(34, 'Jangan Membeli apa yang Tidak mampu atau Tidak Dibutuhkan', 'Hanya karena toko menawarkan item untuk \"% uang muka selama 3 tahun\" tidak berarti Anda harus membelinya.  Belilah produk yang memang dibutuhkan atau mampu membelinya. Jangan tergoda dengan iklan, apalagi sampai berhutang dengan kartu kredit.'),
(35, 'Berhati-hati dalam Bergaul, Pilih Teman yang Satu Visi', 'Ada sebuah petuah bijak yang berbunyi \'Anda adalah rata-rata dari 5 orang yang ada di sekitar Anda.\' Artinya jumlah kekayaan saat ini tidak berbeda jauh dengan rata-rata 5 orang di sekitar Anda.\r\n\r\nHal ini memberi indikasi betapa pentingnya dalam bergaul. Jika bergaul dengan orang yang sukses dalam mengelola keuangan, maka juga akan tertular gaya hidup sukses dari orang tersebut.'),
(37, 'Selalu Lihat dan Bandingkan sebelum Membeli Barang', 'Apakah Anda termasuk orang yang boros dalam berbelanja? Apalagi sampai mengeluarkan terlalu banyak uang ketika berbelanja di sebuah toko online.  Jika iya, mulailah dari sekarang untuk selalu melihat dan membandingkan harga dan kualitas yang ingin dibeli.  Mengubah kebiasaan untuk cerdas dalam berbelanja  adalah langkah mendasar untuk menghemat uang.'),
(38, 'Libatkan Seluruh Keluarga untuk Berhemat', 'Berbicara dengan pasangan dan anak-anak tentang tujuan keuangan akan membantu kesuksesan dalam mewujudkan tujuan keuangan sesuai yang Anda impikan.'),
(39, 'Hadiahi Diri Sendiri saat Sukses Melakukan Sesuatu', 'Ketika telah mencapai penghematan sesuai dengan rencana atau sukses terhadap sebuah pekerjaan, tak ada salahnya menghadiahi diri sendiri untuk memacu prestasi yang lebih baik lagi. Hadiah bisa saja dalam bentuk liburan atau membeli barang yang Anda inginkan.'),
(40, 'Hargai Waktu', 'Waktu adalah uang, artinya setiap saat yang terbuang, Anda harus bisa memanfaatkannya menjadi uang, bisa dalam bentuk mencari pekerjaan sampingan atau yang lainnya.'),
(41, 'Ketahui Seluruh Kebutuhan yang Harus Dipenuhi sebelum Menerima Gaji', 'Ini untuk  memudahkan Anda dalam membagi segala pos-pos pengeluaran dalam rencana keuangan, agar ketika gaji sudah diterima, Anda telah siap untuk mengeposkan seluruh gaji kepada hal-hal yang tepat. Prioritaskan kebutuhan yang mendesak agar tidak keteteran dan justru bisa memakan banyak biaya lebih jika tidak segera diselesaikan, seperti membayar tagihan kartu kredit, tagihan listrik dan tagihan-tagihan lainnya.'),
(42, 'Hemat Sistem Anggaran dengan Amplop', 'Sistem amplop merupakan salah satu cara yang paling mudah untuk memulai anggaran dengan cara mengambil seluruh pendapatan untuk bulan yang dimaksud dan membagi-baginya ke dalam berbagai kategori seperti makanan, bahan bakar, hiburan, dan pakaian.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_uang`
--

CREATE TABLE `tb_uang` (
  `uang_id` int(11) NOT NULL,
  `uang_uang` int(11) NOT NULL,
  `uang_deskripsi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_uang`
--

INSERT INTO `tb_uang` (`uang_id`, `uang_uang`, `uang_deskripsi`) VALUES
(1, 10000, 'beli geprek'),
(3, 20000, 'gaji'),
(4, -2000, 'hhaahah'),
(5, -2000, 'upah'),
(6, -2222, 'upah'),
(7, 20000, 'upah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `user_email` varchar(150) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_nama` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user_email`, `user_password`, `user_nama`) VALUES
('akbar.rozaaq036@gmail.com', '123456', 'Akbar Rozaaq'),
('udacoding@gmail.com', '123456', 'uda');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_tips`
--
ALTER TABLE `tb_tips`
  ADD PRIMARY KEY (`tips_id`);

--
-- Indeks untuk tabel `tb_uang`
--
ALTER TABLE `tb_uang`
  ADD PRIMARY KEY (`uang_id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_tips`
--
ALTER TABLE `tb_tips`
  MODIFY `tips_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `tb_uang`
--
ALTER TABLE `tb_uang`
  MODIFY `uang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
