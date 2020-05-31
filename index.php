<?php
error_reporting(0);
include('dbimport/db.php');
$link = $_GET['link'];

$site = file_get_contents($link);
preg_match_all('@<span>(.*?)</span>@si', $site, $name);
preg_match_all('@<div role="tabpanel" class="tab-pane" id="Tab1">(.*?)</div>@si', $site, $name2);
preg_match_all('@<img src(.*?)/>@si', $site, $name3);
$namecikti = implode("bolfps", $name[1]);
$namedizi = explode ("bolfps",$namecikti);
$namecikti2 = implode("bolfps", $name2[1]);
$namedizi2 = explode ("bolfps",$namecikti2);
$namecikti3 = implode("bolfps", $name3[1]);
$namedizi3 = explode ("bolfps",$namecikti3);
$metin = $namedizi3[4];
$dizi = explode ('"',$metin);
$urunad = $namedizi[0];
$urunstok = $namedizi[2];
$urunfiyat= $namedizi[4];
$metin2 = $urunfiyat;
$dizi2 = explode ("₺",$metin2);
$metin3 = $dizi2[1];
$dizi3 = explode (",",$metin3);
$sonfiyat = $dizi3[0].".".$dizi3[1];

$urunicerikt= $namedizi2[0];
$urunfoto = "https://nevatoptan.net/".$dizi[1];

if (isset( $_GET['sql'])) {
$delete = $db->exec("DELETE FROM veriler");
};


if (isset( $_GET['link'])) {

	$ayarekle=$db->prepare("INSERT INTO veriler SET
		stokkod=:stokkod,
		isim=:isim,
		aciklama=:aciklama,
		normalfiyat=:normalfiyat,
		kategoriler=:kategoriler,
    	etiketler=:etiketler,
      	gorsel=:gorsel
		");

	$insert=$ayarekle->execute(array(
    'stokkod' => $urunstok,
    'isim' => $urunad,
    'aciklama' => $urunicerikt,
    'normalfiyat' => $sonfiyat,
          'kategoriler' => "Bebek Tekstili, Bebek Tekstili > Tişört",
          'etiketler' => 'bebek,Tişört,hediye',
          'gorsel' => $urunfoto
		));



	if ($insert) {

header("Location: index.php?veri=oldu");
	} else {

    header("Location: index.php?veri=olmadı");

	}

}
$sorgu = $db->prepare("SELECT COUNT(*) FROM veriler");
$sorgu->execute();
$satissay = $sorgu->fetchColumn();
?>

<!DOCTYPE html>

<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>FlySquare eCommerce Bot</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>

<div class="login-page">
  <div class="form">
    <form class="register-form">
      <input  type="text" readonly placeholder="veri" value="<?php echo "Toplam: ".$satissay." Ürün Eklendi";?>"/>
      <button  onclick="Export()">CSV DOSYASINI AL</button>
			<p></p>
			  <button name="sql">SQL BOŞALT</button>
      <p class="message"><a href="#">Ürün Ekle</a></p>
    </form>
    <form class="login-form">
      <input name="link" type="text" placeholder="Ürün Link"/>

      <button>Ekle</button>
      <p class="message"><a href="#">Ürünleri Çek</a></p>
        <?php
        if ($_GET['veri'] == "oldu") {?>
          <p class="message">Ürün Eklendi</p>
      <?php   }elseif ($_GET['veri'] == "olmadı") {?>
        <p class="message">HATA!</p>
    <?php   }elseif (!$_GET['veri']) {?>
      <p class="message"></p>
  <?php   }
         ?>
    </form>
  </div>
</div>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script><script  src="./script.js"></script>
  <script>
      function Export()
      {
          var conf = confirm("Csv Dosyası Alınsın Mı?");
          if(conf == true)
          {
              window.open("veriexport/export.php", '_blank');
          }
      }

  </script>
</body>
</html>
