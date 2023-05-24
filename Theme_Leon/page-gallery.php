<?php 
	get_header();

	$galleries = get_field('gallery');

	for ($i=0; $i < sizeof($galleries); $i++) {
		
?>		


	<img  alt="<?php echo $galleries[$i]['alt'] ?>" src="<?php echo $galleries[$i]['url'] ?>" width = "<?php echo $galleries['sizes']['medium-width'] ?>" height = "<?php echo $galleries['sizes']['medium-height'] ?>">




<?php
	}

	get_footer();
 ?>