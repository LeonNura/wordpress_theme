<?php get_header(); ?>

<div class="row">

    <div class="col-xs-11">

        <?php get_search_form(); ?>

        <div id="awesome-carousel" class="carousel slide" data-ride="carousel">

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">

                <?php

                $args_cat = array(
                    'include' => ''
                );

                $categories = get_categories($args_cat);
                $count = 0;
                $bullets = '';
                foreach($categories as $category):

                    $args = array(
                        'type' => 'post',
                        'posts_per_page' => 1,
                        'category__in' => $category->term_id,
                        'category__not_in' => array( 10 ),
                    );

                    $lastBlog = new WP_Query( $args );

                    if( $lastBlog->have_posts() ):

                        while( $lastBlog->have_posts() ): $lastBlog->the_post(); ?>

                            <div class="item <?php if($count == 0): echo 'active'; endif; ?>">
                                <?php the_post_thumbnail('full'); ?>
                                <div class="carousel-caption">
                                    <?php the_title( sprintf('<h1 class="entry-title"><a href="%s">', esc_url( get_permalink() ) ),'</a></h1>' ); ?>

                                    <small><?php the_category(' '); ?></small>
                                </div>
                            </div>

                            <?php $bullets .= '<li data-target="#awesome-carousel" data-slide-to="'.$count.'" class="'; ?>
                            <?php if($count == 0): $bullets .='active'; endif; ?>

                            <?php  $bullets .= '"></li>'; ?>

                        <?php endwhile;

                    endif;

                    wp_reset_postdata();

                    $count++;

                endforeach;

                ?>

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <?php echo $bullets; ?>
                </ol>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#awesome-carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#awesome-carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>

</div>

<?php  get_footer(); ?>

