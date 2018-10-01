<?php
 

function academy_preprocess_html(&$variables) {
  
  // Add stylesheets for Color module
  drupal_add_css(path_to_theme() . '/css/colors.css', array('group' => CSS_THEME, 'preprocess' => FALSE, 'weight' => 90));

}

// Allows users to change the color scheme of themes.

function academy_process_html(&$vars) {
  // Hook into color.module.
  if (module_exists('color')) {
    _color_html_alter($vars);
  }
}

function academy_html_head_alter(&$head_elements) {
  if (drupal_is_front_page()) {
		foreach ($head_elements as $key => $element) {
			if (isset($element['#attributes']['rel']) && $element['#attributes']['rel'] == 'canonical') {
				// I want a custom canonical url.
				$head_elements[$key]['#attributes']['href'] = "/";
			}
		}
  }
}

function academy_breadcrumb($variables) {
   if (count($variables['breadcrumb']) > 0) {
     $lastitem = sizeof($variables['breadcrumb']);
     $title = drupal_get_title();
     $crumbs = '<ul class="breadcrumbs">';
		 $crumbs .= '<li class="breadcrumb-lead">You are here:</li>';
     $a=1;
     foreach($variables['breadcrumb'] as $value) {
         if ($a!=$lastitem){
          $crumbs .= '<li class="breadcrumb-'.$a.'">'. $value . ' ' . '</li>' . '<li class="breadcrumb-sep">'. '/' . ' ' . '</li>';
          $a++;
         }
         else {
             $crumbs .= '<li class="breadcrumb-last">'.$value.'</li>' . '</li>' . '<li class="breadcrumb-sep">'. '/' . ' ' . '</li>' . '<li class="breadcrumb-current">'.$title.'</li> ';
         }
     }
     $crumbs .= '</ul>';
   return $crumbs;
   }
   else {
     return t("Home");
   }
 }

function academy_delta_blocks_breadcrumb($variables) {
  $output = '';

  if (!empty($variables['breadcrumb'])) {  
    if ($variables['breadcrumb_current']) {
      $variables['breadcrumb'][] = l(drupal_get_title(), current_path(), array('html' => TRUE));
    }

    $output = '<div id="breadcrumb" class="clearfix"><ul class="breadcrumb">';
    $switch = array('odd' => 'even', 'even' => 'odd');
    $zebra = 'even';
    $last = count($variables['breadcrumb']) - 1;    

    foreach ($variables['breadcrumb'] as $key => $item) {
      $zebra = $switch[$zebra];
      $attributes['class'] = array('depth-' . ($key + 1), $zebra);

      if ($key == 0) {
        $attributes['class'][] = 'first';
      }

      if ($key == $last) {
        $attributes['class'][] = 'last';
        $output .= '<li' . drupal_attributes($attributes) . $item . '</li>';
      }

     else $output .= '<li' . drupal_attributes($attributes) . '>' . $item . '</li>' . ' <span class="breadcrumb-separator">&#xBB;</span> ';

      
    }

    $output .= '</ul></div>';
  }

  return $output;
}

drupal_add_js(drupal_get_path('theme', 'academy') .'/js/jcaption.js');

drupal_add_js(drupal_get_path('theme', 'academy') .'/js/jquery.smooth-scroll.js'); 

drupal_add_js(drupal_get_path('theme', 'academy') .'/js/academy.js');

drupal_add_css(path_to_theme() . '/css/ie-lte-8.css', array('group' => CSS_THEME, 'browsers' => array('IE' => 'lte IE 8', '!IE' => FALSE), 'preprocess' => FALSE, 'weight' => 90));

