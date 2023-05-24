<?php get_header(); ?>


<?php

    $args = array(
    'post_type' => 'product'
    );

    $lastBlog = new WP_Query( $args );
    if( $lastBlog->have_posts() ):

    while( $lastBlog->have_posts() ): $lastBlog->the_post(); ?>

    <div class="super_container">
    <header class="header" style="display: none;">
        <div class="header_main">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-12 order-lg-2 order-3 text-lg-left text-right">
                        <div class="header_search">
                            <div class="header_search_content">
                                <div class="header_search_form_container">
                                    <form action="#" class="header_search_form clearfix">
                                        <div class="custom_dropdown">
                                            <div class="custom_dropdown_list"> <span class="custom_dropdown_placeholder clc">All Categories</span> <i class="fas fa-chevron-down"></i>
                                                <ul class="custom_list clc">
                                                    <li><a class="clc" href="#">All Categories</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="single_product">
        <div class="container-fluid" style=" background-color: #fff; padding: 11px;">
            <div class="row">
                <div class="col-lg-2 order-lg-1 order-2">
                    <ul class="image_list">
                        <li data-image="https://res.cloudinary.com/dxfq3iotg/image/upload/v1565713229/single_4.jpg"><img src="<?php echo get_field('image') ?>" alt=""></li>
                        <li data-image="https://res.cloudinary.com/dxfq3iotg/image/upload/v1565713228/single_2.jpg"><img src="<?php echo get_field('image2') ?>" alt=""></li>
                        <li data-image="https://res.cloudinary.com/dxfq3iotg/image/upload/v1565713228/single_3.jpg"><img src="<?php echo get_field('image3') ?>" alt=""></li>
                    </ul>
                </div>
                <div class="col-lg-4 order-lg-2 order-1">
                    <div class="image_selected"><img src="<?php echo get_field('image') ?>" alt=""></div>
                </div>
                <div class="col-lg-6 order-3">
                    <div class="product_description">
                        
                        <div class="product_name"><h1><?php echo get_field('title'); ?></h1></div>
                        <div> <span class="product_price"><?php echo get_field('price') ?>$</span> <strike class="product_discount"> <span style='color:black'><?php echo get_field('saved'); ?>$<span> </strike> </div>
                        <div> <span class="product_saved">You Saved:</span> <span style='color:black'><?php echo get_field('saved'); ?>$<span> </div>
                        <hr class="singleline">
                        <div> <span class="product_info"><?php echo get_field('description'); ?><span><br> <span class="product_info"><b>Warranty:</b> <?php echo get_field('warranty'); ?> months warranty<span><br></div>
                        <div>

                            <div class="row" style="margin-top: 15px;">
                                <div class="col-xs-6" style="margin-left: 15px;"> <span class="product_options">RAM Options</span><br> <button class="btn btn-primary btn-sm">4 GB</button> <button class="btn btn-primary btn-sm">8 GB</button> <button class="btn btn-primary btn-sm">16 GB</button> </div>
                                <div class="col-xs-6" style="margin-left: 55px;"> <span class="product_options">Storage Options</span><br> <button class="btn btn-primary btn-sm">500 GB</button> <button class="btn btn-primary btn-sm">1 TB</button> </div>
                            </div>
                        </div>
                        <hr class="singleline">
                        <div class="order_info d-flex flex-row">
                            <form action="#">
                        </div>
                        <div class="row">
                            <div class="col-xs-6"> <button type="button" class="btn btn-primary shop-button">Add to Cart</button> <button type="button" class="btn btn-success shop-button">Buy Now</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                        <?php endwhile;

                    endif;


                ?>

            </div>


<br><br>

<?php get_footer(); ?>