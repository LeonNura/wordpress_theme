<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri() ?>/css/main.css">
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri() ?>/css/footer.css">
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri() ?>/css/product.css">
</head>
<body 
style="background-image: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)), url(<?php echo get_stylesheet_directory_uri() ?>/css/assets/tech2.jpg);">
<header>
    
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <?php 
        wp_nav_menu(array(
          'theme_location' => 'primary',
          'container' => 'ul',
          'menu_class' => 'nav navbar-nav navbar-right'
        ));
       ?>
      
    
    </div>
  </div>
</nav>

</header>
<br><br><br><br><br><br><br><br><br><br>
<center><h1 style="color: white; font-size: 100px; height: 100%;">Tech Theme</h1></center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


<div id="post" style="max-width: 100%; background-color: white; margin-bottom: 0; padding: 50px;">
    <?php 
        
    if( have_posts() ):
            
        while( have_posts() ): the_post(); ?>
            <h1 style="text-align: center;"><?php the_title(); ?></h1>
<br><br>
            <p class="para" style="max-width: 600px; margin: 0 auto; text-align: center;"><?php the_content(); ?></p>
            
        <?php endwhile;
            
    endif;
                
    ?>


<br><br>

</div>

<?php  get_footer(); ?>