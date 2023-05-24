<?php get_header(); ?>


		<header class="archive-header">

		</header>

	<?php 


		
		if( have_posts() ):
			
			while( have_posts() ): the_post(); ?>
				
				<?php the_title();

				echo get_taxonomy_values($post->ID , "color");

				 ?>
			
			<?php endwhile;
			
		endif;
		?>

<?php get_footer(); ?>