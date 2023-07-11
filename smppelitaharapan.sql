-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2023 pada 17.53
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smppelitaharapan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `status_hub_anak` varchar(20) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `status_ortu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
(2, 2, 2, 'Ayah', 'Kandung', 'Hidup'),
(3, 3, 3, 'Ibu', 'Kandung', 'Meninggal'),
(4, 4, 5, 'Ibu', 'Kandung', 'Aktif'),
(5, 6, 7, 'Ayah', 'Kandung', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jurusan`) VALUES
(1, 'VII', 'Vocal Group'),
(2, 'VII', 'Cerpen Puisi'),
(3, 'VII', 'SAINS'),
(4, 'VIII', 'Vocal Group'),
(5, 'VIII', 'Cerpen Puisi'),
(6, 'VIII ', 'SAINS'),
(7, 'IX', 'Vocal Group');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ortu`
--

CREATE TABLE `ortu` (
  `id` int(10) NOT NULL,
  `nik` int(20) DEFAULT NULL,
  `nama_ortu` varchar(50) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `telp` int(20) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `id_active` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ortu`
--

INSERT INTO `ortu` (`id`, `nik`, `nama_ortu`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`, `id_active`) VALUES
(2, 2147483647, 'Amrizal', 'S1 Pendidikan', 'Guru', 823545, 'Keramat', 'laki-laki', 'Islam', 1),
(3, 63042324, 'Mini', 'S1 Pendidikan', 'PNS', 84624241, 'Jl Sentosa', 'perempuan', 'Islam', 1),
(4, 634284936, 'Bayu', 'SLTA/Sederajat', 'Wiraswasta', 8324242, 'Jl.abadi', 'laki-laki', 'Islam', 2),
(5, 632424857, 'Aisyah', 'S2 Manajemen', 'Karyawan Swasta', 83264, 'Jl senang', 'perempuan', 'Islam', 3),
(6, 634264873, 'Amanda', 'S1 Teknik Informatik', 'PNS', 84243172, 'Komp.Griya', 'perempuan', 'Islam', 1),
(7, 2147483647, 'Muhammad', 'S1 Informatika', 'PNS', 2147483647, 'Komp Griya', 'laki-laki', 'Islam', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin`
--

CREATE TABLE `poin` (
  `id` int(10) NOT NULL,
  `nama_poin` varchar(20) DEFAULT NULL,
  `bobot` int(20) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poin`
--

INSERT INTO `poin` (`id`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 'Datang terlambat', 5, 'pelanggaran', 'Aktif'),
(2, 'Tidak rapi', 5, 'pelanggaran', 'Aktif'),
(3, 'Menikah', 100, 'Pelanggaran', 'Aktif'),
(4, 'Membuang sampah semb', 5, 'Pelanggaran', 'Aktif'),
(5, 'Mencoret Tembok', 5, 'Pelanggaran', 'Aktif'),
(6, 'Melompat Pagar', 10, 'Pelanggaran', 'Aktif'),
(7, 'Membawa HP', 20, 'Pelanggaran', 'Aktif'),
(8, 'Memalsu Raport', 25, 'Pelanggaran', 'Aktif'),
(9, 'Merokok', 25, 'Pelanggaran', 'Aktif'),
(10, 'Tauran', 75, 'Pelanggaran', 'Aktif'),
(11, 'Berjudi', 75, 'Pelanggaran', 'Aktif'),
(12, 'Siswa Teladan', 35, 'Prestasi', 'Aktif'),
(13, 'Juara Kelas 1', 20, 'Prestasi', 'Aktif'),
(14, 'Juara Kelas 2', 20, 'Prestasi', 'Aktif'),
(15, 'Juara Kelas 3', 20, 'Prestasi', 'Aktif'),
(16, 'Juara Provinsi', 50, 'Prestasi', 'Aktif'),
(17, 'Juara Nasional', 75, 'Prestasi', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `siswa_id` int(20) DEFAULT NULL,
  `point_id` int(10) DEFAULT NULL,
  `wali_id` int(10) DEFAULT NULL,
  `ortu_id` int(10) DEFAULT NULL,
  `kelas_id` int(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tingkat_kelas` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id`, `siswa_id`, `point_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`, `tingkat_kelas`) VALUES
(3, 4, 1, 2, 2, 1, '2023-07-11', '2', 'Aktif', '2'),
(6, 2, 2, 1, 4, 2, '2023-02-01', '2', 'Aktif', '4'),
(10, 5, 3, 3, 3, 3, '2002-10-02', '2', 'Aktif', '2'),
(18, 7, 12, 4, 7, 7, '2023-06-02', '6', 'Aktif', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) NOT NULL,
  `nis` int(22) DEFAULT NULL,
  `nisn` int(70) DEFAULT NULL,
  `nama_siswa` varchar(70) DEFAULT NULL,
  `nik` int(15) DEFAULT NULL,
  `tmpt_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  `telp` int(12) DEFAULT NULL,
  `hp` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tmpt_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, 1234, 32451, 'Azijah', 634231423, 'Marabahan', '2001-06-02', 'Perempuan', 'Jl.Keramat', 2147483647, '0823345334', 'Aktif'),
(2, 1235, 63424, 'Gagan', 632312345, 'Banjarmasin', '2002-10-02', 'Laki-laki', 'Jl suho', 842132, '053424', 'Aktif'),
(3, 3242, 48292, 'Nadia', 634254732, 'Sei Lirik', '2001-10-01', 'Perempuan', 'Jl Bahagia', 83234241, '08324324', 'Aktif'),
(4, 3745, 92442, 'Adimas', 634857182, 'Bandung', '2005-02-04', 'Laki-laki', 'Jl Jatuh Cinta', 82424534, '082424242', 'Aktif'),
(5, 6472, 84924, 'Maulida', 634829481, 'Banjarmasin', '2004-02-01', 'Perempuan', 'Jl Senang', 832424, '082424', 'Alumni'),
(6, 1238, 42419, 'Apritansyah', 642934810, 'Marabahn', '2002-10-11', 'Laki-laki', 'Jl.Sukaduka', 842424, '08323132', 'Aktif'),
(7, 1236, 32593, 'Mega', 632481742, 'Surabaya', '2001-02-04', 'Perempuan', 'Jl.Sehat', 842424523, '083435324', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `status`) VALUES
(2, 'Azijah', '12345678', 1, 'Aktif'),
(3, 'Admin', 'Admin', 1, 'Aktif'),
(4, 'kunzah', '2110010410', 1, 'Aktif'),
(5, 'Nzah', '061002', 2, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(10) NOT NULL,
  `nik` int(22) DEFAULT NULL,
  `nama` varchar(70) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `telp` int(12) DEFAULT NULL,
  `matpel` varchar(20) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `nik`, `nama`, `jenis_kelamin`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, 867, 'Neny', 'Perempuan', 'S1 Pendidikan', 876628374, 'BILOGI', 'Jl.Atak Ibransyah', 'tidak aktif'),
(2, 876, 'Kenan', 'laki-laki', 'S1 Pendidikan', 823242, 'Olahraga', 'Jl Soromo', 'aktif'),
(3, 843, 'Putri', 'Perempuan', 'S1 Pendidikan', 83424245, 'Agama', 'Jl Kenanga', 'aktif'),
(4, 742, 'Surya', 'Laki-laki', 'S1 Pendidikan', 832442424, 'Matematika', 'Jl Kembang Goyang', 'aktif'),
(5, 857, 'Geo', 'Laki-laki', 'S1 Pendidikan', 859242543, 'Fisika', 'Kom Semangat dalam', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`),
  ADD UNIQUE KEY `ortu_id` (`ortu_id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`),
  ADD UNIQUE KEY `point_id` (`point_id`),
  ADD UNIQUE KEY `wali_id` (`wali_id`),
  ADD UNIQUE KEY `ortu_id` (`ortu_id`),
  ADD UNIQUE KEY `kelas_id` (`kelas_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hubungan_ibfk_2` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_ibfk_3` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_ibfk_4` FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_ibfk_5` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `semester_ibfk_6` FOREIGN KEY (`point_id`) REFERENCES `poin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
