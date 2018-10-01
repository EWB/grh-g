<?php

/**
 * PART 1. Basic Color module settings
 */
 
$info = array();
 
// Define the possible replaceable items and their labels.
$info['fields'] = array(
 'base' => t('Base Color'),
 'link' => t('Link Color'),
 'secondary' => t('Secondary Color'),
 'background' => t('Background Color'),
 'text' => t('Text Color'),
 'tertiary' => t('Tertiary Color'),
 'titles' => t('Titles'),
 'footerbg' => t('Footer Background'),
 'footertext' => t('Footer Text'),
 'sliderbg' => t('Slider Background'),
 'slidertext' => t('Slider Text'),
);

// Color schemes for the site.
$info['schemes'] = array(
 'default' => array(
 'title' => t('Academy default colors'),
 'colors' => array(
 'base' => '#980000', 
 'link' => '#980002',
 'secondary' => '#c8c6c6',
 'background' => '#fffffe',
 'text' => '#111111',
 'tertiary' => '#eeeeee',
 'titles' => '#111112',
 'footerbg' => '#e4e3e2',
 'footertext' => '#444443',
 'sliderbg' => '#980001',
 'slidertext' => '#ffffff',
 ),
 ),
);

// Define the CSS file(s) that we want the Color module to use as a base.
$info['css'] = array(
 'css/colors.css',
);
 
// Files we want to copy along with the CSS files, let's define these later.
$info['copy'] = array();
 
// Gradients
$info['gradients'] = array();
 
// Color areas to fill (x, y, width, height).
$info['fill'] = array();
 
// Coordinates of all the theme slices (x, y, width, height)
// with their filename as used in the stylesheet.
$info['slices'] = array();
 
// Base file for image generation.
$info['base_image'] = 'color/base.png';

//blend target
$info['blend_target'] = '#ffffff';

// HTML file to be used in the preview window.
$info['preview_html'] = 'color/preview.html';

// CSS file to be used in the preview window.
$info['preview_css'] = 'color/preview.css';

// Javascript file to use in the preview window.
// This is the one that handles the color changes on the preview form when you're
// clicking on the color picker.
$info['preview_js'] = 'color/preview.js';

/* Overriding this function which moves the logo as it attempts to re-color it, neither of which we want */

function academy_color_page_alter(&$vars) {
 
}