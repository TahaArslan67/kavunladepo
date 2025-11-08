<?php
$logoPath = (str_starts_with($logo, 'http') || str_starts_with($logo, 'assets/') || str_starts_with($logo, 'resimler/')) ? $logo : 'resimler/'.$logo;
$faviconPath = (str_starts_with($favicon, 'http') || str_starts_with($favicon, 'assets/') || str_starts_with($favicon, 'resimler/')) ? $favicon : 'resimler/'.$favicon;
?>
 <header class="main-header" id="top">
            <div class="main-header__top">
                <div class="main-header__top-wrapper">
                    <div class="main-header__top-inner">
                        <div class="main-header__top-left">
                            <ul class="list-unstyled main-header__contact-list">
                                <li>
                                    <div class="icon">
                                        <i class="fas fa-envelope"></i>
                                    </div>
                                    <div class="text">
                                        <p><a href="mailto:<?=$email1?>"><?=$email1?></a></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="icon">
                                        <i class="fas fa-phone"></i>
                                    </div>
                                    <div class="text">
                                        <p><a href="tel:<?=$telefon1?>"><?=$telefon1?></a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="main-header__top-right">
                            <div class="main-header__social">
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
                            <div class="main-header__btn-box">
                                <a href="tel:<?=$telefon1?>" class="thm-btn main-header__btn">HEMEN ARA</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <nav class="main-menu">
                <div class="main-menu__wrapper">
                    <div class="main-menu__wrapper-inner">
                        <div class="main-menu__left">
                            <div class="main-menu__logo">
                                <a href="./"><img src="<?=$logoPath?>" alt="<?=$title?>" width="200"></a>
                            </div>
                        </div>
                        <div class="main-menu__main-menu-box">
                                <a href="#" class="mobile-nav__toggler"><i class="fa fa-bars"></i></a>
                            <ul class="main-menu__list">
                                
                                <?php
                                $menucek = $db->query("select * from menu where durum='0' and kategori='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                                foreach($menucek as $menu){
                                ?>
                                <li <?php if($menu["acilir"]==0){?>class="dropdown" <?php }?>>
                                    <a href="<?=$menu["url"]?>" <?php if($menu["sekme"]==1){?> target="_blank" <?php }?>><?=$menu["adi"]?></a>
                                    <?php if($menu["acilir"]==0){?>
                                    <ul>
                                           <?php
                                $menucek2 = $db->query("select * from menu where durum='0' and kategori='{$menu["id"]}' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                                foreach($menucek2 as $menu2){
                                ?>
                                        <li><a href="<?=$menu2["url"]?>" <?php if($menu2["sekme"]==1){?> target="_blank" <?php }?>><?=$menu2["adi"]?></a></li>
                                  <?php }?>    
                                    </ul>
                                    <?php }?>
                                </li>
                                <?php }?>
                              
                            </ul>
                        </div>
                        
                    </div>
                </div>
            </nav>
        </header>

        <div class="stricky-header stricked-menu main-menu">
            <div class="sticky-header__content"></div>
        </div>