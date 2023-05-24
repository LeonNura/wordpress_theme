<html>
<head>
 <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
  <link href='<?php echo get_template_directory_uri() ?>/css/error.css' rel='stylesheet' type='text/css'>

<body>

	<?php get_header(); ?>


        <!-- Error Page -->
            <div class="error">
                <div class="container-floud">
                    <div class="col-xs-12 ground-color text-center">
                        <div class="container-error-404">
                            <div class="clip"><div class="shadow"><span class="digit thirdDigit"></span></div></div>
                            <div class="clip"><div class="shadow"><span class="digit secondDigit"></span></div></div>
                            <div class="clip"><div class="shadow"><span class="digit firstDigit"></span></div></div>
                            <div class="msg">OH!<span class="triangle"></span></div>
                        </div>
                        <h2 class="h1">Sorry! Page not found</h2>
                    </div>
                </div>
            </div>
        <!-- Error Page -->
        <script src="<?php echo get_template_directory_uri() ?>/js/error.js"></script>
        <script src="<?php echo get_template_directory_uri() ?>/js/jquery.js"></script>
</body>
</html>
