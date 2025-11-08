        <section class="services-details-two">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-5">
                        <div class="services-details-two__left">
                            <div class="services-details-two__category">
                                <ul class="services-details-two__category-list list-unstyled">
                                      <?php
                   $cek = $db->query("select * from hizmetler where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                                    <li <?php if($goster["id"]==$id){?>class="active" <?php }?>>
                                        <a href="<?=$goster["seo"]?>"><?=$goster["adi"]?> <i class="fa fa-angle-right"></i></a>
                                    </li>
                                  <?php }?>
                                </ul>
                            </div>
                            <div class="services-details-two__help-line">
                                <div class="services-details-two__help-line-img">
                                    <img src="assets/images/services/services-details-two-help-line-img-1.jpg" alt="">
                                </div>
                                <div class="services-details-two__help-line-content">
                                    <div class="services-details-two__help-line-icon">
                                        <span class="icon-telephone-call"></span>
                                    </div>
                                    <p class="services-details-two__help-line-sub-title">Hemen Arayın</p>
                                    <h3 class="services-details-two__help-number"><a href="tel:<?=$telefon1?>"><?=$telefon1?></a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-7">
                        <div class="services-details-two__right">
                            <div class="services-details-two__img">
                                <img src="resimler/<?=$hizmetler["resim"]?>" alt="<?=$hizmetler["adi"]?>">
                            </div>
                            <h3 class="services-details-two__title-1"><?=$hizmetler["adi"]?></h3>
                            <p class="services-details-two__text-1"><?=$hizmetler["aciklama"]?></p>
                
                        </div>
                    </div>
                </div>
            </div>
        </section>