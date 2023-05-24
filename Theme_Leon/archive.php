<?php get_header(); ?>

<div class="row">
	<div class="col-xs-12 col-md-8">
		<header class="archive-header">
			<?php 
				the_archive_title('<h1 class="archive-title">','</h1>');
				the_archive_description('<div class="archive-description>"','</div>');
			 ?>
		</header>
		<h1>hello</h1>
		<?php 
		if ( have_posts() ) {
			while ( have_posts() ) {
				the_post(); 
				get_template_part('content','archive');
			}
		}
		
		?>
	</div>
	<div class="col-xs-12 col-md-4">
		<?php get_sidebar(); ?>
	</div>
</div>

<?php get_footer(); ?>