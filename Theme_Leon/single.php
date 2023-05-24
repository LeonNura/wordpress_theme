<?php get_header() ?>

<style>
	.single_class
	{
		max-width: 700px;
		margin: 0 auto;
		padding: 30px;
		text-align: center;
		border: 2px solid grey;
		border-radius: 10px;

	}

	p
	{
		font-size: 20px;
	}

	.comment
	{
		padding: 20px;
	}



</style>

<?php 


	if(have_posts())
	{
		?>

		<?php


		while(have_posts())
		{
			the_post();

			?>
		<div class="single_class">
			<div>
			<?php the_post_thumbnail('thumbnail'); ?>	
			</div>
				<div class="single_content">
					<h1><?php the_title(); ?></h1>
					<br><hr><br>
					<h3><?php the_content() ?></h3>
				</div>
		</div>
			<?php
		}
	}
?>

<div class="comment comment_row">

<?php
	if (comments_open()) {
		comments_template();
	}

?>
</div>

<?php get_footer() ?>