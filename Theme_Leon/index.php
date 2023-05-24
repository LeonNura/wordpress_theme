<?php get_header(); ?>

<div class="col-md-9">
        <div id="post">
        <?php 
        
        if( have_posts() ):
            
            while( have_posts() ): the_post(); ?>
                <h1><?php the_title(); ?></h1>
                
                <?php the_content(); ?>
                
                <hr>
            
            <?php endwhile;
            
        endif;
                
        ?>
    </div>
</div>

<div class="col-md-3">
    <?php get_sidebar(); ?>
</div>

<?php get_footer(); ?>