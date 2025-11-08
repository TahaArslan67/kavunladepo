       <section class="services-page">
            <div class="container">
                <div class="row">
                      <?php
                   $cek = $db->query("select * from hizmetler where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                    <div class="col-xl-4 col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="600ms">
                        <div class="services-one__single">
                            <div class="services-one__single-inner">
                                <div class="services-one__shape-1">
                                    <img src="assets/images/shapes/services-one-shape-1.png" alt="">
                                </div>
                                <div class="services-one__shape-2">
                                    <img src="assets/images/shapes/services-one-shape-2.png" alt="">
                                </div>
                                <div class="services-one__img-box">
                                    <div class="services-one__img">
                                        <img src="resimler/<?=$goster["resim"]?>" alt="<?=$goster["adi"]?>">
                                    </div>
                                    <div class="services-one__icon">
                                        <span class="icon-herbs"></span>
                                    </div>
                                </div>
                                <h3 class="services-one__title"><a href="<?=$goster["seo"]?>"><?=$goster["adi"]?></a></h3>
                                <p class="services-one__text"><?=$goster["onaciklama"]?></p>
                                <div class="services-one__btn-box">
                                    <a href="<?=$goster["seo"]?>" class="services-one__btn">İnceleyin<i
                                            class="icon-right-arrow"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php }?>
                </div>
            </div>
        </section>