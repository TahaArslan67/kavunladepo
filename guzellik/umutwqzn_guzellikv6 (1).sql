-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 31 Oca 2024, 04:03:02
-- Sunucu sürümü: 10.5.23-MariaDB-cll-lve
-- PHP Sürümü: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `umutwqzn_guzellikv6`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `abone`
--

CREATE TABLE `abone` (
  `id` int(11) NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `site_title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_keyword` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_meta` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_author` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `logo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `footer_logo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `favicon` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `footer_copyright` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `renk` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `renk2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `header` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `footer` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_title`, `site_description`, `site_keyword`, `site_meta`, `site_author`, `logo`, `footer_logo`, `favicon`, `footer_copyright`, `renk`, `renk2`, `header`, `footer`) VALUES
(1, 'Güzellik Salonu V6', 'Güzellik Salonu V6', 'Güzellik Salonu V6', NULL, 'Güzellik Salonu V6', '835989206-guzellik-salonu-v6.png', '486435976-guzellik-salonu-v6.png', '456572399-klinik-v5.png', 'Güzellik Salonu V6', '#6e4ff6', '#3c6917', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `dil`) VALUES
(21, 'enpara', '1', '<ul>\r\n	<li><strong>Ad Soyad :</strong>&nbsp;UMUT TAMİRCİ</li>\r\n	<li><strong>Para Birimi :</strong>&nbsp;TL</li>\r\n	<li><strong>Hesap No :</strong>&nbsp;0000000000000</li>\r\n	<li><strong>IBAN :&nbsp;</strong>TR00000000000000000000</li>\r\n</ul>\r\n', '#', '0', '968-.png', 21),
(22, 'Papara', '2', '<ul>\r\n	<li><strong>Ad Soyad :</strong>&nbsp;UMUT TAMİRCİ</li>\r\n	<li><strong>Para Birimi :</strong>&nbsp;TL</li>\r\n	<li><strong>Hesap No :</strong>&nbsp;44444444444</li>\r\n	<li><strong>IBAN : TR</strong>44444444444444444444444</li>\r\n</ul>\r\n', '#', '0', '140-.png', 23);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `beadcrumb`
--

CREATE TABLE `beadcrumb` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `beadcrumb`
--

INSERT INTO `beadcrumb` (`id`, `adi`, `resim`, `durum`) VALUES
(1, 'NEDEN BİZ', '42-neden-biz.webp', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blog_yorum`
--

CREATE TABLE `blog_yorum` (
  `id` int(11) NOT NULL,
  `yorum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `uye` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `blog_yorum`
--

INSERT INTO `blog_yorum` (`id`, `yorum`, `uye`, `tarih`, `urun_id`, `durum`, `email`) VALUES
(8, 'harika bir yazı', 'umut tamirci', '27.11.2022', 71, '0', 'umut@gmail.com'),
(9, 'harika bir yazı', '', '27.11.2022', 72, '0', 'umuttamirci37@gmail.com'),
(7, 'harika bir  yazı olmuş, teşekkürler', 'umut tamirci', '27.11.2022', 70, '0', 'umuttamirci@gmail.com'),
(10, 'harika bir yazı olmuş', 'umut tamirci', '19.12.2022', 77, '1', 'umut@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolge_kategori`
--

CREATE TABLE `bolge_kategori` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `bolge_kategori`
--

INSERT INTO `bolge_kategori` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`) VALUES
(1, 'Anadolu Yakası', '1', '679-.jpg', '0', '', 'on', '', 'anadolu-yakasi', 'bolge_kategori', '24.09.2021', '24.09.2021');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolge_yorum`
--

CREATE TABLE `bolge_yorum` (
  `id` int(11) NOT NULL,
  `adi` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `mesaj` text DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `durum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `bolge_yorum`
--

INSERT INTO `bolge_yorum` (`id`, `adi`, `email`, `mesaj`, `bid`, `durum`) VALUES
(3, 'wqewqeqewq', 'demo@demo.com', 'wqewqewqeqwewqeq', 17, 0),
(4, 'test', 'demo@demo.com', 'Apple today named eight app and game developers receiving an Apple Design Award, each one selected for being thoughtful and creative. Apple Design Award winners bring distinctive new ideas to life and demonstrate deep mastery of Apple technology. The apps spring up from developers large and small, in every part of the world and provide users with new ways of working, creating, and playing.\r\n\r\n', 17, 0),
(5, 'test', 'demo@demo.com', 'Apple today named eight app and game developers receiving an Apple Design Award, each one selected for being thoughtful and creative. Apple Design Award winners bring distinctive new ideas to life and demonstrate deep mastery of Apple technology. The apps spring up from developers large and small, in every part of the world and provide users with new ways of working, creating, and playing.\r\n\r\n', 17, 1),
(6, 'test', 'demo@demo.com', 'Apple today named eight app and game developers receiving an Apple Design Award, each one selected for being thoughtful and creative. Apple Design Award winners bring distinctive new ideas to life and demonstrate deep mastery of Apple technology. The apps spring up from developers large and small, in every part of the world and provide users with new ways of working, creating, and playing.\r\n\r\n', 17, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `destek`
--

CREATE TABLE `destek` (
  `yid` int(11) DEFAULT NULL,
  `uye` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `konu` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesaj` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `cevap` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `ctarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `destek`
--

INSERT INTO `destek` (`yid`, `uye`, `konu`, `mesaj`, `tarih`, `cevap`, `id`, `ctarih`) VALUES
(NULL, '64', 'script aldım indirme linki bozuk', 'merhabalar pastane scriptini aldım ve indirme linki bozuk yardımcı olurmusunuz', '21.09.2022', ' link düzeltildi', 5, '21.09.2022');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dil`
--

CREATE TABLE `dil` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `inceleyin` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `iletisim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tumunuokuyun` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tumunugor` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hizmetler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ekibimiz` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `projeler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tumu` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sikcasorulansorular` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `istatikler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `gonder` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `blog` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `yorumlar` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `bizimle` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `medya` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urunbilgileri` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `satinal` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sepeteekle` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sepetim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urunresmi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urunadi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urunadet` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urunfiyat` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `islem` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `siparisbilgileri` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `siparisitamamla` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `bankahesaplari` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `referanslar` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kataloglar` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kurumsal` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `galeri` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `video` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `iletisimbilgileri` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sosyalmedya` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urunler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `anasayfa` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hizliiletisim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adsoyad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `konu` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesaj` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `alan` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `anadil` int(11) DEFAULT NULL,
  `digerbloglar` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `etiketler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `blogyorumlari` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `yorumatabilirsiniz` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `subeler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `teklifal` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kariyer` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `calismak` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `departman` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `muhasebe` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `satis` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `pazarlama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `operasyon` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onyazi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kariyer_aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aboneol` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ekipmanlar` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyatteklif` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hizliteklif` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ozgecmis` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `abone_a` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `footer_h` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `neden` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `digerhizmetler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `v_baslik` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `v_link` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `a_madde` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `b_madde` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `c_madde` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `d_madde` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim1` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `dil`
--

INSERT INTO `dil` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `inceleyin`, `iletisim`, `tumunuokuyun`, `tumunugor`, `hizmetler`, `ekibimiz`, `projeler`, `tumu`, `sikcasorulansorular`, `istatikler`, `gonder`, `blog`, `yorumlar`, `banner`, `bizimle`, `medya`, `urunbilgileri`, `satinal`, `sepeteekle`, `sepetim`, `urunresmi`, `urunadi`, `urunadet`, `urunfiyat`, `islem`, `siparisbilgileri`, `siparisitamamla`, `bankahesaplari`, `referanslar`, `kataloglar`, `kurumsal`, `galeri`, `video`, `iletisimbilgileri`, `sosyalmedya`, `urunler`, `anasayfa`, `hizliiletisim`, `adsoyad`, `email`, `telefon`, `konu`, `mesaj`, `alan`, `anadil`, `digerbloglar`, `etiketler`, `blogyorumlari`, `yorumatabilirsiniz`, `subeler`, `teklifal`, `kariyer`, `calismak`, `departman`, `muhasebe`, `satis`, `pazarlama`, `operasyon`, `onyazi`, `kariyer_aciklama`, `aboneol`, `ekipmanlar`, `fiyatteklif`, `hizliteklif`, `ozgecmis`, `abone_a`, `footer_h`, `neden`, `adres`, `digerhizmetler`, `v_baslik`, `v_link`, `a_madde`, `b_madde`, `c_madde`, `d_madde`, `resim1`, `resim2`) VALUES
(21, 'TR', '1', NULL, NULL, '0', '25-.png', 'İnceleyin', 'İletişim', 'Tümünü Okuyun', 'Tümünü Gör', 'Hizmetler', 'Ekibimiz', 'Projeler', 'Tümü', 'Sıkça Sorulan Sorular', NULL, 'Gönder', 'Blog', 'Müşteri Yorumları', 'Yardıma mı ihtiyacın var?', 'Bizimle İletişime Geçebilirsiniz', 'Medya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Banka Hesapları', 'Referanslar', 'Kataloglar', 'Kurumsal', 'Galeri', 'Video', 'İletişim Bilgileri', 'Sosyal Medya', 'Ürünler', 'Anasayfa', 'Hızlı İletişim', 'Ad soyad', 'Email', 'Telefon', 'Konu', 'Mesaj', 'Lütfen bütün alanları doldurun.', 0, 'Diğer Bloglar', 'Etiketler', 'Blog Yorumları', 'Yorum Atabilirsiniz', NULL, 'Teklif Al', NULL, 'Bizimle Çalışmak İster Misiniz?', NULL, NULL, NULL, NULL, NULL, NULL, '<p style=\"text-align:justify\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'Abone Ol', NULL, 'Fiyat Teklifi İste', 'Hızlı Teklif', NULL, 'Bildirimlerden Haberdar Olmak İçin Abone Olabilirsiniz', 'Buraya Kısa Bir Açıklama Metni Gelecek', 'Neden Bizi Seçmelisiniz?', 'Adres', 'Diğer Hizmetler', 'Tanıtım Videomuzu İzleyin', 'https://www.youtube.com/embed/XxrnEYGTDDY', 'It was popularised with release sheet containing passages.', 'It was popularised with release sheet containing passages.', 'It was popularised with release sheet containing passages.', 'It was popularised with release sheet containing passages.', '798-.jpg', '552-.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ekibimiz`
--

CREATE TABLE `ekibimiz` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `ekibimiz`
--

INSERT INTO `ekibimiz` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `dil`) VALUES
(22, 'Umut Tamirciiiiii', '3', '743-umut-tamirciiiiii.webp', NULL, 'web\r\nbbbbb', '0', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Losdsdsdrem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'umut-tamirciiiiii', 'ekibimiz', '22.12.2022', '27.10.2023', NULL),
(23, 'Umut Tamirci', '4', '528-umut-tamirci.webp', NULL, 'uuu\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'umut-tamirci', 'ekibimiz', '22.12.2022', '27.10.2023', NULL),
(24, 'umut tamirci', '3', '248-umut-tamirci.webp', NULL, 'web', '0', '', 'umut-tamirci', 'ekibimiz', '28.08.2023', '27.10.2023', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `galeri`
--

INSERT INTO `galeri` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `dil`) VALUES
(18, 'Galeri 1', '1', NULL, NULL, '0', '331-galeri-1.webp', NULL),
(19, 'Galeri 2', '02', NULL, NULL, '0', '632-galeri-2.webp', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `etiket` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `hit`, `dil`, `etiket`, `title`, `description`) VALUES
(77, 'Örnek Blog 1', '3', '26-ornek-blog-1.webp', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '0', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'ornek-blog-1', 'haberler', '14.12.2022', '26.10.2023', NULL, NULL, NULL, NULL, NULL),
(78, 'Örnek Blog 2', '4', '811-ornek-blog-2.webp', NULL, '   Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'ornek-blog-2', 'haberler', '14.12.2022', '26.10.2023', NULL, NULL, NULL, NULL, NULL),
(79, 'Örnek Blog 3', '5', '686-ornek-blog-3.webp', NULL, '   Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'ornek-blog-3', 'haberler', '14.12.2022', '26.10.2023', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `video` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `footer` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`id`, `adi`, `resim`, `durum`, `video`, `aciklama`, `footer`) VALUES
(1, 'NEDEN BİZ', '157-.jpg', NULL, 'https://www.youtube.com/watch?v=Get7rqXYrbQ', 'Lorem mmmipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minimLorem mmmipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim\r\n', 'FOOTER AÇIKLAMA GELECEKTİR');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetbolgeleri`
--

CREATE TABLE `hizmetbolgeleri` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `hizmetbolgeleri`
--

INSERT INTO `hizmetbolgeleri` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`) VALUES
(17, 'Umut tamirci', '2', '694-.jpg', '1', 'There are many variations of passages of Lorem Ipsum available, but majority have suffered alteration.\r\n\r\n', 'on', '<p>Apple today named eight app and game developers receiving an Apple Design Award, each one selected for being thoughtful and creative. Apple Design Award winners bring distinctive new ideas to life and demonstrate deep mastery of Apple technology. The apps spring up from developers large and small, in every part of the world and provide users with new ways of working, creating, and playing.</p>\r\n', 'umut-tamirci', 'hizmetbolgeleri', '27.08.2021', '24.09.2021'),
(18, 'Photoshop', '3', '248-.jpg', '1', 'There are many variations of passages of Lorem Ipsum available, but majority have suffered alteration.\r\n\r\n', 'on', '<p>Apple today named eight app and game developers receiving an Apple Design Award, each one selected for being thoughtful and creative. Apple Design Award winners bring distinctive new ideas to life and demonstrate deep mastery of Apple technology. The apps spring up from developers large and small, in every part of the world and provide users with new ways of working, creating, and playing.</p>\r\n', 'photoshop', 'hizmetbolgeleri', '27.08.2021', '24.09.2021');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hizmetler`
--

CREATE TABLE `hizmetler` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `etiket` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `hizmetler`
--

INSERT INTO `hizmetler` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `hit`, `dil`, `title`, `description`, `etiket`, `icon`) VALUES
(30, 'Hizmet Tanıtım 3', '3', '725-hizmet-tanitim-3.webp', NULL, '    Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'hizmet-tanitim-3', 'hizmetler', '19.09.2022', '26.10.2023', NULL, 21, NULL, NULL, NULL, '535-.png'),
(31, 'Hizmet Tanıtım 4', '4', '913-hizmet-tanitim-4.webp', NULL, '   Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'hizmet-tanitim-4', 'hizmetler', '19.09.2022', '26.10.2023', NULL, 23, NULL, NULL, NULL, '583-.png'),
(38, 'Hizmet Tanıtım 5', '03', '984-hizmet-tanitim-5.webp', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', 'hizmet-tanitim-5', 'hizmetler', '16.10.2023', '26.10.2023', NULL, NULL, NULL, NULL, NULL, 'resim-yok');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisimbilgileri`
--

CREATE TABLE `iletisimbilgileri` (
  `id` int(11) NOT NULL,
  `telefon1` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email1` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres1` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `google_maps` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `whatsapp` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `wp_text` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `wp_renk` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `iletisimbilgileri`
--

INSERT INTO `iletisimbilgileri` (`id`, `telefon1`, `telefon2`, `email1`, `email2`, `adres1`, `adres2`, `google_maps`, `whatsapp`, `wp_text`, `wp_renk`) VALUES
(1, '0539 596 53 57', '0539 596 53 57', 'info@utwebtasarim.com', 'info@utwebtasarim.com', 'İstanbul / Avrupa', 'İstanbul / Avrupa', '<iframe src=\"https://www.moogle.com/maps/embed?pb=!1m18!1m12!1m3!1d194472.76994098714!2d49.6898090642131!3d40.39473651945914!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307d6bd6211cf9%3A0x343f6b5e7ae56c6b!2sBaku!5e0!3m2!1sen!2saz!4v1693988065772!5m2!1sen!2saz\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iletisimler`
--

CREATE TABLE `iletisimler` (
  `id` int(11) NOT NULL,
  `adsoyad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `konu` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesaj` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `iletisimler`
--

INSERT INTO `iletisimler` (`id`, `adsoyad`, `konu`, `telefon`, `email`, `mesaj`, `tarih`) VALUES
(29, 'sdsd', 'sdsd', '45454545', 'sdsds@sdsd.sd', 'sdsdsdsd', '06.09.2023'),
(17, '45', 'ASD', '32', 'dasdasd@gmail.com', 'ASDA', '21.08.2023'),
(18, 'sdsd', 'sds', '5545454', 'sdsdsd@sdsd.sd', 'sdsdsd', '29.08.2023'),
(19, 'umut', 'asdas', '05395965387', 'can@canstorm.com', 'wqeewq', '29.08.2023'),
(20, 'umut', 'asdas', '05395965387', 'can@canstorm.com', 'wqewqe', '29.08.2023'),
(21, 'umut', 'asdas', '05395965387', 'can@canstorm.com', 'wqewqe', '29.08.2023'),
(22, 'umut', 'asdas', '05395965387', 'can@canstorm.com', 'wqewqe', '29.08.2023'),
(23, 'umut', 'asdas', '05395965387', 'can@canstorm.com', 'ghjghj', '29.08.2023'),
(24, 'sdsd', 'sdsd', '0705995510', 'sdsd@sdsd.sd', 'sdsdsd', '01.09.2023'),
(25, 'umut', 'asdas', '05395965387', 'demo@demo.com', 'wqeqwe', '02.09.2023'),
(30, 'sxxds', NULL, NULL, 'dsds@sdd.sd', 'sdsdsd', '17.09.2023'),
(27, 'umut', 'asdas', 'qwew', 'umuttamirci37@gmail.com', 'aeqwe', '02.09.2023'),
(28, 'umut', 'asdas', '05395965387', 'can@canstorm.com', 'wqeqw', '02.09.2023'),
(31, 'sdsd', NULL, NULL, 'sdsd@sdsd.sd', 'sdsd', '17.09.2023'),
(32, 'Ad Soyad', NULL, NULL, 'umuttamirci37@gmail.com', 'qweqw', '17.09.2023'),
(33, 'dsds', NULL, NULL, 'sdsdsd@sdsd.sd', 'sdsd', '17.09.2023'),
(34, '', '', '', '', '', '17.09.2023'),
(35, 'hsbshs', '09/08/2023', '5933873', 'hshshs@jdjsj.az', 'sjjshshshshshs', '18.09.2023'),
(36, 'sdsd', NULL, NULL, 'khalilsoy@gmail.com', 'sdsd', '19.09.2023'),
(37, '11', NULL, NULL, 'sdsd@sdsd.sd', '11', '19.09.2023'),
(38, 'test', 'sdsdsds', '0705995510', 'sdsd@sdsd.sd', 'dsdsd', '28.09.2023'),
(39, 'sdsdsd', 'sdsd', '+994705995510', 'sdsdsd@sdsd.sd', 'sdsdsd', '28.09.2023'),
(40, 'umut tamirci', 'asdas', '05395965387', 'demo@demo.com', 'qwewq', '28.09.2023'),
(41, '', '', '', '', '', '29.09.2023');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `istatik`
--

CREATE TABLE `istatik` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `istatik`
--

INSERT INTO `istatik` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `dil`) VALUES
(8, 'Mutlu Müşteri', '1', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>\r\n', '2015', '0', '293-.png', 21),
(9, 'Projeler', '2', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>\r\n', '600', '0', '63-.png', 21),
(10, 'Ödül', '3', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>\r\n', '4200', '0', '241-.png', 21),
(11, 'Devam Eden Projeler', '4', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>\r\n', '1903', '0', '859-.png', 21);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `izinler`
--

CREATE TABLE `izinler` (
  `id` int(11) NOT NULL,
  `urun_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `istatik_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ref_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hizmet_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `haber_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sayfa_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `slider_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sss_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `galeri_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ekip_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `yorum_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `iletisim_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `en` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `bresim_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `siparis_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `musteri_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `destek_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onecikan_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `banner_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `paytr_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `banka_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `proje_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `proje_kategori_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `katalog_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sube_durum` int(11) DEFAULT NULL,
  `paket_durum` int(11) DEFAULT NULL,
  `modal_durum` int(11) DEFAULT NULL,
  `abone_durum` int(11) DEFAULT NULL,
  `paymax_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `shopier_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `netgsm_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `iyzico_durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `izinler`
--

INSERT INTO `izinler` (`id`, `urun_durum`, `kategori_durum`, `istatik_durum`, `ref_durum`, `hizmet_durum`, `haber_durum`, `sayfa_durum`, `slider_durum`, `sss_durum`, `galeri_durum`, `video_durum`, `ekip_durum`, `yorum_durum`, `iletisim_durum`, `en`, `bresim_durum`, `siparis_durum`, `musteri_durum`, `destek_durum`, `onecikan_durum`, `banner_durum`, `paytr_durum`, `banka_durum`, `proje_durum`, `proje_kategori_durum`, `katalog_durum`, `sube_durum`, `paket_durum`, `modal_durum`, `abone_durum`, `paymax_durum`, `shopier_durum`, `netgsm_durum`, `iyzico_durum`) VALUES
(1, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `katalog`
--

CREATE TABLE `katalog` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `pdf` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `katalog`
--

INSERT INTO `katalog` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `pdf`, `dil`) VALUES
(21, 'Katalog 1', '1', '', '#', '0', '419-.jpg', '90-.pdf', NULL),
(22, 'Katalog 2', '2', '', '#', '0', '5-.jpg', '450-.pdf', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `site_mail` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_sifre` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_host` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `site_mail_port` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `gonderen_mail` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `mail`
--

INSERT INTO `mail` (`id`, `site_mail`, `site_mail_sifre`, `site_mail_host`, `site_mail_port`, `gonderen_mail`) VALUES
(1, '#', '#', '#', '#', '#');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mail_dogrula`
--

CREATE TABLE `mail_dogrula` (
  `id` int(11) NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kod` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `mail_dogrula`
--

INSERT INTO `mail_dogrula` (`id`, `email`, `kod`, `durum`) VALUES
(1, 'hilelicocuk5@gmail.com', '3614681', '0'),
(2, 'hilelicocuk5@gmail.com', '3268034', '1'),
(3, 'hilelicocuk5@gmail.com', '2660658', '1'),
(4, 'gfddfgf@hgfhfghfghfgh.com', '1943492', '1'),
(5, 'asdasas@gasd.com', '278121', '1'),
(6, 'hilelicocuk5@gmail.com', '3282518', '0'),
(7, 'info.ugurcm@gmail.com', '2564768', '0'),
(8, 'umutcanva@gmail.com', '3077226', '1'),
(9, 'gbozbuga', '1309054', '1'),
(10, 'gbozbuga@gmail.com', '854931', '0'),
(11, 'ozarpamehmetakif42@gmail.com', '695421', '1'),
(12, 'klarendon1@gmail.com', '1241274', '0'),
(13, 'mutaokut4774@gmail.com', '3618813', '1'),
(14, 'mutaokut@gmail.com', '1880339', '1'),
(15, 'sungurbeyy97@gmail.com', '2013649', '0'),
(16, 'fakenomemo@gmail.com', '2237392', '1'),
(17, 'Ahmetdemir50125012@gmail.com', '1310092', '0'),
(18, 'test.1234@gmail.com', '751794', '1'),
(19, 'asda@dsad.com', '3313542', '1'),
(20, 'n0th1ng@rape.lol', '2982932', '1'),
(21, 'p3rd1t10n@protonmail.com', '3880559', '1'),
(22, 'fdasfasdas@gmail.com', '1591638', '1'),
(23, 'addndata@gmail.com', '2713732', '0'),
(24, 'adobestockhesab52@gmail.com', '2709960', '0'),
(25, 'hakanuralss@gmail.com', '870857', '1'),
(26, 'enesakcaren@gmail.com', '3659674', '1'),
(27, 'omerryuksel63@gmail.com', '1714378', '0'),
(28, 'mehmetmasa123@gmail.com', '3499543', '0'),
(29, 'roxgrup@gmail.com', '3503463', '0'),
(30, 'cresitc@gmail.com', '1321429', '1'),
(31, 'apocalipsee@hotmail.com', '3807425', '0'),
(32, 'aaa@gmail.com', '1273300', '1'),
(33, 'xxx@gmail.com', '339070', '1'),
(34, 'enes.kucuktas@edittasarim.com', '2539931', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(11) DEFAULT NULL,
  `acilir` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sekme` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`id`, `adi`, `sira`, `url`, `durum`, `acilir`, `kategori`, `sekme`) VALUES
(1, 'Anasayfa', '01', './', 0, '1', '0', 0),
(2, 'Kurumsal', '02', '#', 0, '0', '0', 0),
(21, 'Galeri', '04', 'galeri', 0, '1', '0', 0),
(20, 'İletişim', '06', 'iletisim', 0, '1', '0', 0),
(26, 'Ürünler', '04', '#', 0, '0', '0', 0),
(18, 'Blog', '04', 'blog', 0, '1', '0', 0),
(17, 'Hizmet Tanıtım 1', '01', 'hizmet-tanitim-3', 0, '1', '16', 0),
(15, 'Hakkımızda', '01', 'hakkimizda', 0, '1', '2', 0),
(16, 'Hizmetler', '03', '#', 0, '0', '0', 0),
(23, 'Tüm Hizmetler', '03', 'hizmetler', 0, '1', '16', 0),
(24, 'S.S.S', '06', 'sss', 0, '1', '0', 0),
(25, 'Ekibimiz', '03', 'ekibimiz', 0, '1', '2', 0),
(27, 'Ürün Kategori 1', '01', 'kategori-1', 0, '1', '26', 0),
(28, 'Kategori 2', '02', 'kategori-3', 0, '1', '26', 0),
(29, 'Ürün Kategori 3', '03', 'kategori-3', 0, '1', '26', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `modal`
--

CREATE TABLE `modal` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `modal`
--

INSERT INTO `modal` (`id`, `adi`, `resim`, `durum`) VALUES
(1, '       ', '794-modal.webp', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `netgsm`
--

CREATE TABLE `netgsm` (
  `id` int(11) NOT NULL,
  `no` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `gonderici` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `mesaj` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `netgsm`
--

INSERT INTO `netgsm` (`id`, `no`, `sifre`, `gonderici`, `mesaj`, `durum`) VALUES
(1, '', '', '', 'Tema başarıyla satın alındı, hesabım bölümünden indirebilirsiniz.', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odeme_secenek`
--

CREATE TABLE `odeme_secenek` (
  `id` int(11) NOT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `odeme_secenek`
--

INSERT INTO `odeme_secenek` (`id`, `tur`) VALUES
(1, 'paymax');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `onecikan`
--

CREATE TABLE `onecikan` (
  `id` int(11) NOT NULL,
  `urunler` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `onecikan`
--

INSERT INTO `onecikan` (`id`, `urunler`) VALUES
(1, '117,116,115,111');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paketler`
--

CREATE TABLE `paketler` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `videolinki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `panel` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `indir` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `stok` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `kur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `paketler`
--

INSERT INTO `paketler` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `fiyat`, `linki`, `videolinki`, `hit`, `panel`, `indir`, `stok`, `dil`, `kur`) VALUES
(111, 'Ürün1', '1', '572-urun1.webp', '14', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun1', 'urunler', '27.08.2022', '22.12.2022', '249', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'tl'),
(115, 'Ürün 2', '2', '895-urun-2.webp', '16', '    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-2', 'urunler', '19.09.2022', '22.12.2022', '350', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'tl'),
(116, 'Ürün 3', '3', '350-urun-3.webp', '16', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-3', 'urunler', '19.09.2022', '22.12.2022', '450', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'tl'),
(117, 'Ürün 4', '4', '484-urun-4.webp', '17', '    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-4', 'urunler', '19.09.2022', '22.12.2022', '450', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'tl'),
(118, 'Ürün 5', '5', '8894240-urun-5.webp', '14', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-5', 'urunler', '22.12.2022', NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'tl'),
(120, 'Ürün 6', '6', '9556453-urun-6.webp', '14', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-6', 'urunler', '22.12.2022', NULL, '562', NULL, NULL, NULL, NULL, NULL, NULL, 21, 'tl');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paymax`
--

CREATE TABLE `paymax` (
  `id` int(11) NOT NULL,
  `api_user` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `api_key` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `api_magaza` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `api_hash` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `paymax`
--

INSERT INTO `paymax` (`id`, `api_user`, `api_key`, `api_magaza`, `api_hash`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `paytr`
--

CREATE TABLE `paytr` (
  `id` int(11) NOT NULL,
  `merchand_id` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `merchand_key` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `merchand_salt` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `paytr`
--

INSERT INTO `paytr` (`id`, `merchand_id`, `merchand_key`, `merchand_salt`) VALUES
(1, '', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projeler`
--

CREATE TABLE `projeler` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `videolinki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `panel` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `indir` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `stok` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `etiket` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `projeler`
--

INSERT INTO `projeler` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `fiyat`, `linki`, `videolinki`, `hit`, `panel`, `indir`, `stok`, `dil`, `title`, `etiket`, `description`) VALUES
(122, 'Proje 2', '2', '224-proje2.webp', '32', '  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p>test</p>\r\n', 'proje-2', 'projeler', '14.12.2022', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(124, 'Proje 1', '1', '354-proje-1.webp', '33', '       Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-1', 'projeler', '14.12.2022', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(125, 'Proje 3', '3', '2229525-proje3.webp', '34', '    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-3', 'projeler', '22.12.2022', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(126, 'Proje 4', '4', '4867461-proje-4.webp', '32', '  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-4', 'projeler', '22.12.2022', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(127, 'Proje 5', '5', '5394603-proje-5.webp', '33', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-5', 'projeler', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(128, 'Proje 7', '7', '7614166-proje-7.webp', '34', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-7', 'projeler', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(129, 'Proje 6', '6', '355-proje-6.webp', '35', '  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-6', 'projeler', '22.12.2022', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL),
(130, 'Proje 8', '8', '6376465-proje-8.webp', '35', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-8', 'projeler', '22.12.2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_kategori`
--

CREATE TABLE `proje_kategori` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `aciklama2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `etiket` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `proje_kategori`
--

INSERT INTO `proje_kategori` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `hit`, `dil`, `aciklama2`, `resim2`, `title`, `etiket`, `description`) VALUES
(32, 'Proje Kategori 1', '1', '478-proje-kategori-1.jpg', '0', NULL, '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-kategori-1', 'proje_kategori', '22.12.2022', '22.12.2022', NULL, 21, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'resim-yok', NULL, NULL, NULL),
(33, 'Proje Kategori 2', '2', '954-proje-kategori-2.jpg', '0', NULL, '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-kategori-2', 'proje_kategori', '22.12.2022', '22.12.2022', NULL, 21, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'resim-yok', NULL, NULL, NULL),
(34, 'Proje Kategori 3 ', '3', '129-proje-kategori-3.jpg', '0', NULL, '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-kategori-3', 'proje_kategori', '22.12.2022', '22.12.2022', NULL, 21, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'resim-yok', NULL, NULL, NULL),
(35, 'Proje Kategori 4', '4', '690-proje-kategori-4.jpg', '0', NULL, '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-kategori-4', 'proje_kategori', '22.12.2022', '22.12.2022', NULL, 21, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'resim-yok', NULL, NULL, NULL),
(36, 'Proje Kategori 5', '5', '8039108-proje-kategori-5.jpg', '0', NULL, '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-kategori-5', 'proje_kategori', '22.12.2022', NULL, NULL, 21, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'resim-yok', NULL, NULL, NULL),
(37, 'Proje Kategori 6', '6', '13319-proje-kategori-6.jpg', '0', NULL, '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'proje-kategori-6', 'proje_kategori', '22.12.2022', NULL, NULL, 21, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'resim-yok', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rapor`
--

CREATE TABLE `rapor` (
  `id` int(11) NOT NULL,
  `mesaj` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urun` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `rapor`
--

INSERT INTO `rapor` (`id`, `mesaj`, `urun`, `tarih`) VALUES
(1, 'sitenin demosu çalışmıyor.', 'Teknoloji Scripti V2', '13.07.2022'),
(2, 'Demo Sürümü Çalışmıyor.\r\n', 'Kamera Sistemleri Scripti V1', '27.07.2022'),
(3, '', 'Eticaret Scripti 12 (Mağaza Açma)', '28.07.2022'),
(4, '', 'Kişisel Script V8', '07.08.2022'),
(5, 'yönetim panelleri çalışmıyor.', 'Nakliye Scripti V5', '12.08.2022');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `referanslar`
--

CREATE TABLE `referanslar` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `referanslar`
--

INSERT INTO `referanslar` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `dil`) VALUES
(24, 'UT Web Tasarım', '2', NULL, NULL, '0', '727-.png', 21);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sayfalar`
--

CREATE TABLE `sayfalar` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `etiket` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `sayfalar`
--

INSERT INTO `sayfalar` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `hit`, `dil`, `title`, `description`, `etiket`) VALUES
(9, 'Hakkımızda', '1', '240-hakkimizda.webp', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ut lorem tortor. Sed eleifend dolor vitae lacinia vehicula. Pellentesque odio ligula, tristique nec ultrices id, ultrices eu eros. Vivamus convallis pharetra mi a pulvinar. Vestibulum sed lacus a mi dignissim suscipit sed auctor nunc. Curabitur ullamcorper, odio ut malesuada feugiat, augue sem vulputate augue, non consequat turpis purus nec eros. Donec non tincidunt mauris. Morbi porttitor tincidunt neque ut tristique. Vivamus congue sollicitudin ligula, at interdum justo malesuada eget. Nam interdum elit sit amet orci egestas blandit. Praesent et enim condimentum, facilisis lacus nec, vehicula metus. Quisque pharetra non metus eu suscipit. Sed ultricies magna id ex luctus, ac imperdiet elit aliquet. Fusce vehicula scelerisque nibh, at tincidunt nisl.</p>\r\n\r\n<p style=\"text-align:justify\">Nulla aliquam risus ex, sit amet euismod urna sagittis ut. Sed ac mi vel leo maximus scelerisque. Integer porttitor sodales est non lobortis. Cras consectetur nunc diam, et dapibus odio condimentum eu. Nam eu hendrerit metus. Donec tincidunt aliquam diam non gravida. Proin nec egestas nisl, sed sagittis est.</p>\r\n\r\n<p style=\"text-align:justify\">Quisque sit amet mi a lectus posuere sagittis ac id velit. Proin tempor, leo at laoreet imperdiet, lacus massa sollicitudin ante, non pretium massa orci eu nibh. Sed eget dolor eget augue consequat dapibus. Nullam lacinia iaculis turpis eget vulputate. Donec dapibus enim sed leo convallis efficitur. Integer suscipit bibendum lacus, ut iaculis dolor mollis id. Phasellus vestibulum mauris urna, quis congue felis laoreet in.</p>\r\n\r\n<p style=\"text-align:justify\">Duis bibendum lorem in erat sodales, eu fringilla lectus mollis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In mollis magna eu consectetur gravida. Proin augue eros, fermentum sed lorem sed, vulputate ultrices velit. Sed condimentum purus enim, id blandit leo luctus in. Duis luctus vulputate neque ac congue. Integer sit amet augue vel erat interdum tincidunt. Etiam sollicitudin posuere dui vitae facilisis. Duis et dignissim enim, id pellentesque nulla. Donec sagittis arcu sed quam vehicula fringilla.</p>\r\n\r\n<p style=\"text-align:justify\">Cras vehicula nibh vel mattis auctor. Integer iaculis semper laoreet. Praesent rhoncus pretium turpis, nec ornare mi. Aenean pulvinar metus a tellus aliquam, volutpat consectetur dui luctus. Sed at ultrices velit. Suspendisse potenti. In hendrerit vestibulum nisl, nec pulvinar enim malesuada id. Aliquam facilisis sed elit a commodo. Sed congue, nibh eu elementum fringilla, orci arcu imperdiet odio, nec tincidunt lectus turpis a mi.', NULL, '<p style=\"text-align:justify\"><strong>Loremsdsdsd Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'hakkimizda', 'sayfalar', '15.07.2021', '28.09.2023', 3517, 21, NULL, NULL, NULL),
(18, 'KVKK', '3', 'resim-yok', NULL, '  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'kvkk', 'sayfalar', '19.09.2022', '14.12.2022', NULL, 21, NULL, NULL, NULL),
(20, 'Biz Kimiz?', '3', '136-biz-kimiz.webp', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'biz-kimiz', 'sayfalar', '22.12.2022', '27.01.2023', NULL, 21, '', ' ', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(11) NOT NULL,
  `urun_id` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `uye` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adet` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `urun_id`, `ip`, `tarih`, `uye`, `fiyat`, `adet`) VALUES
(263, '111', '31.223.58.11', NULL, NULL, '249', 1),
(262, '116', '176.88.120.243', NULL, NULL, '450', 1),
(261, '117', '176.235.166.218', NULL, NULL, '450', 1),
(260, '117', '176.235.166.218', NULL, NULL, '450', 1),
(259, '111', '176.88.120.243', NULL, NULL, '249', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopier`
--

CREATE TABLE `shopier` (
  `id` int(11) NOT NULL,
  `kullanici` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `shopier`
--

INSERT INTO `shopier` (`id`, `kullanici`, `sifre`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urun` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eposta` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adsoyad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `uye` int(11) DEFAULT NULL,
  `paytr` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sepetid` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `tarih`, `urun`, `eposta`, `telefon`, `adsoyad`, `durum`, `fiyat`, `uye`, `paytr`, `sepetid`, `adres`) VALUES
(146, '19.09.2022', '111', 'umuttamirci37@gmail.com', '052312312', 'umut tamirci', '1', '249', 64, '931285184', '251', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `icon` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `dil`, `icon`) VALUES
(18, 'Güzellik Salonu Scripti', '2', 'Lorem ipsum', 'iletisim', '0', '199-guzellik-salonu-scripti.webp', NULL, 'resim-yok'),
(19, 'Mobil Uyumlu Script', '02', 'Bu scripti satın almak için bizimle iletişime geçebilirsiniz!', 'iletisim', '1', '5-mobil-uyumlu-script.webp', NULL, 'resim-yok');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sosyalmedya`
--

CREATE TABLE `sosyalmedya` (
  `id` int(11) NOT NULL,
  `instagram` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `youtube` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linkedin` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `pinterest` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telegram` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `sosyalmedya`
--

INSERT INTO `sosyalmedya` (`id`, `instagram`, `facebook`, `youtube`, `linkedin`, `pinterest`, `telegram`, `twitter`) VALUES
(1, 'https://instagram.com/', 'https://facebook.com/', 'https://youtube.com/', 'https://linkedin.com/', 'https://pinteres.com/', 'https://t.me/', 'https://twitter.com/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sss`
--

CREATE TABLE `sss` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `sss`
--

INSERT INTO `sss` (`id`, `adi`, `sira`, `aciklama`, `durum`, `dil`) VALUES
(25, 'Soru 1', '01', '<p>sdsdsdLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis augue ex, sed convallis ligula lobortis sed. Sed quis malesuada ex, eget ultrices eros. Proin ullamcorper aliquam nulla, quis sodales sem blandit eget. Nunc mauris metus, ullamcorper at erat nec, sollicitudin dignissim ex. Nulla quam justo, fringilla in felis eget, sagittis commodo nulla. Etiam feugiat iaculis quam eget dictum. Maecenas vel diam blandit, vestibulum justo a, suscipit risus. Nam faucibus posuere lacus. Etiam dignissim tempor elit quis eleifend. Donec at mi neque. Aenean cursus efficitur odio eu porttitor. Aliquam varius pulvinar lectus, quis gravida odio scelerisque at. Sed posuere ipsum pellentesque, facilisis ligula blandit, ultricies lacus.</p>\r\n\r\n<p>Vivamus at dui sed libero elementum posuere et porttitor leo. Suspendisse vitae tellus a lacus efficitur ornare et non erat. Aenean rutrum in risus nec eleifend. Aliquam dictum dui ante, et tincidunt turpis lobortis vel. In euismod eros vel porta tempor. Pellentesque id tincidunt urna. Fusce eleifend finibus felis eget rhoncus. In hac habitasse platea dictumst. In aliquam, lorem non ultrices pellentesque, tellus turpis convallis purus, id varius metus augue ac nisi.</p>\r\n', '0', NULL),
(26, 'Soru 2', '2', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam venenatis augue ex, sed convallis ligula lobortis sed. Sed quis malesuada ex, eget ultrices eros. Proin ullamcorper aliquam nulla, quis sodales sem blandit eget. Nunc mauris metus, ullamcorper at erat nec, sollicitudin dignissim ex. Nulla quam justo, fringilla in felis eget, sagittis commodo nulla. Etiam feugiat iaculis quam eget dictum. Maecenas vel diam blandit, vestibulum justo a, suscipit risus. Nam faucibus posuere lacus. Etiam dignissim tempor elit quis eleifend. Donec at mi neque. Aenean cursus efficitur odio eu porttitor. Aliquam varius pulvinar lectus, quis gravida odio scelerisque at. Sed posuere ipsum pellentesque, facilisis ligula blandit, ultricies lacus.</p>\r\n\r\n<p>Vivamus at dui sed libero elementum posuere et porttitor leo. Suspendisse vitae tellus a lacus efficitur ornare et non erat. Aenean rutrum in risus nec eleifend. Aliquam dictum dui ante, et tincidunt turpis lobortis vel. In euismod eros vel porta tempor. Pellentesque id tincidunt urna. Fusce eleifend finibus felis eget rhoncus. In hac habitasse platea dictumst. In aliquam, lorem non ultrices pellentesque, tellus turpis convallis purus, id varius metus augue ac nisi.</p>\r\n', '0', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subeler`
--

CREATE TABLE `subeler` (
  `id` int(11) NOT NULL,
  `telefon1` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email1` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email2` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adres` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `maps` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `durum` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `subeler`
--

INSERT INTO `subeler` (`id`, `telefon1`, `telefon2`, `email1`, `email2`, `adres`, `maps`, `adi`, `dil`, `durum`) VALUES
(1, '90 212 663 0 444', '', 'istanbul@compasslog.com', '', 'Yeşilköy Mh. Atatürk Cd. EGS Business Park B2 Blok Kat:2 No:139-140 Bakırköy İstanbul', 'https://goo.gl/maps/imu3Bn99ERzfpo7Y6', 'İstanbul', 21, 0),
(2, '90 232 404 7 555', '', 'izmir@compasslog.com', '', 'Akdeniz Mh. Şehit Fethi Bey Cd. 99 Basamak İş Merkezi No:43/109 Konak İzmir', 'https://goo.gl/maps/eYn9bFSphS3S6P416', 'İzmir', 21, 0),
(3, '90 212 663 0 444', '', 'sakarya@compasslog.com', '', 'Arabacıalanı Mh. Mehmet Akif Ersoy Cd. Work Inn İş Merkezi No:33/210 Serdivan Sakarya', 'https://goo.gl/maps/xj8KyHrUWZNDTdPf6', 'Sakarya', 21, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `fiyat` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `videolinki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `panel` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `indir` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `stok` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `kur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `etiket` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `fiyat`, `linki`, `videolinki`, `hit`, `panel`, `indir`, `stok`, `dil`, `kur`, `title`, `description`, `etiket`) VALUES
(111, 'Ürün1', '1', '639-urun1.webp', '17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun1', 'urunler', '27.08.2022', '27.10.2023', '249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'Ürün 2', '2', '236-urun-2.webp', '17', '    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-2', 'urunler', '19.09.2022', '27.10.2023', '350', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'Ürün 3', '3', '198-urun-3.webp', '17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-3', 'urunler', '19.09.2022', '27.10.2023', '450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'Ürün 4', '4', '923-urun-4.webp', '17', '    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-4', 'urunler', '19.09.2022', '27.10.2023', '450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'Ürün 5', '5', '390-urun-5.webp', '17', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-5', 'urunler', '22.12.2022', '27.10.2023', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'Ürün 6', '6', '574-urun-6.webp', '17', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '0', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n', 'urun-6', 'urunler', '22.12.2022', '27.10.2023', '562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_img`
--

CREATE TABLE `urun_img` (
  `id` int(11) NOT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `urun_img`
--

INSERT INTO `urun_img` (`id`, `urun_id`, `img`, `tur`) VALUES
(60, 7, '1626350494-60f0239e1527a.jpg', 'urun_kategori'),
(248, 28, '1662042808-6310c2b8e4cec.jpg', 'sayfalar'),
(309, 70, '1670987372-63993e6c6738d.jpg', 'haberler'),
(310, 70, '1670987395-63993e837b3fd.jpg', 'haberler'),
(311, 70, '1670987458-63993ec20ac3f.jpg', 'haberler'),
(312, 70, '1670989553-639946f1319f3.jpg', 'haberler'),
(317, 76, '1671039420-639a09bc3aa40.jpg', 'haberler'),
(318, 76, '1671039420-639a09bc3c9ba.jpg', 'haberler'),
(319, 76, '1671039420-639a09bc3fe78.jpg', 'haberler'),
(320, 76, '1671039420-639a09bc4979d.jpg', 'haberler'),
(356, 29, '1693300049-64edb551d12b7.png', 'hizmetler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategori`
--

CREATE TABLE `urun_kategori` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `dil` int(11) DEFAULT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `etiket` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `urun_kategori`
--

INSERT INTO `urun_kategori` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `hit`, `dil`, `title`, `etiket`, `description`) VALUES
(14, 'kategori 1', '1', '472-.webp', '0', NULL, '0', '         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'kategori-1', 'urun_kategori', '16.04.2022', '22.12.2022', 822, 21, NULL, NULL, NULL),
(16, 'Kategori 2', '2', '603-kurumsal-scriptler.webp', '0', NULL, '0', '   Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'kategori-2', 'urun_kategori', '19.09.2022', '22.12.2022', NULL, 21, NULL, NULL, NULL),
(17, 'Kategori 3', '3', '627-kisisel-scriptler.webp', '0', NULL, '0', '    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'kategori-3', 'urun_kategori', '19.09.2022', '22.12.2022', NULL, 21, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_yorum`
--

CREATE TABLE `urun_yorum` (
  `id` int(11) NOT NULL,
  `yorum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `uye` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `urun_id` int(11) DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `urun_yorum`
--

INSERT INTO `urun_yorum` (`id`, `yorum`, `uye`, `tarih`, `urun_id`, `durum`) VALUES
(5, 'harika bir script', '64', NULL, 111, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `adsoyad` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `telefon` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `normalsifre` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tarih` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `adsoyad`, `email`, `telefon`, `sifre`, `normalsifre`, `tarih`, `durum`) VALUES
(64, 'umut tamirci', 'umuttamirci37@gmail.com', '05395965387', 'umutbaba123', NULL, '05/05/2002', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `linki` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `video`
--

INSERT INTO `video` (`id`, `adi`, `sira`, `aciklama`, `linki`, `durum`, `resim`, `dil`) VALUES
(6, 'Video 3', '3', NULL, NULL, '0', '852-video-3.webp', NULL),
(7, 'Video 2', '2', NULL, NULL, '0', '869-video-2.webp', NULL),
(8, 'Video 1', '1', NULL, NULL, '0', '642-video-1.webp', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yonetici`
--

CREATE TABLE `yonetici` (
  `id` int(11) NOT NULL,
  `ad_soyad` varchar(555) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eposta` varchar(555) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sifre` varchar(555) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ilk_giris` varchar(555) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `son_giris` varchar(555) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `logo` varchar(555) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kapak_foto` varchar(555) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `normalsifre` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `yonetici`
--

INSERT INTO `yonetici` (`id`, `ad_soyad`, `eposta`, `sifre`, `ilk_giris`, `son_giris`, `logo`, `kapak_foto`, `admin`, `normalsifre`, `ip`) VALUES
(9, 'demo', 'demo@demo.com', 'demo', '15.09.2020', '29.10.2023', '100.png', '991-.jpg', 1, NULL, '176.88.132.246');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `adi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `sira` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `resim` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategori` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `onaciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `aciklama` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `seo` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `tur` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `eklenme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `guncelleme_tarihi` text CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `dil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `adi`, `sira`, `resim`, `kategori`, `onaciklama`, `durum`, `aciklama`, `seo`, `tur`, `eklenme_tarihi`, `guncelleme_tarihi`, `dil`) VALUES
(2, 'Umut Tamirci', '2', '159-umut-tamirci.webp', NULL, ' Web Developer', '0', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry.</p>\r\n', 'umut-tamirci', 'yorumlar', '22.09.2022', '26.10.2023', NULL),
(3, 'Umut Tamirci', '3', '715-umut-tamirci.webp', NULL, ' Developer', '0', '<p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry.</p>\r\n', 'umut-tamirci', 'yorumlar', '22.09.2022', '26.10.2023', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `abone`
--
ALTER TABLE `abone`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `beadcrumb`
--
ALTER TABLE `beadcrumb`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blog_yorum`
--
ALTER TABLE `blog_yorum`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bolge_kategori`
--
ALTER TABLE `bolge_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `bolge_yorum`
--
ALTER TABLE `bolge_yorum`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `destek`
--
ALTER TABLE `destek`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `dil`
--
ALTER TABLE `dil`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ekibimiz`
--
ALTER TABLE `ekibimiz`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hizmetbolgeleri`
--
ALTER TABLE `hizmetbolgeleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hizmetler`
--
ALTER TABLE `hizmetler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisimbilgileri`
--
ALTER TABLE `iletisimbilgileri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iletisimler`
--
ALTER TABLE `iletisimler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `istatik`
--
ALTER TABLE `istatik`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `izinler`
--
ALTER TABLE `izinler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `mail_dogrula`
--
ALTER TABLE `mail_dogrula`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `netgsm`
--
ALTER TABLE `netgsm`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `odeme_secenek`
--
ALTER TABLE `odeme_secenek`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `onecikan`
--
ALTER TABLE `onecikan`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `paketler`
--
ALTER TABLE `paketler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `paymax`
--
ALTER TABLE `paymax`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `paytr`
--
ALTER TABLE `paytr`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `projeler`
--
ALTER TABLE `projeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `proje_kategori`
--
ALTER TABLE `proje_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rapor`
--
ALTER TABLE `rapor`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `referanslar`
--
ALTER TABLE `referanslar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sayfalar`
--
ALTER TABLE `sayfalar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopier`
--
ALTER TABLE `shopier`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sosyalmedya`
--
ALTER TABLE `sosyalmedya`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subeler`
--
ALTER TABLE `subeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_img`
--
ALTER TABLE `urun_img`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_kategori`
--
ALTER TABLE `urun_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_yorum`
--
ALTER TABLE `urun_yorum`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yonetici`
--
ALTER TABLE `yonetici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `abone`
--
ALTER TABLE `abone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `beadcrumb`
--
ALTER TABLE `beadcrumb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blog_yorum`
--
ALTER TABLE `blog_yorum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `bolge_kategori`
--
ALTER TABLE `bolge_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `bolge_yorum`
--
ALTER TABLE `bolge_yorum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `destek`
--
ALTER TABLE `destek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `dil`
--
ALTER TABLE `dil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `ekibimiz`
--
ALTER TABLE `ekibimiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Tablo için AUTO_INCREMENT değeri `hakkimizda`
--
ALTER TABLE `hakkimizda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `hizmetbolgeleri`
--
ALTER TABLE `hizmetbolgeleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `hizmetler`
--
ALTER TABLE `hizmetler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `iletisimbilgileri`
--
ALTER TABLE `iletisimbilgileri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `iletisimler`
--
ALTER TABLE `iletisimler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Tablo için AUTO_INCREMENT değeri `istatik`
--
ALTER TABLE `istatik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `izinler`
--
ALTER TABLE `izinler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `katalog`
--
ALTER TABLE `katalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `mail_dogrula`
--
ALTER TABLE `mail_dogrula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Tablo için AUTO_INCREMENT değeri `modal`
--
ALTER TABLE `modal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `netgsm`
--
ALTER TABLE `netgsm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `odeme_secenek`
--
ALTER TABLE `odeme_secenek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `onecikan`
--
ALTER TABLE `onecikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `paketler`
--
ALTER TABLE `paketler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Tablo için AUTO_INCREMENT değeri `paymax`
--
ALTER TABLE `paymax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `paytr`
--
ALTER TABLE `paytr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `projeler`
--
ALTER TABLE `projeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Tablo için AUTO_INCREMENT değeri `proje_kategori`
--
ALTER TABLE `proje_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Tablo için AUTO_INCREMENT değeri `rapor`
--
ALTER TABLE `rapor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `referanslar`
--
ALTER TABLE `referanslar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `sayfalar`
--
ALTER TABLE `sayfalar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- Tablo için AUTO_INCREMENT değeri `shopier`
--
ALTER TABLE `shopier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `sosyalmedya`
--
ALTER TABLE `sosyalmedya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `subeler`
--
ALTER TABLE `subeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- Tablo için AUTO_INCREMENT değeri `urun_img`
--
ALTER TABLE `urun_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- Tablo için AUTO_INCREMENT değeri `urun_kategori`
--
ALTER TABLE `urun_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `urun_yorum`
--
ALTER TABLE `urun_yorum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Tablo için AUTO_INCREMENT değeri `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `yonetici`
--
ALTER TABLE `yonetici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
