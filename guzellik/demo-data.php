<?php
// Demo verisi: Veritabanı olmadan ön yüzün görüntülenebilmesi için kullanılır.

$DEMO_MODE = true;

if (!class_exists('DemoStatement')) {
    class DemoStatement
    {
        private array $rows;
        private int $index = 0;

        public function __construct(array $rows)
        {
            $this->rows = array_values($rows);
        }

        public function fetch($mode = null)
        {
            return $this->rows[$this->index++] ?? false;
        }

        public function fetchAll($mode = null): array
        {
            return $this->rows;
        }
    }
}

if (!class_exists('DemoDB')) {
    class DemoDB
    {
        public function __construct(private array $tables) {}

        public function query(string $sql): DemoStatement
        {
            $sqlLower = strtolower($sql);

            foreach ($this->tables as $name => $rows) {
                if (str_contains($sqlLower, "from {$name}")) {
                    return new DemoStatement($this->applyFilters($sqlLower, $rows));
                }
            }

            return new DemoStatement([]);
        }

        private function applyFilters(string $sql, array $rows): array
        {
            $filtered = $rows;

            if (preg_match("/where\\s+id='?(\\d+)'?/i", $sql, $match)) {
                $id = (int) $match[1];
                $filtered = array_values(array_filter($filtered, fn($row) => (int) ($row['id'] ?? 0) === $id));
            }

            if (preg_match("/where\\s+seo='([^']+)'/i", $sql, $match)) {
                $seo = $match[1];
                $filtered = array_values(array_filter($filtered, fn($row) => ($row['seo'] ?? null) === $seo));
            }

            if (preg_match("/where\\s+kategori='?(\\d+)'?/i", $sql, $match)) {
                $kategori = (int) $match[1];
                $filtered = array_values(array_filter($filtered, fn($row) => (int) ($row['kategori'] ?? 0) === $kategori));
            }

            if (str_contains($sql, "durum='0'") || str_contains($sql, 'durum = \"0\"')) {
                $filtered = array_values(array_filter($filtered, fn($row) => (string) ($row['durum'] ?? '') === '0'));
            }

            if (preg_match("/order\\s+by\\s+sira\\s+asc/i", $sql)) {
                usort($filtered, fn($a, $b) => ($a['sira'] ?? 0) <=> ($b['sira'] ?? 0));
            }

            if (preg_match("/order\\s+by\\s+id\\s+desc/i", $sql)) {
                usort($filtered, fn($a, $b) => ($b['id'] ?? 0) <=> ($a['id'] ?? 0));
            }

            if (preg_match("/limit\\s+(\\d+)/i", $sql, $match)) {
                $filtered = array_slice($filtered, 0, (int) $match[1]);
            }

            return $filtered;
        }
    }
}

$demoTables = [
    'ayarlar' => [[
        'id' => 1,
        'site_title' => 'Luxury Masaj',
        'site_description' => 'Malatya Luxury Masaj Salonu – profesyonel spa deneyimi, özel terapi odaları ve VIP hizmet.',
        'site_author' => 'Luxury Masaj',
        'site_keyword' => 'malatya masaj, luxury masaj, spa, terapi',
        'logo' => 'assets/images/resources/benzermedyalogo.png',
        'footer_logo' => 'assets/images/resources/benzermedyalogo.png',
        'favicon' => 'assets/images/favicon.png',
        'footer_copyright' => ' 2025 Luxury Masaj. Tüm hakları saklıdır.',
        'renk' => '#d4af37',
        'renk2' => '#1c1c1c',
        'header' => '',
        'footer' => '',
    ]],
    'hakkimizda' => [[
        'id' => 1,
        'adi' => 'Luxury Masaj ile Bedeninizi Yenileyin',
        'aciklama' => 'Malatya Luxury Masaj, stresinizi azaltmak ve zindeliğinizi artırmak için aromaterapi, derin doku ve çift terapisi gibi kişiye özel masaj seçenekleri sunar. Rahatlatıcı atmosferimizde profesyonel terapistlerimizle kendinizi ödüllendirin.',
        'resim' => 'assets/images/resources/about-one-img-2.jpg',
        'video' => 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        'footer' => '<p>Luxury Masaj, hijyenik odaları, uzman terapistleri ve kişiye özel ritüelleriyle Malatya’da lüks masaj deneyiminizi tasarlar.</p>',
    ]],
    'iletisimbilgileri' => [[
        'id' => 1,
        'telefon1' => '+90 544 105 48 44',
        'telefon2' => '',
        'adres1' => 'Malatya Merkez – Luxury Masaj Salonu',
        'adres2' => '',
        'email1' => 'info@luxurymasaj.com',
        'email2' => 'rezervasyon@luxurymasaj.com',
        'google_maps' => '',
        'whatsapp' => '+905441054844',
        'wp_text' => 'Hemen WhatsApp üzerinden randevu alın',
        'wp_renk' => '#25D366',
    ]],
    'sosyalmedya' => [[
        'id' => 1,
        'facebook' => 'https://www.facebook.com/luxurymasajmalatya',
        'twitter' => '',
        'instagram' => 'https://www.instagram.com/luxurymasajmalatya',
        'youtube' => '',
        'pinterest' => '',
        'linkedin' => 'https://www.linkedin.com/company/benzer-medya',
        'telegram' => '',
    ]],
    'slider' => [[
        'id' => 1,
        'resim' => 'assets/images/backgrounds/main-slider-2-1.jpg',
        'adi' => 'Lüks Masaj Deneyimi',
        'aciklama' => 'Malatya Luxury Masaj ile bedeninizi rahatlatın, zihninizi yenileyin.',
        'linki' => '#services',
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 2,
        'resim' => 'assets/images/backgrounds/main-slider-2-2.jpg',
        'adi' => 'Çift ve VIP Terapileri',
        'aciklama' => 'Aromaterapi, derin doku ve çift terapilerinde uzman ekibimizle tanışın.',
        'linki' => 'tel:+905441054844',
        'sira' => 2,
        'durum' => 0,
    ]],
    'hizmetler' => [[
        'id' => 1,
        'resim' => 'assets/images/resources/service-1.jpg',
        'adi' => 'Derin Doku Masajı',
        'onaciklama' => 'Kas yorgunluğunu azaltan yoğun basınçlı terapiler.',
        'seo' => '#services',
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 2,
        'resim' => 'assets/images/resources/service-2.jpg',
        'adi' => 'Aromaterapi Seansı',
        'onaciklama' => 'Doğal esansiyel yağlarla zihinsel rahatlama ve denge.',
        'seo' => '#services',
        'sira' => 2,
        'durum' => 0,
    ], [
        'id' => 3,
        'resim' => 'assets/images/resources/service-3.jpg',
        'adi' => 'Çift Masaj Paketi',
        'onaciklama' => 'Özel günler için çiftlere aynı anda sunulan VIP deneyim.',
        'seo' => '#services',
        'sira' => 3,
        'durum' => 0,
    ]],
    'istatik' => [[
        'id' => 1,
        'resim' => 'assets/images/resources/counter-1.png',
        'adi' => 'Aylık Seans',
        'linki' => 320,
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 2,
        'resim' => 'assets/images/resources/counter-2.png',
        'adi' => 'Uzman Terapist',
        'linki' => 12,
        'sira' => 2,
        'durum' => 0,
    ], [
        'id' => 3,
        'resim' => 'assets/images/resources/counter-3.png',
        'adi' => 'VIP Oda',
        'linki' => 6,
        'sira' => 3,
        'durum' => 0,
    ], [
        'id' => 4,
        'resim' => 'assets/images/resources/counter-4.png',
        'adi' => 'Memnuniyet',
        'linki' => 98,
        'sira' => 4,
        'durum' => 0,
    ]],
    'yorumlar' => [[
        'id' => 1,
        'adi' => 'Murat A.',
        'aciklama' => 'Derin doku masajı sonrası ağrılarım bitti, profesyonel ekibe teşekkürler.',
        'resim' => 'assets/images/resources/testimonial-1.jpg',
        'linki' => 'Misafir',
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 2,
        'adi' => 'Elif K.',
        'aciklama' => 'Çift masajı hizmeti ile özel günümüz unutulmaz oldu.',
        'resim' => 'assets/images/resources/testimonial-2.jpg',
        'linki' => 'Misafir',
        'sira' => 2,
        'durum' => 0,
    ], [
        'id' => 3,
        'adi' => 'Serhat Y.',
        'aciklama' => 'Hijyenik ortam, uzman terapistler ve kusursuz ilgi.',
        'resim' => 'assets/images/resources/testimonial-3.jpg',
        'linki' => 'Misafir',
        'sira' => 3,
        'durum' => 0,
    ]],
    'galeri' => [[
        'id' => 1,
        'resim' => 'assets/images/resources/gallery-1.jpg',
        'adi' => 'Salonumuz',
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 2,
        'resim' => 'assets/images/resources/gallery-2.jpg',
        'adi' => 'Spa Alanı',
        'sira' => 2,
        'durum' => 0,
    ], [
        'id' => 3,
        'resim' => 'assets/images/resources/gallery-3.jpg',
        'adi' => 'Ürünler',
        'sira' => 3,
        'durum' => 0,
    ], [
        'id' => 4,
        'resim' => 'assets/images/resources/gallery-4.jpg',
        'adi' => 'Bekleme Alanı',
        'sira' => 4,
        'durum' => 0,
    ], [
        'id' => 5,
        'resim' => 'assets/images/resources/gallery-5.jpg',
        'adi' => 'Uygulama Odası',
        'sira' => 5,
        'durum' => 0,
    ], [
        'id' => 6,
        'resim' => 'assets/images/resources/gallery-6.jpg',
        'adi' => 'Dinlenme Köşesi',
        'sira' => 6,
        'durum' => 0,
    ]],
    'haberler' => [[
        'id' => 3,
        'resim' => 'assets/images/resources/blog-1.jpg',
        'adi' => 'Benzer Medya kimdir?',
        'seo' => '#benzer-medya-kimdir',
        'onaciklama' => 'Gaziantep merkezli Benzer Medya ile dijital dünyadaki tüm süreçlerimizi yönetiyoruz.',
        'eklenme_tarihi' => '08.11.2025',
        'durum' => 0,
    ], [
        'id' => 2,
        'resim' => 'assets/images/resources/blog-2.jpg',
        'adi' => 'Luxury Masaj’da Randevu Öncesi 3 İpucu',
        'seo' => '#luxury-masaj-oncesi',
        'onaciklama' => 'Seans öncesi rahatlamanıza yardımcı olacak öneriler.',
        'eklenme_tarihi' => '01.11.2025',
        'durum' => 0,
    ], [
        'id' => 1,
        'resim' => 'assets/images/resources/blog-3.jpg',
        'adi' => 'Aromaterapinin Faydaları',
        'seo' => '#aromaterapi-faydalari',
        'onaciklama' => 'Doğal yağlarla uygulanan masajın ruh ve beden üzerindeki etkileri.',
        'eklenme_tarihi' => '25.10.2025',
        'durum' => 0,
    ]],
    'referanslar' => [[
        'id' => 1,
        'resim' => 'assets/images/resources/brand-1.png',
        'adi' => 'Partner 1',
        'linki' => '#',
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 2,
        'resim' => 'assets/images/resources/brand-2.png',
        'adi' => 'Partner 2',
        'linki' => '#',
        'sira' => 2,
        'durum' => 0,
    ], [
        'id' => 3,
        'resim' => 'assets/images/resources/brand-3.png',
        'adi' => 'Partner 3',
        'linki' => '#',
        'sira' => 3,
        'durum' => 0,
    ], [
        'id' => 4,
        'resim' => 'assets/images/resources/brand-4.png',
        'adi' => 'Partner 4',
        'linki' => '#',
        'sira' => 4,
        'durum' => 0,
    ], [
        'id' => 5,
        'resim' => 'assets/images/resources/brand-5.png',
        'adi' => 'Partner 5',
        'linki' => '#',
        'sira' => 5,
        'durum' => 0,
    ]],
    'banner' => [[
        'id' => 1,
        'resim' => 'assets/images/backgrounds/spa-center-two-bg.jpg',
        'adi' => 'Hemen Randevu Alın',
        'aciklama' => 'Malatya Luxury Masaj, 0544 105 48 44 hattında 7/24 ulaşılabilir.',
        'buton' => 'Şimdi Ara',
        'link' => 'tel:+905441054844',
        'durum' => 0,
    ]],
    'menu' => [[
        'id' => 1,
        'kategori' => 0,
        'adi' => 'Anasayfa',
        'url' => './',
        'acilir' => 1,
        'sekme' => 0,
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 2,
        'kategori' => 0,
        'adi' => 'Hizmet Kategorisi',
        'url' => '#services',
        'acilir' => 0,
        'sekme' => 0,
        'sira' => 2,
        'durum' => 0,
    ], [
        'id' => 3,
        'kategori' => 0,
        'adi' => 'Benzer Medya',
        'url' => '#benzer-medya',
        'acilir' => 1,
        'sekme' => 0,
        'sira' => 3,
        'durum' => 0,
    ], [
        'id' => 4,
        'kategori' => 0,
        'adi' => 'Blog',
        'url' => '#blog',
        'acilir' => 1,
        'sekme' => 0,
        'sira' => 4,
        'durum' => 0,
    ], [
        'id' => 5,
        'kategori' => 0,
        'adi' => 'İletişim',
        'url' => '#contact',
        'acilir' => 1,
        'sekme' => 0,
        'sira' => 5,
        'durum' => 0,
    ], [
        'id' => 21,
        'kategori' => 2,
        'adi' => 'Derin Doku',
        'url' => '#services',
        'acilir' => 1,
        'sekme' => 0,
        'sira' => 1,
        'durum' => 0,
    ], [
        'id' => 22,
        'kategori' => 2,
        'adi' => 'Aromaterapi',
        'url' => '#services',
        'acilir' => 1,
        'sekme' => 0,
        'sira' => 2,
        'durum' => 0,
    ]],
    'sayfalar' => [[
        'id' => 19,
        'seo' => 'iletisim',
        'adi' => 'İletişim',
        'icerik' => 'Demo sayfa',
    ], [
        'id' => 1,
        'seo' => 'hakkimizda',
        'adi' => 'Hakkımızda',
        'icerik' => 'Demo içerik',
    ]],
    'ekibimiz' => [[
        'id' => 1,
        'adi' => 'Benzer',
        'linki' => 'Benzer Medya’nın sahibi / CEO',
        'resim' => 'resimler/789998.jpg',
        'sira' => 1,
        'durum' => 0,
    ]],
    'onecikan' => [[
        'id' => 1,
        'urunler' => '1,2,3',
    ]],
    'paytr' => [[
        'id' => 1,
    ]],
    'paymax' => [[
        'id' => 1,
    ]],
    'odeme_secenek' => [[
        'id' => 1,
    ]],
    'netgsm' => [[
        'id' => 1,
    ]],
    'shopier' => [[
        'id' => 1,
    ]],
    'modal' => [[
        'id' => 1,
    ]],
    'izinler' => [[
        'id' => 1,
    ]],
    'mail' => [[
        'id' => 1,
    ]],
    'beadcrumb' => [[
        'id' => 1,
    ]],
];

$db = new DemoDB($demoTables);

$site = 'http://localhost:8000/';
$targetFolder = '/resimler/';

$ayar = $demoTables['ayarlar'][0];
$hakkimizda = $demoTables['hakkimizda'][0];
$iletisim = $demoTables['iletisimbilgileri'][0];
$sosyal = $demoTables['sosyalmedya'][0];
$modal = $demoTables['modal'][0];
$paytr = $demoTables['paytr'][0];
$paymax = $demoTables['paymax'][0];
$odeme_tur = $demoTables['odeme_secenek'][0];
$netgsm = $demoTables['netgsm'][0];
$shopier = $demoTables['shopier'][0];
$izinler = $demoTables['izinler'][0];
$bead = $demoTables['beadcrumb'][0];
$onecikan = $demoTables['onecikan'][0];
$mail = $demoTables['mail'][0];

$title = $ayar['site_title'];
$description = $ayar['site_description'];
$author = $ayar['site_author'];
$favicon = $ayar['favicon'];
$logo = $ayar['logo'];
$footerlogo = $ayar['footer_logo'];
$keyword = $ayar['site_keyword'];
$copyright = $ayar['footer_copyright'];
$telefon1 = $iletisim['telefon1'];
$telefon2 = $iletisim['telefon2'];
$adres1 = $iletisim['adres1'];
$adres2 = $iletisim['adres2'];
$email1 = $iletisim['email1'];
$email2 = $iletisim['email2'];
$googlemaps = $iletisim['google_maps'];
$whatsapp = $iletisim['whatsapp'];
$wptext = $iletisim['wp_text'];
$wprenk = $iletisim['wp_renk'];

$facebook = $sosyal['facebook'];
$twitter = $sosyal['twitter'];
$instagram = $sosyal['instagram'];
$youtube = $sosyal['youtube'];
$pinterest = $sosyal['pinterest'];
$linkedin = $sosyal['linkedin'];
$telegram = $sosyal['telegram'];

?>
