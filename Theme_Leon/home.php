<?php get_header(); ?>
<div class="big_div">

<div class="div1">
        <?php 
        
        if( have_posts() ):
            
            while( have_posts() ): the_post(); ?>
                <h1><?php the_title( sprintf('<h1 class="entry-title"><a href="%s">', esc_url( get_permalink() ) ),'</a></h1>' ); ?></h1>
                <hr>
            
            <?php endwhile;
            
        endif;
                
        ?>
</div>

<div class="div2">
    <?php get_sidebar(); ?>
</div>

</div>
<br><br>
 <?php get_footer(); ?>