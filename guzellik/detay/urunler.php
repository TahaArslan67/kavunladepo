    <section class="product">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-3">
                        <div class="product__sidebar">
                          
                           
                            <div class="shop-category product__sidebar-single">
                                <h3 class="product__sidebar-title">Ürünler</h3>
                                <ul class="list-unstyled">
                                         <?php
                   $cek = $db->query("select * from urun_kategori where durum='0' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                                    <li <?php if($goster["id"]==$id){?> class="active" <?php }?>><a href="<?=$goster["seo"]?>"><?=$goster["adi"]?></a></li>
                                 <?php }?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9 col-lg-9">
                        <div class="product__items">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="product__showing-result">
                                        <div class="product__showing-text-box">
                                            <p class="product__showing-text"><?=$adi?> ürünleri listeleniyor.</p>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="product__all">
                                <div class="row">
                                    <?php
                   $cek = $db->query("select * from urunler where durum='0' and kategori='$id' order by sira asc")->fetchAll(PDO::FETCH_ASSOC);
                   foreach($cek as $goster){
                   ?>
                                    <div class="col-xl-4 col-lg-4 col-md-6">
                                        <div class="product__all-single">
                                            <div class="product__all-img">
                                                <img src="resimler/<?=$goster["resim"]?>" alt="<?=$goster["adi"]?>">
                                                <div class="product__all-btn-box">
                                                    <a href="<?=$goster["seo"]?>" class="thm-btn product__all-btn">İnceleyin</a>
                                                </div>
                                            </div>
                                            <div class="product__all-content">
                                                <h4 class="product__all-title"><a href="<?=$goster["seo"]?>"><?=$goster["adi"]?></a></h4>
                                                <p class="product__all-price"><?=$goster["fiyat"]?></p>
                                                <div class="product__all-review">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                          <?php }?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>