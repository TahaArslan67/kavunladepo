 <section class="brand-one">
            <div class="brand-one__shape-1 float-bob-x">
                <img src="assets/images/shapes/brand-one-shape-1.png" alt="">
            </div>
            <div class="container">
                <div class="thm-swiper__slider swiper-container" data-swiper-options='{"spaceBetween": 100,
                "slidesPerView": 5,
                "loop": true,
                "navigation": {
                    "nextEl": "#brand-one__swiper-button-next",
                    "prevEl": "#brand-one__swiper-button-prev"
                },
                "autoplay": { "delay": 5000 },
                "breakpoints": {
                    "0": {
                        "spaceBetween": 30,
                        "slidesPerView": 2
                    },
                    "375": {
                        "spaceBetween": 30,
                        "slidesPerView": 2
                    },
                    "575": {
                        "spaceBetween": 30,
                        "slidesPerView": 3
                    },
                    "767": {
                        "spaceBetween": 50,
                        "slidesPerView": 4
                    },
                    "991": {
                        "spaceBetween": 50,
                        "slidesPerView": 5
                    },
                    "1199": {
                        "spaceBetween": 100,
                        "slidesPerView": 5
                    }
                }}'>
                    <div class="swiper-wrapper">
                         <?php
                   $cek = $db->query("select * from referanslar where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                        <div class="swiper-slide">
                            <img src="<?=$goster["resim"]?>" alt="">
                        </div>
                        
                        <?php }?>
                    </div>
                </div>
            </div>
        </section>