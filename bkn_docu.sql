/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : bkn_docu

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 14/08/2020 15:26:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (5, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (6, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for tb_bidang
-- ----------------------------
DROP TABLE IF EXISTS `tb_bidang`;
CREATE TABLE `tb_bidang`  (
  `id` int(1) NOT NULL,
  `nm_bidang` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_bidang
-- ----------------------------
INSERT INTO `tb_bidang` VALUES (1, 'INFORMASI KEPEGAWAIAN');
INSERT INTO `tb_bidang` VALUES (2, 'MUTASI DAN STATUS KEPEGAWAIAN');
INSERT INTO `tb_bidang` VALUES (3, 'PENGANGKATAN DAN PENSIUN');
INSERT INTO `tb_bidang` VALUES (4, 'PENGEMBANGAN DAN SUPERVISI KEPEGAWAIAN');

-- ----------------------------
-- Table structure for tb_instansi
-- ----------------------------
DROP TABLE IF EXISTS `tb_instansi`;
CREATE TABLE `tb_instansi`  (
  `id` int(5) NOT NULL,
  `nm_instansi` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kategori_id` int(1) NULL DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `no_telp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `website` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_instansi
-- ----------------------------
INSERT INTO `tb_instansi` VALUES (1010, 'Kementerian Koordinator Bidang Politik, Hukum dan Keamanan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (1020, 'Kementerian Koordinator Bidang Perekonomian', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (1030, 'Kementerian Koordinator Bidang Pembangunan Manusia dan Kebudayaan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (1040, 'Kementerian Koordinator Bidang Kemaritiman', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2000, 'Kementerian Riset, Teknologi, dan Pendidikan Tinggi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2010, 'Kementerian Koperasi dan Usaha Kecil dan Menengah', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2020, 'Kementerian Lingkungan Hidup', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2040, 'Kementerian Badan Usaha Milik Negara', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2050, 'Kementerian Pemberdayaan Perempuan dan Perlindungan Anak', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2060, 'Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2100, 'Kementerian Pemuda dan Olahraga', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2110, 'Kementerian Perumahan Rakyat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (2120, 'Kementerian Desa, Pembangunan Daerah Tertinggal dan Transmigrasi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3001, 'Kementerian Dalam Negeri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3002, 'Kementerian Luar Negeri', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3003, 'Kementerian Pertahanan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3004, 'Kementerian Hukum dan Hak Asasi Manusia', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3005, 'Kementerian Keuangan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3006, 'Kementerian Pertanian', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3008, 'Kementerian Energi dan Sumber Daya Mineral', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3009, 'Kementerian Perhubungan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3010, 'Kementerian Pendidikan dan Kebudayaan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3011, 'Kementerian Kesehatan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3012, 'Kementerian Agama', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3013, 'Kementerian Ketenagakerjaan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3014, 'Kementerian Sosial', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3015, 'Kementerian Lingkungan Hidup dan Kehutanan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3016, 'Kementerian Kelautan dan Perikanan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3018, 'Kementerian Komunikasi dan Informatika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3019, 'Kementerian Perdagangan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3020, 'Kementerian Perindustrian', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3021, 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (3022, 'Kementerian Pariwisata', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4001, 'Kementerian Sekretariat Negara', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4002, 'Kejaksaan Agung', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4003, 'Badan Intelijen Negara', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4004, 'Sekretariat Jenderal MPR', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4005, 'Setjen DPA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4006, 'Sekretariat Jenderal DPR RI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4007, 'Mahkamah Agung RI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4008, 'Badan Pemeriksa Keuangan ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4009, 'Setjen WANTANNAS', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4010, 'Lembaga Sandi Negara', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4011, 'Badan Kepegawaian Negara', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4012, 'Lembaga Administrasi Negara ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4013, 'Lembaga Penerbangan dan Antariksa Nasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4014, 'Lembaga Ilmu Pengetahuan Indonesia', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4015, 'Badan Tenaga Nuklir Nasional ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4016, 'Badan Pusat Statistik ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4017, 'Kementerian Perencanaan Pembangunan Nasional/Bappenas', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4018, 'Arsip Nasional Republik Indonesia ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4019, 'Badan Informasi Geospasial', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4020, 'Badan Kependudukan dan Keluarga Berencana Nasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4021, 'Badan Koordinasi Penanaman Modal', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4022, 'Badan Pengkajian dan Penerapan Teknologi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4023, 'Badan Pengawasan Keuangan dan Pembangunan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4024, 'Kementerian Agraria dan Tata Ruang/Badan Pertanahan Nasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4025, 'Perpustakaan Nasional RI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4027, 'Badan Standardisasi Nasional ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4028, 'Badan Pengawas Tenaga Nuklir ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4031, 'Badan Pengawas Obat dan Makanan ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4032, 'Lembaga Ketahanan Nasional RI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4033, 'Kepolisian Negara', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4034, 'MABES TNI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4035, 'Badan Meteorologi, Klimatologi dan Geofisika', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4036, 'Sekretariat Kabinet ', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4037, 'Sekretariat Presiden', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4038, 'Sekretariat Wakil Presiden', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4039, 'Sekretariat Militer', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4040, 'Badan Narkotika Nasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4041, 'Setjen Komisi Pemilihan Umum', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4043, 'Badan Nasional Penanggulangan Bencana', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4044, 'Setjen KOMNAS HAM', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4045, 'Badan Pengusahaan Kawasan Perdagangan Bebas dan Pelabuhan Bebas Batam', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4046, 'Kepaniteraan dan Sekretariat Jenderal Mahkamah Konstitusi RI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4047, 'Setjen Komisi Pemberantasan Korupsi', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4048, 'Setjen KORPRI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4049, 'Sekretariat Jenderal Komisi Yudisial', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4050, 'Setjen Dewan Perwakilan Daerah', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4051, 'Badan Nasional Penempatan Perlindungan TKI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4052, 'Badan Keamanan Laut RI', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4053, 'Badan SAR Nasional', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4054, 'Lembaga Kebijakan Pengadaan Barang/Jasa Pemerintah', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4055, 'Pusat Pelaporan dan Analisis Transaksi Keuangan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4056, 'Ombudsman Republik Indonesia', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4057, 'TELEVISI REPUBLIK INDONESIA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4058, 'RADIO REPUBLIK INDONESIA', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4059, 'Badan Nasional Pengelola Perbatasan', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4060, 'Badan Nasional Penanggulangan Terorisme', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4061, 'Setjen Komisi Pengawas Persaingan Usaha', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (4062, 'Badan Pengawas Pemilihan Umum', 1, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5100, 'Pemerintah Aceh', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5101, 'Pemerintah Kab. Aceh Besar', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5102, 'Pemerintah Kab. Pidie', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5103, 'Pemerintah Kab. Aceh Utara', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5104, 'Pemerintah Kab. Aceh Timur', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5105, 'Pemerintah Kab. Aceh Selatan', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5106, 'Pemerintah Kab. Aceh Barat', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5107, 'Pemerintah Kab. Aceh Tengah', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5108, 'Pemerintah Kab. Aceh Tenggara', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5109, 'Pemerintah Kab. Simeulue', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5110, 'Pemerintah Kab. Bireuen', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5111, 'Pemerintah Kab. Aceh Singkil', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5112, 'Pemerintah Kab. Aceh Barat Daya', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5113, 'Pemerintah Kab. Gayo Lues', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5114, 'Pemerintah Kab. Aceh Tamiang', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5115, 'Pemerintah Kab. Nagan Raya', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5116, 'Pemerintah Kab. Aceh Jaya', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5117, 'Pemerintah Kab. Bener Meriah', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5118, 'Pemerintah Kab. Pidie Jaya', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5171, 'Pemerintah Kota Sabang', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5172, 'Pemerintah Kota Banda Aceh', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5173, 'Pemerintah Kota Langsa', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5174, 'Pemerintah Kota Lhokseumawe', 2, NULL, NULL, NULL, NULL);
INSERT INTO `tb_instansi` VALUES (5175, 'Pemerintah Kota Subulussalam', 2, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_level
-- ----------------------------
DROP TABLE IF EXISTS `tb_level`;
CREATE TABLE `tb_level`  (
  `id` int(3) NOT NULL,
  `nm_level` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_level
-- ----------------------------
INSERT INTO `tb_level` VALUES (1, 'SUPER ADMIN');
INSERT INTO `tb_level` VALUES (2, 'USER INSTANSI');
INSERT INTO `tb_level` VALUES (3, 'USER KANREG');
INSERT INTO `tb_level` VALUES (4, 'MONITOR');

-- ----------------------------
-- Table structure for tb_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `tb_pegawai`;
CREATE TABLE `tb_pegawai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` int(18) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `usul_id` int(10) NULL DEFAULT NULL,
  `status_id` int(3) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `pickup_by` int(20) NULL DEFAULT NULL COMMENT 'user.id (petugas BKN)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_pegawai
-- ----------------------------
INSERT INTO `tb_pegawai` VALUES (1, 2147483647, 'Irwansyah Putra', 1, NULL, NULL, NULL);
INSERT INTO `tb_pegawai` VALUES (2, 2147483647, 'Andi Matupelasa', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_pelayanan
-- ----------------------------
DROP TABLE IF EXISTS `tb_pelayanan`;
CREATE TABLE `tb_pelayanan`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `bidang_id` int(1) NULL DEFAULT NULL,
  `nm_pelayanan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_pelayanan
-- ----------------------------
INSERT INTO `tb_pelayanan` VALUES (1, 2, 'PINDAH INSTANSI DALAM PROVINSI');
INSERT INTO `tb_pelayanan` VALUES (2, 2, 'KARPEG');
INSERT INTO `tb_pelayanan` VALUES (3, 2, 'KARIS/KARSU');
INSERT INTO `tb_pelayanan` VALUES (4, 3, 'JANDA/DUDA TASPEN');
INSERT INTO `tb_pelayanan` VALUES (5, 3, 'MUTASI KELUARGA TASPEN (AII PENS)');
INSERT INTO `tb_pelayanan` VALUES (6, 3, 'PENETAPAN NIP');

-- ----------------------------
-- Table structure for tb_status
-- ----------------------------
DROP TABLE IF EXISTS `tb_status`;
CREATE TABLE `tb_status`  (
  `id` int(3) NOT NULL,
  `nm_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_status
-- ----------------------------
INSERT INTO `tb_status` VALUES (1, 'ENTRI BARU');
INSERT INTO `tb_status` VALUES (2, 'DITERIMA BKN');
INSERT INTO `tb_status` VALUES (3, 'ACC');
INSERT INTO `tb_status` VALUES (4, 'BTL');
INSERT INTO `tb_status` VALUES (5, 'TMS');

-- ----------------------------
-- Table structure for tb_tiket
-- ----------------------------
DROP TABLE IF EXISTS `tb_tiket`;
CREATE TABLE `tb_tiket`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `no_tiket` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `no_pengantar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pelayanan_id` int(5) NULL DEFAULT NULL,
  `instansi_id` int(5) NULL DEFAULT NULL,
  `status_id` int(3) NULL DEFAULT NULL,
  `users.id` int(20) NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tiket
-- ----------------------------
INSERT INTO `tb_tiket` VALUES (1, '256489', '154/bkpsdm/2020', 1, 5173, 1, 1, '2020-08-14 10:34:49');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `level_id` int(2) NULL DEFAULT NULL,
  `bidang_id` int(2) NULL DEFAULT NULL,
  `instansi_id` int(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Deddy Hendra', NULL, '197505042006041002', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2020-08-13 05:51:58', '2020-08-13 05:51:58', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
