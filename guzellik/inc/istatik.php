
        <section class="counter-one">
            <div class="counter-one__bg jarallax" data-jarallax data-speed="0.2" data-imgPosition="50% 0%"
                style="background-image: url(assets/images/backgrounds/counter-one-bg.jpg);">
            </div>
            <div class="container">
                <div class="row">
                      <?php
                   $cek = $db->query("select * from istatik where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                    <div class="col-xl-3 col-lg-6 col-md-6">
                        <div class="counter-one__single">
                            <div class="counter-one__icon">
                                <img src="resimler/<?=$goster["resim"]?>" width="50">
                            </div>
                            <div class="counter-one__content-box">
                                <div class="counter-one__count-box">
                                    <h3 class="odometer" data-count="<?=$goster["linki"]?>">00</h3>
                                </div>
                                <p class="counter-one__text"><?=$goster["adi"]?></p>
                            </div>
                        </div>
                    </div>
                   <?php }?>
                </div>
            </div>
        </section>