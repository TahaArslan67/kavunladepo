     <section class="product-details">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-xl-6">
                        <div class="product-details__img">
                            <img src="resimler/<?=$urunler["resim"]?>" alt="<?=$urunler["adi"]?>" />
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-6">
                        <div class="product-details__top">
                            <h3 class="product-details__title"><?=$urunler["adi"]?> <span><?=$urunler["fiyat"]?></span> </h3>
                        </div>
                        <div class="product-details__reveiw">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                         
                        </div>
                        <div class="product-details__content">
                            <p class="product-details__content-text1"><?=$urunler["aciklama"]?></p>
                        </div>



                        <div class="product-details__buttons">
                            <div class="product-details__buttons-1">
                                <a href="https://wa.me/<?=$whatsapp?>?text= Merhaba bu ürün hakkında bilgi almak istiyorum. <?=$site.$seo?>" class="thm-btn">Whatsapp İletişim</a>
                            </div>

                            <div class="product-details__buttons-2">
                                <a href="tel:<?=$telefon1?>" class="thm-btn">Hemen Ara</a>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
        </section>