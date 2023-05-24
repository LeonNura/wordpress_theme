<?php  get_header(); ?>

<?php get_search_form(); ?>

<?php 
	if(have_posts())
	{
		while(have_posts())
		{
			the_post();
?>
	<article>
		<h1><?php the_title(); ?></h1>
		
		<span><i>Posted on: <?php the_time('l, F jS, Y'); ?> | <?php the_category(); ?></i></span>

		<p><?php the_content(); ?></p>
	</article>
	<hr>
<?php 
		}
	}
?>
<?php  get_footer(); ?>

