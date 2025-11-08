<?php
// veritabanı bağlantısı için gerekli parametreler






$site = 'https://umutweb.com/guzellikv6/';

//upload dosya yolu
$targetFolder = '/resimler/';





$host = "localhost";
$vt_adi = "umutwqzn_guzellikv6";
$kullanici_adi = "umutwqzn_guzellikv6";
$sifre = "umut2020-";
try {
    if (class_exists('PDO')) {
        $db = new PDO(
            "mysql:host={$host};dbname={$vt_adi}",
            $kullanici_adi,
            $sifre,
            [PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"]
        );
    } else {
        throw new RuntimeException('PDO extension is not available.');
    }
}
// hatayı göster
catch(Throwable $exception){
    $demoPath = __DIR__ . '/../../demo-data.php';
    if (file_exists($demoPath)) {
        include $demoPath;
    } else {
        echo "Bağlantı hatası: " . $exception->getMessage();
        exit;
    }
}
error_reporting(0);

if (!function_exists('media_path')) {
    function media_path(?string $path): string
    {
        if (empty($path)) {
            return '';
        }

        $normalized = ltrim($path);
        if (str_starts_with($normalized, 'http') || str_starts_with($normalized, 'assets/') || str_starts_with($normalized, 'resimler/')) {
            return $normalized;
        }

        return 'resimler/' . $normalized;
    }
}
?>