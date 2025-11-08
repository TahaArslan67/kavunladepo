 <section class="main-slider">
            <div class="swiper-container thm-swiper__slider" data-swiper-options='{"slidesPerView": 1, "loop": true,
        "effect": "fade",
        "pagination": {
        "el": "#main-slider-pagination",
        "type": "bullets",
        "clickable": true
        },
        "navigation": {
        "nextEl": "#main-slider__swiper-button-next",
        "prevEl": "#main-slider__swiper-button-prev"
        },
        "autoplay": {
        "delay": 5000
        }}'>
                <div class="swiper-wrapper">

                       <?php
                   $cek = $db->query("select * from slider where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>

                    <div class="swiper-slide">
                        <div class="image-layer"
                            style="background-image: url('<?= media_path($goster["resim"]) ?>');"></div>
                        <!-- /.image-layer -->

                        <div class="container">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="main-slider__content">
                                        <div class="main-slider__icon">
                                            <img src="assets/images/icon/main-slider-icon-1.png" alt="">
                                        </div>
                                        <p class="main-slider__sub-title"><?=$goster["adi"]?></p>
                                        <h2 class="main-slider__title"><?=$goster["aciklama"]?></h2>
                                        <div class="main-slider__btn-box">
                                            <a href="<?=$goster["linki"]?>" class="thm-btn main-slider__btn">Randevu Al</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

<?php }?>
                </div>

                <div class="swiper-pagination" id="main-slider-pagination"></div>
                <!-- If we need navigation buttons -->


            </div>
        </section>