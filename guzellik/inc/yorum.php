     <section class="testimonial-one">
            <div class="testimonial-one__bg-box">
                <div class="testimonial-one__bg"
                    style="background-image: url(assets/images/backgrounds/testimonial-one-bg.jpg);"></div>
            </div>
            <div class="container">
                <div class="testimonial-one__top">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12">
                            <div class="testimonial-one__left">
                                <div class="section-title text-left">
                                    <span class="section-title__tagline"><?=$title?></span>
                                    <h2 class="section-title__title">Müşteri Yorumları</h2>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
                <div class="testimonial-one__bottom">
                    <div class="testimonial-one__carousel thm-owl__carousel owl-theme owl-carousel" data-owl-options='{
                        "items": 1,
                        "margin": 30,
                        "smartSpeed": 700,
                        "loop":true,
                        "autoplay": 6000,
                        "nav":false,
                        "dots":false,
                        "navText": ["<span class=\"icon-left-arrow\"></span>","<span class=\"icon-right-arrow\"></span>"],
                        "responsive":{
                            "0":{
                                "items":1
                            },
                            "768":{
                                "items":2
                            },
                            "992":{
                                "items": 2
                            },
                            "1200":{
                                "items": 3
                            }
                        }
                    }'>
                   <?php
                   $cek = $db->query("select * from yorumlar where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                        <div class="item">
                            <div class="testimonial-one__single">
                                <div class="testimonial-one__icon-quote">
                                    <img src="assets/images/icon/icon-quote.png" alt="">
                                </div>
                                <div class="testimonial-one__single-inner">
                                    <div class="testimonial-one__rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                    <p class="testimonial-one__text-2"><?=$goster["aciklama"]?></p>
                                    <div class="testimonial-one__client-info">
                                        <div class="testimonial-one__client-img">
                                            <img src="<?=$goster["resim"]?>" alt="<?=$goster["adi"]?>">
                                        </div>
                                        <div class="testimonial-one__content">
                                            <h3 class="testimonial-one__client-name"><?=$goster["adi"]?></h3>
                                            <p class="testimonial-one__client-sub-title"><?=$goster["linki"]?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <?php }?>
                    </div>
                </div>
            </div>
        </section>