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
<body <?php body_class(); ?>>
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