-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2019 at 01:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinjaman`
--

-- --------------------------------------------------------

--
-- Table structure for table `fintech`
--

CREATE TABLE `fintech` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kunjungan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `syarat` text COLLATE utf8mb4_unicode_ci,
  `angsuran` text COLLATE utf8mb4_unicode_ci,
  `bunga` text COLLATE utf8mb4_unicode_ci,
  `agunan` text COLLATE utf8mb4_unicode_ci,
  `biaya_awal` double(120,8) DEFAULT NULL,
  `bungaPerHari` double(8,8) DEFAULT NULL,
  `bungaPerBulan` double(8,8) DEFAULT NULL,
  `min_pinjaman` int(11) DEFAULT NULL,
  `max_pinjaman` bigint(20) DEFAULT NULL,
  `tenor_minimal` int(5) DEFAULT NULL,
  `tenor_maksimal` int(6) NOT NULL,
  `case` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fintech`
--

INSERT INTO `fintech` (`id`, `kunjungan`, `name`, `syarat`, `angsuran`, `bunga`, `agunan`, `biaya_awal`, `bungaPerHari`, `bungaPerBulan`, `min_pinjaman`, `max_pinjaman`, `tenor_minimal`, `tenor_maksimal`, `case`, `created_at`, `updated_at`) VALUES
(1, '1242240', 'danarupiah.id', 'Syarat pinjaman DanaRupiah diwajibkan adalah Warga Negara Indonesia, dan diharuskan berusia diatas 18 tahun.', 'Rp. 1000.000 pengembalian 1bulan: Rp 1.009.863, 3bulan: Rp 1.039.890, 6bulan: Rp 1.089.753, 12bulan: Rp 1.089.753', '(Biaya proses data 0.3%, biaya penilaian risiko 0.362%,bunga 0.038%, biaya komisi 0.1%)', 'Tanpa Agunan', 0.00762000, 0.00038000, NULL, 10000, 7000000000, 30, 0, '1', NULL, NULL),
(2, '1033376', 'kreditpintar.com', 'Ajukan pinjaman kapan saja dengan KTP dan smartphone Anda, tidak perlu jaminan lain.', 'mengambil pinjaman selama 91 hari seharga 2.300.000 rupiah, setelah dikurangi biaya pra-servis, jumlah pembayaran totalnya adalah Rp 2.300.000 + (Rp 2.300.000 x 0,165% x 91 hari ) = Rp2.645.100.', '0,165% per hari', 'Tanpa Agunan', NULL, 0.00165000, NULL, NULL, 2000000, 28, 90, '0', NULL, NULL),
(3, '854514', 'rupiahcepat.co.id', 'cukup dengan KTP Anda dapat mengajukan pinjaman uang.', 'limit pinjaman sebesar Rp 3.000.000 dengan jangka waktu 1 tahun, setelah dikurangi biaya pengelolaan maka total bunga yang harus dibayar: 3.000.000*0.0006*365= Rp 657.000', 'Suku Bunga (maksimum) : 24% pertahun', 'Tanpa Agunan', NULL, 0.00060000, NULL, 600000, 5000000, 91, 366, '0', NULL, NULL),
(4, '334454', 'danacepat.com', 'umur 18 - 50 tahun yang memiliki pekerjaan tetap dan nomor telepon yang aktif digunakan', 'Pinjaman selama 30hari: Biaya Layanan 0.2%/hari, Biaya Ketetapan Resiko Rp 60,000/satu kali,Biaya Administrasi Rp 42,500/satu kali,Biaya Penagihan Rp 35,000/satu kali,Biaya Proses Data dan Penilaian Reisko Rp 42,500/satu kali', '0.14%/hari', 'Tanpa Agunan', 180000.00000000, 0.00340000, NULL, 1000000, 1000000, 7, 30, '0', NULL, NULL),
(5, '289947', 'tunaiku.com', 'Berusia 21 - 55 tahun. Memiliki rekening atas nama pribadi yang telah berjalan selama 3 bulan atau lebih. Memiliki penghasilan. Warga Negara Indonesia (WNI). Minimum masa kerja 3 bulan', 'Biaya adminitrasi: Rp. 540.000,Biaya pelunasan lebih awal: Rp. 0,Biaya keterlambatan: Rp. 100.000,Bunga keterlambatan: 0,16% per hari', '3,00% - 3,00%', 'Tanpa Agunan', 540000.00000000, NULL, 0.03000000, 2000000, 20000000, 183, 609, '0', NULL, NULL),
(6, '278044', 'julofinance.com', 'Umur 21 - 60thn, Berdomisili di Jabodetabek, Bandung, Surabaya, Manado, Bali, Kalimantan Timur, dan Kep. Riau, Pegawai Negeri / Swasta, Berpenghasilan min Rp 2.000.000 / bulan, Menggunakan smartphone \r\npribadi', 'Pinjaman uang Rp 8 juta - Cicilan per bulan Rp 1.6 juta (6 bulan) atau Rp 1.9 juta (5 bulan), Pinjaman uang Rp 2 juta - Cicilan per bulan Rp 413 ribu (6 bulan) atau Rp 746 ribu (3 bulan)', '4% per bulannya', 'Tanpa Agunan', NULL, NULL, 0.04000000, 2000000, 8000000, 122, 183, '0', NULL, NULL),
(7, '241716', 'cekaja.com', 'Warga Negara Indonesia (WNI), kemudian Anda juga sudah harus berusia minimum 21 tahun dan maksimum 55 tahun. Terakhir, Anda juga harus memilki penghasilan tetap per bulan minimal Rp2,5 juta per bulan, namun jumlah penghasilan ini akan berbeda jika berdomisili di luar wilayah Jabodetabek.', 'Pinjaman Rp. 1000.000 selama 1thn cicilan perbulan Rp. 98.233 bunga 1,49%', '10% hingga 23%', 'Tanpa Agunan', NULL, NULL, 0.01490000, 5000000, 300000000, 0, 0, '0', NULL, NULL),
(8, '230638', 'pinjamango.com', 'Usia 18-55 tahun, memiliki KTP, rekening bank, Nomor HP tetap, penghasilan yang stabil.', 'Tenor: Tenor = 91-120 hari,Bunga: Maksimal 15%/tahun (tidak ada biaya lainnya). Contoh simulasi transaksi:Jika memilih jumlah pinjaman 1,200.000 dengan suku bunga 15% per tahun, maka jumlah yang ditransfer adalah: 1,200.000*(1-15%) = 1,020.000', '0.0176%/Hari', 'Tanpa Agunan', NULL, 0.00017600, NULL, NULL, 2000000, 91, 120, '0', NULL, NULL),
(9, '206102', 'uangme.com', 'Warga negara Indonesia berusia 21 tahun keatas, Memiliki KTP atau Paspor,Memiliki nomor ponsel Indonesia, Memiliki rekening bank lokal, Memiliki dokumen pekerjaan/usaha', 'meminjam Rp. 600.000 dengan durasi 90 hari dan membayar tepat waktu, Maka total pembayaran Anda sejumlah Rp. 600.000 + (Rp. 600.000*(0.27% + 0.06%)* 91) = Rp. 780.180', 'Bunga harian: 0.06%, Biaya layanan harian: 0.27%', 'Tanpa Agunan', NULL, 0.00330000, NULL, 400000, 4000000, 92, 183, '0', NULL, NULL),
(10, '162789', 'do-it.id', 'KTP yang berlaku, nomor telepon selular, akun bank.', 'Pinjaman Rp 1.200.000, kami akan membebankan biaya bunga 1.4%, total pembayaran ketika jatuh tempo sebesar, Rp 1.216.800', '0,8% per hari.', 'Tanpa Agunan', NULL, 0.00800000, NULL, 60000000, 100000000, 91, 104, '0', NULL, NULL),
(11, '128017', 'finmas.co.id', 'KTP yang berlaku', 'Pinjamanan: Rp 1,000,000. Bunga (3 bulan): Rp 300,000, Biaya proses: Rp 50,000. Sehingga total tagihan yang harus dibayarkan adalah Rp 1,350,000', '0.31% per hari dan 9,95% perbulan', 'Tanpa Agunan', 50000.00000000, NULL, 0.09950000, 500000, 1000000, 30, 61, '0', NULL, NULL),
(12, '106915', 'indodana.com', 'Usia minimum 21 tahun dan maksimum 50 tahun. Memiliki rekening atas nama pribadi yang telah berjalan selama 3 bulan atau lebih.Memiliki penghasilan tetap dan telah bekerja minimal 3 bulan.Warga Negara Indonesia (WNI)', 'Jika Anda meminjam Rp 8 juta, cicilan yang harus dibayarkan tiap bulan berdasarkan tenor yang dipilih:3 bulan: Rp 3.415.000,- /bln, 4 bulan: Rp 2.657.000,- /bln, 5 bulan: Rp 2.204.500,- /bln, 6 bulan: Rp 1.904.000,- /bln', 'Suku bunga 96% per tahun', 'Tanpa Agunan', NULL, NULL, 0.08000000, 500000, 1000000, 0, 0, '0', NULL, NULL),
(13, '85994', 'uangteman.com', 'KTP dan foto diri terbaru, pinjaman bisa cair dalam 24 jam', 'Pinjaman cicilan dengan jumlah Rp4.000.000, tenor 2 bulan (±60 hari). Cicilan per bulan: Rp2.720.000, Pinjaman cicilan dengan jumlah Rp5.000.000, tenor 3 bulan (±90 hari). Cicilan per bulan: Rp2.416.667', '0,9% per hari', 'Tanpa Agunan', NULL, 0.00900000, NULL, 1000000, 3000000, 30, 0, '0', NULL, NULL),
(14, '80505', 'kreditplusteknologi.id', 'Berusia 21 tahun. Memiliki rekening atas nama pribadi. Memiliki penghasilan. Warga Negara Indonesia (WNI). NPWP, BPJS', 'Pinjaman yang diberikan paling banyak Rp5.000.000. Bunga per hari 0.1% - 0.4% Tenor pinjaman 30 hari dan 3 bulan', '0,1 - 0,4 % per hari', 'Tanpa Agunan', NULL, 0.00400000, NULL, 600000, 5000000, 0, 0, '0', NULL, NULL),
(15, '69451', 'cashcepat.id', 'Warga Negara Indonesia yang berusia diatas 18 tahun, Memiliki identitas kewarganegaraan KTP, Memiliki handphone pintar dan berpekerjaan stabil, atau memilliki kemampuan membayar', 'Batas pinjaman yang diajukan : Rp 1,000,000, Pinjaman yang disetujui bisa lebih rendah misalnya: Rp 800,000. Bila Pinjaman yang disetujui 1 juta, Total yang akan cair: 1 juta pula. Total yang harus dibayarkan (saat jatuh tempo) dgn bunga tertinggi = 1,000,000+240,000=1,240,000', '8%-13.1% dari total pinjaman', 'Tanpa Agunan', NULL, NULL, 0.13100000, 500000, 1500000, 7, 21, '0', NULL, NULL),
(16, '68767', 'pinjamduit.co.id', 'WNI  dan memiliki KTP, Memiliki nomor telepon yang dapat diverifikasi, Memiliki penghasilan tetap', 'Jumlah Pinjaman: Rp. 700,000.- dan Rp. 1,400,000.Durasi pinjaman adalah 30 hari, Biaya 0.8% per hari', '0,8% per hari', 'Tanpa Agunan', NULL, 0.00800000, NULL, 600000, 1200000, 30, 0, '0', NULL, NULL),
(17, '57658', 'kreditcepat.co.id', 'Berdomisili dan berkerja di Indonesia, Harus berumur 21 sampai 55 tahun, Memiliki E-KTP, Memiliki dan dapat membuktikan pendapatan bulanan (slip gaji)', 'pinjaman yang diajukan Rp. 1.000.000 dan batas tenor 30 hari.  jumlah pinjaman yang harus dibayarkan totalnya Rp. 1.240.000', '1%/ hari', 'Tanpa Agunan', NULL, 0.01000000, NULL, 300000, 8000000, 30, 0, '0', NULL, NULL),
(18, '35692', 'dompetkilat.co.id', 'berusia 18 tahun, memiliki ID dan bukti penghasilan,', '', '0,1% per hari', 'Tanpa Agunan', NULL, 0.00100000, NULL, 500000, 2000000, 30, 0, '0', NULL, NULL),
(19, '', 'Kredivo', 'Berstatus Warga Negara Indonesia (WNI), Berusia antara 18 sampai 60 tahun. Berdomisili di Jabodetabek, Bandung, Surabaya, Semarang, Palembang, Medan, Bali, Yogyakarta, Solo, Makassar, Malang, Sukabumi, Cirebon. Berpenghasilan minimal Rp 3.000.000 per bulan', 'Rp2.000.000 selama 12 bulan, dengan suku bunga 2,95% per bulan. Maka yang harus dibayarkan per bulannya sejumlah Rp206.710, dan total pembayaran yang dilakukan sebesar Rp2.480.450', '2,95% per bulan', 'Tanpa Agunan', NULL, NULL, 0.02950000, 1500000, 30000000, 91, 365, '0', NULL, NULL),
(20, '', 'Akulaku', '● Syarat Pengajuan Data Pekerjaan Karyawan Informasi data pekerjaan, ● Syarat Pengajuan Data Pekerjaan Wiraswasta Foto NPWP, foto toko/kantor/situs usaha dan foto SIUP/TDP/Rekening koran/ Kwitansi penjualan, ● Syarat Pengajuan Data Pekerjaan Transportasi Online Screenshot Profile Lengkap & Trip History yang ada di aplikasi Transportasi Online tempat bekerja', '8 hari Rp535.000,-15 hari Rp550.000,-22 hari Rp565.000,-30 hariRp585.000,', '1% perhari. denda keterlambatan 1% perharinya', 'Tanpa Agunan', NULL, 0.01000000, NULL, 500000, 2000000, 30, 0, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_04_29_043538_create_fintech_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fintech`
--
ALTER TABLE `fintech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
