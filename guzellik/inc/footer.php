
	<style>
    .whatsapp {position: fixed;left: 15px;bottom: 15px;transition: all .5s ease-in-out;z-index: 999;}
.whatsapp a {height: 50px;width: 50px;border-radius: 50%;overflow: hidden;box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.4);font-size: 28px;display: block;text-align: center;line-height: 50px;color: white;background: #4dc247;}
.whatsapp .tooltiptext {visibility: hidden;width: 120px;background-color: black;color: #fff;text-align: center;border-radius: 6px;padding: 5px 0;position: absolute;z-index: 1;line-height: normal;font-size: 15px;top: 13px;left: 105%;height: auto;}
.whatsapp:hover a {transform: rotate(45deg);-webkit-transform: rotate(45deg);}.whatsapp:hover .tooltiptext {visibility: visible;}
.telefon {position: fixed;left: 15px;bottom: 75px;transition: all .5s ease-in-out;z-index: 999;}
.telefon a {height: 50px;width: 50px;border-radius: 50%;overflow: hidden;box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.4);font-size: 28px;display: block;text-align: center;line-height: 50px;color: white;background: #337ab7;}
.telefon .tooltiptext {visibility: hidden;width: 120px;background-color: black;color: #fff;text-align: center;border-radius: 6px;padding: 5px 0;position: absolute;z-index: 1;line-height: normal;font-size: 15px;top: 13px;left: 105%;height: auto;}
.telefon:hover a {transform: rotate(45deg);-webkit-transform: rotate(45deg);}
.telefon:hover .tooltiptext {visibility: visible;}

.telefon {
right: 15px !important;
left: unset;
bottom: 300px;
}

.whatsapp {
right: 15px !important;
left: unset;
bottom: 240px;
}

.telefon .tooltiptext, .whatsapp .tooltiptext {
right: 105%;
left: unset;
}

.telegram {
position: fixed;
right: 15px;
bottom: 180px;
transition: all .5s ease-in-out;
z-index: 999;
}

.telegram a {
height: 50px;
width: 50px;
border-radius: 50%;
overflow: hidden;
box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.4);
font-size: 28px;
display: block;
text-align: center;
line-height: 50px;
color: white;
background: #27A7E5;
}

.telegram .tooltiptext {
visibility: hidden;
width: 100px;
background-color: black;
color: #fff;
text-align: center;
border-radius: 6px;
padding: 5px 0;
position: absolute;
z-index: 1;
line-height: normal;
font-size: 15px;
top: 13px;
right: 105%;
height: auto;
}

.telegram:hover a {
transform: rotate(45deg);
-webkit-transform: rotate(45deg);
}

.telegram:hover .tooltiptext {
visibility: visible;
}

.instagram1 {
position: fixed;
right: 15px;
bottom: 120px;
transition: all .5s ease-in-out;
z-index: 999;
}

.instagram1 a {
height: 50px;
width: 50px;
border-radius: 50%;
overflow: hidden;
box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.4);
font-size: 28px;
display: block;
text-align: center;
line-height: 50px;
color: white;
background: #fd3a67;
}

.instagram1 .tooltiptext {
visibility: hidden;
width: 100px;
background-color: black;
color: #fff;
text-align: center;
border-radius: 6px;
padding: 5px 0;
position: absolute;
z-index: 1;
line-height: normal;
font-size: 15px;
top: 13px;
right: 105%;
height: auto;}
</style>

<div class="telefon">
	<a href="tel:<?=$telefon1?>" title="Telefon" alt="Telefon"><i class="fa fa-phone"></i></a>
	<span class="tooltiptext">Telefon</span>
</div>

<div class="whatsapp">
	<a href="https://api.whatsapp.com/send?phone=<?=$whatsapp?>" target="_blank" title="WhatsApp" alt="WhatsApp"><i class="fab fa-whatsapp"></i></a>
	<span class="tooltiptext">WhatsApp</span>
</div>
<div class="instagram1">
	<a href="<?=$instagram?>" target="_blank" title="instagram" alt="instagram"><i class="fab fa-instagram"></i></a>
	<span class="tooltiptext">İnstagram</span>
</div>

<div class="telegram">
	<a href="<?=$telegram?>" target="_blank" title="Telegram" alt="Telegram"><i class="fab fa-telegram"></i></a>
	<span class="tooltiptext">Telegram</span>
</div>

        <footer class="site-footer">
            <div class="site-footer__shape-1 float-bob-x">
                <img src="assets/images/shapes/site-footer-shape-1.png" alt="">
            </div>
            <div class="site-footer__shape-2 float-bob-y">
                <img src="assets/images/shapes/site-footer-shape-2.png" alt="">
            </div>
            <div class="container">
                <div class="site-footer__top">
                    <div class="row">
                       <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="300ms">
                            <div class="footer-widget__column footer-widget__timing">
                                <div class="footer-widget__title-box">
                                        <h4 class="footer-widget__title">Hakkımızda</h4>
                                </div>
                              <?=$hakkimizda["footer"]?>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                            <div class="footer-widget__column footer-widget__links">
                                <div class="footer-widget__title-box">
                                    <h4 class="footer-widget__title">Menü Link</h4>
                                </div>
                                <ul class="footer-widget__links-list list-unstyled">
                                    <?php
                                    $menucek = $db->query("select * from menu where durum='0' and kategori='0' and acilir='1' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                                    foreach($menucek as $menu){
                                    ?>
                                    <li><a href="<?=$menu["url"]?>"><?=$menu["adi"]?></a></li>
                                <?php }?>
                                    </ul>
                            </div>
                        </div>
                       
                        <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                            <div class="footer-widget__column footer-widget__social-box">
                                <div class="site-footer__social">
                                    <?php if($twitter!=''){?>
                                <a href="<?=$twitter?>" target="_blank"><i class="fab fa-twitter"></i></a>
                               <?php }?>
                                <?php if($instagram!=''){?>
                                <a href="<?=$instagram?>" target="_blank"><i class="fab fa-instagram"></i></a>
                               <?php }?>
                                <?php if($youtube!=''){?>
                                <a href="<?=$youtube?>" target="_blank"><i class="fab fa-youtube"></i></a>
                               <?php }?>
                                <?php if($facebook!=''){?>
                                <a href="<?=$facebook?>" target="_blank"><i class="fab fa-facebook"></i></a>
                               <?php }?>
                                <?php if($linkedin!=''){?>
                                <a href="<?=$linkedin?>" target="_blank"><i class="fab fa-linkedin"></i></a>
                               <?php }?>
                                <?php if($pinterest!=''){?>
                                <a href="<?=$pinterest?>" target="_blank"><i class="fab fa-pinterest"></i></a>
                               <?php }?>
                                <?php if($telegram!=''){?>
                                <a href="<?=$telegram?>" target="_blank"><i class="fab fa-telegram"></i></a>
                               <?php }?>
                                </div>
                                <p><?=$adres1?></p>
                                 <p><?=$telefon1?></p>
                                  <p><?=$email1?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="site-footer__bottom">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="site-footer__bottom-inner">
                                <p class="site-footer__bottom-text"><?=$copyright?></p>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>