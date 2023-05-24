<?php 

	function shkolladigjitale_script_enqueue()
	{
		wp_enqueue_style('bootstrap',  get_template_directory_uri() .  '/css/bootstrap.min.css', array(), '3.3.7', 'all');
		wp_enqueue_style('custom',  get_template_directory_uri() .  '/css/main.css', array(), '1.0.0', 'all');
		
		wp_enqueue_script('jquery');
		wp_enqueue_script('bootstrapjs',  get_template_directory_uri() .  '/js/bootstrap.min.js', array(), '3.3.7', true);
		wp_enqueue_script('custom',  get_template_directory_uri() .  '/js/main.js', array(), '1.0.0', true);
	}
	
	add_action('wp_enqueue_scripts','shkolladigjitale_script_enqueue');

	function shkolladigjitale_theme_setup()
	{
		add_theme_support('menus');
		register_nav_menu('primary', 'Header menu');

	}

	add_action('init', 'shkolladigjitale_theme_setup');

	add_theme_support('custom-background');
	add_theme_support('custom-header');
	add_theme_support('post-thumbnails');
	add_theme_support('html5',array('search-form'));

	add_theme_support('post-formats',array('image','video','aside','link','gallery'));

	function shkolladigjitale_sidebar () {
		register_sidebar(
			array(
				'name' => 'Sidebar',
				'id' => 'sidebar-1',
				'class' => 'custom',
				'before_widget' => '<aside id="%1$s" class="%2$s">',
				'after_widget' => '</aside>'
			)
		);
	}

	add_action('widgets_init' , 'shkolladigjitale_sidebar');

	add_theme_support('html5' , array('search-form'));



function shkolladigjitale_custom_post_type(){
	$labels = array(
		'name' => 'Product' ,
		'singular_name' => 'Product' ,
		'add_new' => 'Add new product' ,
		'all_items' => 'All items' ,
		'edit_item' => 'Edit product' ,
		'new item' => 'New product' ,
		'view_item' => 'View product' ,
		'not_founds' => ' No product found' 
	);
	$args = array(
		'labels' => $labels ,
		'public' => true ,
		'show_in_menu' => true ,
		'has_archive' => true ,
		'rewrite' => true ,
		'support' => array(
			'title' ,
			'excerpt' ,
			'editor' ,
			'thumbnail' ,
			'revistor'
		) ,



		'taxonomies' => array('category' , 'post_tag') ,
		'menu_position' => 7
	);


	register_post_type('product', $args);


	}

	add_action ('init' , 'shkolladigjitale_custom_post_type');


// function add_custom_taxonomies() {
 
//    	$labels = array(
//       'name' =>'colors',
//       'singular_name' =>'color',
//       'search_items' =>'colors' ,
//       'all_items' =>'colors',
//       'parent_item' =>'product'
//     );
 
//     $rewrite = array(
//     	'labels' => $labels,
//       'slug' => 'product',
//       'with_front' => false,
//       'hierarchical' => true
//     );



// 	register_taxonomy('color', 'product', $rewrite);

// 	register_taxonomy('size', 'product', array(

// 		'labels' => array(

// 			'name' => 'size',
// 			'no-found' => 'No Size Found',
// 			'singular_name' =>'size',
// 		    'search_items' =>'size' ,
// 		    'all_items' =>'size',
// 		    'parent_item' =>'product'

// 		),

// 		'slug' => 'product',
// 		'hierarchical' => false,
// 		'rewrite' => array("slug"=>"size")

// 	));

		

// }


// add_action( 'init', 'add_custom_taxonomies', 0 );

function get_taxonomy_values($postID, $taxonomy)
{
	$taxonomies = wp_get_post_terms($postID, $taxonomy);
	$output = '';

	$output.= '<span>'.$taxonomy.'</span>';
	foreach ($taxonomies as $taxonomi) {

		$output = "<span>";
		$output = $taxonomi->name;
		$output = " , <span>";

	}
return $output;

}

// acf_add_options_page(array(

// 	'page_title' => 'Navigation',
// 	'menu_title' => 'Navigation Menu',
// 	'menu_slug'  => 'navigation-menu',
// 	'capability' => 'edit_posts',
// 	'redirect' => false

// ));