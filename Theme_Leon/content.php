
<div class="row article">
	<div class="thumbnail-img col-sm-3">
		<?php the_post_thumbnail('thumbnail'); ?>	
	</div>
	<div class="content col-sm-9">
		<a href="<?php echo get_post_permalink(); ?>"><h1><?php the_title(); ?></h1></a>
		<?php the_category(); ?>
	</div>
</div>