-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2020 pada 08.14
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
-- Database: `db_kesehatanapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berita`
--

CREATE TABLE `tb_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_judul` varchar(256) NOT NULL,
  `berita_isi` text NOT NULL,
  `berita_gambar` varchar(256) NOT NULL,
  `berita_createdDate` date NOT NULL,
  `berita_penulis` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berita`
--

INSERT INTO `tb_berita` (`berita_id`, `berita_judul`, `berita_isi`, `berita_gambar`, `berita_createdDate`, `berita_penulis`) VALUES
(1, 'Remaja Wajib Tahu, Kehamilan Usia Dini Berisiko Biologis hingga Psikologis', 'KOMPAS.com - Ahli mengingatkan bahwa pendidikan atau edukasi yang komprehensif terkait kesehatan seksual dan reproduksi sangat perlu dikampanyekan. Hal ini disampaikan oleh dr Sandeep Nanwani MMSc dari United Nations Population Fund (UNFPA).  Dalam diskusi daring \"Webinar 1: Let\'s Talk About Sex\" yang merupakan bagian dari rangkaian #HarusDibahas oleh Reprodukasi, Jumat (20/11/2020), Sandeep berkata bahwa sebenarnya, ada banyak pemahaman yang keliru tentang pendidikan kesehatan seksual dan reproduksi. Padahal, kesehatan seksual dan reproduksi harus dipahami oleh semua orang, bukan kalangan medis saja. Baca juga: Studi Ungkap Tren Kehamilan Tak Diinginkan dan Aborsi Global, Ini Hasilnya Dia pun menegaskan bahwa dalam peraturan undang-undang, sudah diatur bahwa setiap perempuan berhak menjalani kehidupan seksual yang sehat secara aman, tanpa paksaan dan diskriminasi, tanpa rasa takut, malu dan rasa bersalah. Kehidupan seksual sehat yang dimaksud meliputi beberapa hal sebagai berikut: - Terbebas dari infeksi menular seksual - Terbebas dari disfungsi dan gangguan seksual - Terbebas dari kekerasan fisik dan mental - Mampu mengatur kehamilan - Sesuai dengan etika dan moralitas Dalam pemaparannya, Sandeep berkata bahwa sebelum anak remaja menyalurkan dorongan seksualnya, dia harus tahu dulu apa yang diinginkannya dan batasan dirinya. Selain itu, remaja juga harus diberikan ruang aman untuk merefleksikan batasan-batasan yang dia buat, supaya dia sendiri bisa bijak dalam mengambil keputusan. Baca juga: Komnas Perempuan Tegaskan, Kehamilan Remaja Hanya Beri Tekanan Fisik dan Psikis \"Makanya kita harus memberikan informasi sedetail-detailnya (sebelum remaja itu mengambil keputusan), karena kalau kita cuma mengarahkan dan remaja itu tidak mengerti keputusan yang diambil, bisa saja remaja itu tidak mengerti tentang seksual yang aman,\" jelasnya. Secara khusus, remaja harus diberikan pengetahuan atau edukasi yang menegaskan bahwa jika mereka tidak menjaga kesehatan seksualnya dan terjadi kehamilan saat remaja, maka akan ada banyak sekali risiko yang mengancam.', 'https://asset.kompas.com/crops/5eI8cYIUsWbyd3NiblkWJITWxyU=/0x0:1000x667/750x500/data/photo/2020/11/27/5fc08c5696276.jpg', '2020-11-28', 'Ellyvon Pranita'),
(4, 'Jokowi Dorong Negara ASEAN Plus Three Punya Mekanisme Ketahanan Kesehatan', 'TEMPO.CO, Jakarta - Presiden Joko Widodo atau Jokowi mendorong kemampuan negara-negara ASEAN Plus Three (APT) untuk mempunyai mekanisme ketahanan kesehatan. Hal itu, kata Jokowi, berkaca dari pengalaman pandemi Covid-19 saat ini.\r\n\r\nIa berharap ke depannya negara-negara di kawasan dapat siap menghadapi pandemi di masa depan. Hal ini disampaikan Jokowi saat berpidato secara virtual di KTT ke-23 APT pada Sabtu, 14 November 2020, Kepala Negara berbagi sejumlah pandangannya mengenai upaya untuk memperkuat mekanisme ketahanan kesehatan tersebut.\r\n\r\n\"Pertama, pembangunan infrastruktur kesehatan di tingkat nasional,\" ujar Jokowi, seperti dirilis oleh Biro Pers, Media, dan Informasi Sekretariat Presiden.\r\n\r\nKetahanan kesehatan kawasan, kata Jokowi, harus dimulai dari infrastruktur kesehatan yang memadai di tingkat nasional. Ia mengatakan bahwa masing-masing negara harus berinvestasi untuk menjamin akses kesehatan dengan harga terjangkau. Upaya tersebut nantinya akan memperbaiki ketahanan masyarakat dan kesiapsiagaan serta kapasitas kesehatan publik di masa darurat.\r\n\r\n\"Selain itu, kita juga harus membangun kapasitas teknologi kesehatan digital sebagai bagian dari infrastruktur kesehatan publik. Layanan akses online ke telehealth menjadi kian relevan di masa pandemi. Negara mitra di ASEAN Plus Three harus berkolaborasi membangun infrastruktur kesehatan masing-masing negara di kawasan,\" kata Jokowi.\r\n\r\nSetelah itu, Jokowi juga mendorong untuk memperkuat mekanisme ketahanan kesehatan, maka pembangunan industri kesehatan di kawasan harus segera dilakukan. Pandemi saat ini, kata dia, memberikan pelajaran kepada kita mengenai pentingnya industri kesehatan yang kuat di kawasan, baik industri alat kesehatan, obat-obatan, bahan baku obat, farmasi, maupun vaksin.\r\n\r\nIa berpendapat bahwa kawasan harus memiliki peta jalan (roadmap) untuk memperkuat berbagai industri tersebut. Industri kesehatan juga harus ditopang oleh kapasitas penelitian dan pengembangan di sektor kesehatan.\r\n\r\n\"Untuk itu, penting bagi kita untuk menjadikan kawasan ASEAN Plus Three sebagai medical-sciences hub terutama di masa dan pasca pandemi,\" tutur Jokowi.\r\n\r\nLebih jauh, pembentukan kerangka kawasan yang komprehensif dalam menghadapi pandemi juga disinggung oleh Presiden Joko Widodo. Kerangka ini meliputi sistem dan SoP di masa pandemi, sistem peringatan dini, sistem ketersediaan alat kesehatan, obat-obatan, hingga keberadaan vaksin di kawasan.\r\n\r\nTerkait hal itu, keberadaan ASEAN Center for Public Health Emergencies and Emerging Diseases sangat dibutuhkan. Jokowi menegaskan kembali kesiapan Indonesia untuk menjadi tuan rumah bagi pusat operasi tersebut.\r\n\r\n\"Pandemi ini harus menjadi wake up call bagi kita untuk memperbaiki sistem kesehatan baik di tingkat nasional maupun di kawasan. Recover together, recover stronger,\" kata Jokowi.\r\n\r\nUntuk diketahui, mitra ASEAN yang hadir dalam KTT ini ialah Perdana Menteri Jepang Yoshihide Suga, Premier Tiongkok Li Keqiang, dan Presiden Korea Selatan Moon Jae-in.', 'https://statik.tempo.co/data/2020/11/09/id_979365/979365_720.jpg', '2020-11-28', 'Egi Adyatama'),
(5, 'Pentingnya Konsistensi Sosialisasi agar Masyarakat Patuh Protokol Kesehatan', 'TEMPO.CO, Jakarta - Pengamat sosial dari Universitas Indonesia (UI), Devie Rahmawati, mengatakan semua pihak harus konsisten melakukan sosialisasi protokol kesehatan agar masyarakat semakin ketat #jagajarak, #cucitangan, dan #pakaimasker.\r\n\r\n\"Bicara soal sosialisasi kita tidak boleh berhenti begitu saja apapun yang terjadi,\" kata Devie.\r\n\r\nHal itu penting dilakukan untuk memberikan pengertian bahwa pandemi COVID-19 masih berlangsung dan sejauh ini satu-satunya cara untuk mencegah penularan adalah dengan melakukan 3M secara ketat. Menurut akademisi di Program Vokasi UI itu, dalam studi yang dilakukan timnya pada awal pandemi di Indonesia pada Maret 2020, terjadi kecenderungan masyarakat menghindari informasi COVID-19 karena takut penyakit yang menyerang pernapasan itu.\r\n\r\nTapi, menurut studi yang belum dipublikasi itu, memasuki tujuh bulan masa pandemi dan pembatasan sosial berskala besar (PSBB) di beberapa daerah, kegigihan pemerintah dibantu berbagai pihak, seperti media dan gerakan sipil, membuat masyarakat akhirnya mulai sadar keberadaan COVID-19 di tengah gempuran hoaks soal penyakit itu.\r\n\r\n\"Memang diperlukan konsistensi, tidak peduli apapun yang terjadi dan isu-isu besar apapun,\" kata Direktur Kemahasiswaan UI itu.\r\n\r\nMenanggapi masih ada segmen masyarakat yang percaya tidak mungkin tidak tertular, Devie mengatakan dalam berbagai perubahan sosial memang beberapa persen segmen masyarakat tidak mengikuti perubahan. Namun, lebih banyak masyarakat yang mengikuti ketentuan, seperti yang dilakukan sebagian besar masyarakat dengan adaptasi kebiasaan baru menerapkan protokol kesehatan dalam kehidupan sehari-hari.\r\n\r\n\"Terlepas dari kondisi apapun, gempuran hoaks yang luar biasa, upaya untuk terus menyosialisasikan (protokol kesehatan) tetap menjadi sesuatu yang tidak boleh kita kendurkan semangatnya,\" tegas Devie.\r\n\r\nSebelumnya, dalam survei yang dilakukan Badan Pusat Statistik (BPS) pada 90.967 orang pada 7-14 September 2020, ditemukan 17 persen responden yang yakin tidak mungkin atau sangat tidak mungkin tertular COVID-19.', 'https://statik.tempo.co/data/2020/10/15/id_974004/974004_720.jpg', '2020-11-28', 'Yayuk Widiyarti'),
(11, '5 Stigma yang Sering Diberikan pada Kegiatan Meditasi', 'TEMPO.CO, Jakarta - Masih banyak masyarakat yang tidak mengenal meditasi. Akibatnya, banyak prasangka buruk yang terjadi di pikiran mereka. Instruktur Meditasi Bersetifikasi The Golden Space Indonesia, Bagia Arif Saputra, menyampaikan bahwa ada lima stigma yang sering beredar di masyarakat tentang meditasi.\r\n\r\nPertama adalah stigma soal meditasi dianggap hanya milik agama tertentu. Bagia mengatakan meditasi yang mereka lakukan sifatnya universal dan non-religius. Orang yang melakukan meditasi dilatih untuk dapat merefleksikan diri dan mendengar suara hati masing-masing. \"Maka itu, orang harus terlebih dahulu mencoba praktik ini agar mengetahui dampaknya pada kesehatan dan kedamaian diri,\" katanya pada konferensi Pers ALive pada 3 November 2020.\r\n\r\nIa mengatakan bahwa di internet sudah tersebar banyak sekali penelitian soal manfaat baik meditasi. Salah satunya adalah membantu diri meningkatkan kualitas hidup secara psikis, emosi, mental juga fisik. \"Meditasi ini sebagai platform bagi kita untuk dapat mencapai kebahagiaan itu sendiri,\" katanya.\r\n\r\nStigma kedua adalah \'Saya tidak bisa diam, jadi saya tidak mungkin bisa meditasi\'. Bagia mengatakan bahwa semakin seseorang memiliki pikiran yang tidak bisa diam dan suka meloncat-loncat, semakin perlu pula orang itu untuk belajar meditasi. \"Dalam meditasi, kita dilatih untuk menjinakkan otak monyet kita yang suka meloncat-loncat. Semua bisa meditasi, asal mau belajar,\" katanya.\r\n\r\nKetiga, stigma yang sering didengar Bagia adalah \'Meditasi bisa membuat kesurupan\'. Ia tidak heran ada stigma ini, maklum Indonesia sangat kental dengan dunia mistis. Bagia mengingatkan bahwa meditasi bukanlah mengosongkan pikiran. \"Tapi yang kami lakukan memfokuskan pikiran, atau pusatkan pikiran dalam objek tertentu. Untuk pemula, biasanya akan fokus pada nafas,\" katanya.\r\n\r\nBanyak pula orang menduga bahwa \'Daripada meditasi, alangkah lebih baik agar orang melakukan beribadah saja\'. Bagia mencontohkan salah satu perkataan yang sering didengarnya sebagai orang Islam adalah lebih baik berzikir dan berdoa daripada meditasi. Menurut Bagia meditasi dan beribadah adalah kegiatan yang sangat berbeda. \"Kalau kita berdoa dan beribadah, kita akan memohon sesuatu. \"Saat ibadah kita lebih banyak meminta dan bersuara kepada Tuhan. Saat meditasi, kita justru dilatih untuk mendengarkan suara hati kita. Bila yakin, bisa saja orang akan kita meminta sesuatu tapi saat kita meditasi, kita\" katanya.\r\n\r\nStigma terakhir soal meditasi adalah \'Meditasi dinilai supranatural dan mistis\'. Bagia mengatakan meditasi bisa membantu banyak orang atasi masalah mental, dan fisik,\" kata Bagia.\r\n\r\nTEMPO.CO, Jakarta - Masih banyak masyarakat yang tidak mengenal meditasi. Akibatnya, banyak prasangka buruk yang terjadi di pikiran mereka. Instruktur Meditasi Bersetifikasi The Golden Space Indonesia, Bagia Arif Saputra, menyampaikan bahwa ada lima stigma yang sering beredar di masyarakat tentang meditasi.\r\n\r\nPertama adalah stigma soal meditasi dianggap hanya milik agama tertentu. Bagia mengatakan meditasi yang mereka lakukan sifatnya universal dan non-religius. Orang yang melakukan meditasi dilatih untuk dapat merefleksikan diri dan mendengar suara hati masing-masing. \"Maka itu, orang harus terlebih dahulu mencoba praktik ini agar mengetahui dampaknya pada kesehatan dan kedamaian diri,\" katanya pada konferensi Pers ALive pada 3 November 2020.\r\n\r\nIa mengatakan bahwa di internet sudah tersebar banyak sekali penelitian soal manfaat baik meditasi. Salah satunya adalah membantu diri meningkatkan kualitas hidup secara psikis, emosi, mental juga fisik. \"Meditasi ini sebagai platform bagi kita untuk dapat mencapai kebahagiaan itu sendiri,\" katanya.\r\n\r\nStigma kedua adalah \'Saya tidak bisa diam, jadi saya tidak mungkin bisa meditasi\'. Bagia mengatakan bahwa semakin seseorang memiliki pikiran yang tidak bisa diam dan suka meloncat-loncat, semakin perlu pula orang itu untuk belajar meditasi. \"Dalam meditasi, kita dilatih untuk menjinakkan otak monyet kita yang suka meloncat-loncat. Semua bisa meditasi, asal mau belajar,\" katanya.\r\n\r\nKetiga, stigma yang sering didengar Bagia adalah \'Meditasi bisa membuat kesurupan\'. Ia tidak heran ada stigma ini, maklum Indonesia sangat kental dengan dunia mistis. Bagia mengingatkan bahwa meditasi bukanlah mengosongkan pikiran. \"Tapi yang kami lakukan memfokuskan pikiran, atau pusatkan pikiran dalam objek tertentu. Untuk pemula, biasanya akan fokus pada nafas,\" katanya.\r\n\r\nBanyak pula orang menduga bahwa \'Daripada meditasi, alangkah lebih baik agar orang melakukan beribadah saja\'. Bagia mencontohkan salah satu perkataan yang sering didengarnya sebagai orang Islam adalah lebih baik berzikir dan berdoa daripada meditasi. Menurut Bagia meditasi dan beribadah adalah kegiatan yang sangat berbeda. \"Kalau kita berdoa dan beribadah, kita akan memohon sesuatu. \"Saat ibadah kita lebih banyak meminta dan bersuara kepada Tuhan. Saat meditasi, kita justru dilatih untuk mendengarkan suara hati kita. Bila yakin, bisa saja orang akan kita meminta sesuatu tapi saat kita meditasi, kita\" katanya.\r\n\r\nStigma terakhir soal meditasi adalah \'Meditasi dinilai supranatural dan mistis\'. Bagia mengatakan meditasi bisa membantu banyak orang atasi masalah mental, dan fisik,\" kata Bagia.', 'https://statik.tempo.co/data/2016/06/28/id_519151/519151_620.jpg', '2020-11-05', 'Mitra Tarigan'),
(14, 'Lonjakan Kasus Covid-19 Dunia dan Optimisme Vaksin Bayangi IHSG Pekan Depan', 'TEMPO.CO, Jakarta - Direktur Anugerah Mega Investama Hans Kwee memperkirakan indeks harga saham gabungan (IHSG) bakal terkonsolidasi melemah pada pekan depan. \"Support IHSG di level 5,541 sampai 5,462 dan resistance di level 5,628 sampai 5,657,\" ujar dia dalam keterangan tertulis, Ahad, 22 November 2020.\r\n\r\nMeningkatnya kasus positif Covid-19 di beberapa negara disertai mulai turunnya optimisme terkait vaksin menjadi sentimen yang membuat pasar saham terkonsolidasi melemah pekan depan. Perkara stimulus di Amerika Serikat dan pasar keuangan yang naik banyak beberapa pekan terakhir juga membuka koreksi sehat pada IHSG.\r\n\r\nHans mengatakan pada pekan lalu pasar sangat positif akibat kemajuan efektivitas vaksin. Data final vaksin Covid-19 yang dikembangkan Pfizer dan BioNTech menunjukkan efektif 95 persen mencegah virus tersebut.\r\n\r\nModerna juga merilis data awal bahwa vaksinnya menunjukkan efektivitas 94,5 persen, serta Rusia yang mengklaim vaksin eksperimental dari hasil uji coba tahap akhir dengan jumlah pengetesan besar efektif lebih dari 90 persen. \"Vaksin menimbulkan harapan ekonomi dunia akan segera pulih di semester dua 2021,\" ujar Hans.\r\n\r\nBelum lagi, kata Hans, vaksin dari Moderna memberikan harapan yang lebih besar karena dapat tetap stabil pada suhu 36 hingga 46 derajat Fahrenheit. Suhu ini merupakan suhu standar lemari es rumah atau medis dan dapat disimpan hingga 30 hari. Bila suhu negatif 4 derajat Fahrenheit maka vaksin ini dapat disimpan hingga enam bulan.\r\n\r\nSebelumnya, vaksin Pfizer membutuhkan suhu penyimpanan minus 94 derajat Fahrenheit, sehingga akan mempersulit pendistribusian vaksin. Harapkan vaksin yang efektif dan mudah didistribusikan membawa harapan pandemi segera berlalu. Hasil uji coba vaksin beberapa perusahaan di atas akan diserahkan ke Badan Pengawas Obat dan Makanan atau BPOM (FDA) Amerika Serikat untuk disetujui.\r\n\r\n\"Akhir tahun ini Pfizer memperkirakan ada 50 juta dosis vaksin sedangkan Moderna ada 60 juta dosis vaksin tersedia. Vaksin baru tersedia untuk keperluan darurat dan masih menunggu pengesahan untuk pemakaian umum dan masal,\" kata Hans.\r\n\r\nHans melihat pasar saham mengalami kenaikan akibat optimisme vaksin. Hal tersebut terlihat dari aliran dana masuk ke pasar saham. Sektor yang naik terutama bank, tur dan perjalanan, serta komoditas. Selain itu terlihat investor mulai beralih ke saham Asia Tenggara sebagai rotasi global dari sektor bernilai tinggi ke sektor yang bertumbuh. Kenaikan pasar keuangan di Asia Tenggara termasuk Indonesia di tahun depan diperkirakan masih akan terjadi, terutama bila vaksin efektif dan berhasil didistribusikan.\r\n\r\nMeski demikian, di tengah harapan vaksin yang merupakan sentimen positif di jangka menengah panjang, terjadi lonjakan kasus Covid-19 di beberapa Negara. Di Amerika Serikat Minggu ini terjadi kenaikan rata-rata mingguan 26 persen kasus di bandingkan pekan sebelumnya. Hal yang hampir sama terjadi di beberapa Negara Eropa mendorong potensi pertumbuhan ekonomi negatif di kuartal ke 4 tahun 2020.\r\n\r\n\"Peningkatan langkah penguncian ekonomi dapat mengganggu proses pemulihan ekonomi dan menjadi sentimen negatif bagi pasar saham Dunia,\" ujar Hans.\r\n\r\nDi tengah kenaikan kasus positif Covid-19, Hans melihat pasar keuangan akan memperhatikan masalah antara The Fed dan Departemen Keuangan terkait program kredit bantuan pandemi. Menteri Keuangan AS Steven Mnuchin mengatakan program kredit bantuan pandemi sebesar USD 455 miliar yang dialokasikan musim semi lalu di bawah undang-undang CARES harus dikembalikan ke Kongres untuk dialokasikan kembali sebagai hibah untuk perusahaan kecil.\r\n\r\nProgram ini, ujar Hans, dianggap penting bagi bank Sentral dan bila dihentikan akan berdampak tidak baik bagi perekonomian. Ketika kasus infeksi baru Covid-19 meningkat diikuti pembatasan kegiatan sosial dapat mendorong gelombang PHK baru dan perlambatan pemulihan ekonomi.\r\n\r\n\"Hal ini mengecewakan pelaku pasar keuangan yang berhadap The Fed dan Departemen Keuangan dapat bekerja sama mengatasi dampak Pandemi yang akhir-akhir ini meningkat risikonya,\" tuturnya', 'https://statik.tempo.co/data/2020/11/07/id_978895/978895_720.jpg', '2020-11-22', 'Caesar Akbar'),
(15, 'Nyeri Dada Bagian Tengah Sampai Tembus ke Punggung, Waspada Penyakit Ini', 'TEMPO.CO, Jakarta - Keluhan nyeri dada tak bisa diremehkan. Apalagi jika nyeri itu terasa sampai tembus ke bagian punggung. Banyak penyakit yang memicu nyeri dada dan bisa juga disebabkan komplikasi. Sebab itu, penting untuk mengenali bagaimana rasa dan area yang nyeri.\r\n\r\nMengutip laman Sehatq, jika nyeri terasa di bagian tengah dada sampai tembus ke punggung, maka itu indikasi ada masalah pada organ jantung dan paru-paru. Berikut penyebab nyeri dada bagian tengah sampai punggung:\r\n\r\nSerangan jantung\r\nSerangan jantung terjadi saat aliran darah ke jantung tersumbat. Ada dua penyebab yang umum, yakni terjadi pembekuan darah atau terdapat plak di dinding pembuluh darah. Saat pasokan darah ke jantung tersendat, maka dada akan terasa nyeri. Jika sudah berkelanjutan, rasa nyeri itu dapat menjalar ke punggung, bahu, sampai leher.\r\nPerikarditis\r\nPerikarditis berkaitan dengan perkardium atau sebuah kantung berisi cairan yang menyelimuti jantung. Perikardium yang mengalami peradangan disebut dengan perikarditis. Penyebab peradangan pada perikardium adalah infeksi atau penyakit autoimun.\r\nAngin duduk (angina)\r\nSama seperti serangan jantung, angin duduk terjadi ketika jantung tidak mendapatkan pasokan darah yang cukup. Angin duduk dapat terjadi saat seseorang memaksakan diri ketika melakukkan aktivitas tertentu atau bisa juga terjadi saat beristirahat. Angina juga menjadi pertanda seseorang berisiko terkena serangan jantung.\r\nEmboli paru\r\nEmboli paru terjadi saat pembuluh darah di paru-paru tersumbat oleh darah yang membeku dari bagian tubuh lain. Darah beku yang terperangkap di paru-paru ini dapat memicu nyeri dada dan menjalar hingga punggung, bahu, dan leher.\r\nPleurisi\r\nPleura merupakan lapisan membran yang menyelimuti paru-paru dan rongga dada. Pleurisi adalah kondisi saat pleura mengalami peradangan. Pemicunya bermacam-macam, di antaranya infeksi, penyakit autoimun, hingga kanker. Rasa sakit pada pleurisi terjadi karena dua membran tadi bergesekan.\r\nKanker\r\nKanker paru-paru dan kanker payudara dapat memicu nyeri dada bagian tengah sampai punggung. Menurut penelitian, 25 persen pasien kanker paru-paru merasakan nyeri pada punggungnya.', 'https://statik.tempo.co/data/2020/06/11/id_944493/944493_720.jpg', '2020-11-27', 'Rini Kustiani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kamus`
--

CREATE TABLE `tb_kamus` (
  `kamus_id` int(11) NOT NULL,
  `kamus_singkatan` varchar(100) NOT NULL,
  `kamus_kepanjangan` varchar(256) NOT NULL,
  `kamus_pengertian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kamus`
--

INSERT INTO `tb_kamus` (`kamus_id`, `kamus_singkatan`, `kamus_kepanjangan`, `kamus_pengertian`) VALUES
(1, 'abduce', 'abduksi', 'melakukan gerakan menjauhi'),
(2, 'abductor', 'abduktor', 'Otot yang menggerakkan ekstremitas menjauhi garis tengah tubuh. lawan kata adductor (aduktor)'),
(3, 'aberration', 'penyimpangan dari normal', 'Dalam optik, kegagalan untuk memfokuskan pancaran cahaya. Mental a. gangguan mental yang jenisnya tidak spesifik. '),
(4, 'abortus', 'aborsi', 'abortus atau aborsi adalah terhentinya kehamilan sebelum 20 minggu, ketika janin belum bisa bertahan hidup di luar rahim.'),
(5, 'abortus habitualis', 'aborsi berulang', 'abortus habitualis atau aborsi berulang adalah abortus spontan yang terjadi tiga kali berturut turut atau lebih.'),
(6, 'abortus iminen', 'aborsi terancam', 'abortus iminen atau aborsi terancam (threatened abortion) adalah perdarahan selama trimester pertama kehamilan (<20 minggu), dengan atau tanpa kram perut bawah dan tanpa dilatasi serviks.'),
(7, 'Circumcision', 'Sunat', 'Kelamin. Istilah sunat atau khitan, keduanya dipahami dengan baik oleh masyarakat Indonesia, membuang habis kulup pada pria. Sedangkan khitan pada wanita terdapat banyak variasinya'),
(8, 'Dementia', 'Demensia', 'Otak. Demensia atau pikun. Proses kepikunan berlangsung bertahun-tahun, berbeda dengan Alzheimer yang prosesnya cepat. Sekarang ini belum ditemukan klinik khusus mengenai demensia, yang ada adalah klinik lansia dan yang berperan adalah dokter SpPD (Spesialis Penyakit Dalam).'),
(9, 'Dialysis', 'Cuci darah', 'Ginjal. Istilah cuci darah untuk gagal ginjal telah umum digunakan di Indonesia, dibandingkan dialisa dan dialisis. Saat ini di Jakarta yang sibuk telah ada beberapa klinik yang buka 24 jam untuk cuci darah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user_email`, `user_password`, `user_nama`) VALUES
('akbar.rozaaq036@gmail.com', '123456', 'Akbar Rozaaq Arda'),
('danny@gmail.com', '123456', 'Danny Prihandoko'),
('nanda@gmail.com', '123456', 'Nanda Tri Yaswan'),
('ucup@gmail.com', '123456', 'ucup');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indeks untuk tabel `tb_kamus`
--
ALTER TABLE `tb_kamus`
  ADD PRIMARY KEY (`kamus_id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_kamus`
--
ALTER TABLE `tb_kamus`
  MODIFY `kamus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
