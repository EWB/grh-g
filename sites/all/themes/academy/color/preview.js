// Handle the color changes and update the preview window.
(function ($) {
  Drupal.color = {
    logoChanged: false,
    callback: function(context, settings, form, farb, height, width) {
			
			//top user bar
			$('#pre-header', form).css('backgroundColor', $('#palette input[name="palette[tertiary]"]', form).val());
			
      $('#pre-header', form).css('border-bottom-color', $('#palette input[name="palette[secondary]"]', form).val());

      // Background
      $('#preview', form).css('backgroundColor', $('#palette input[name="palette[background]"]', form).val());

      // Footer background
      $('#preview-footer', form).css('backgroundColor', $('#palette input[name="palette[footerbg]"]', form).val());
			
			 // Footer background
      $('#preview-footer', form).css('border-top-color', $('#palette input[name="palette[secondary]"]', form).val());

      // Footer text
      $('#preview-footer p', form).css('color', $('#palette input[name="palette[footertext]"]', form).val());

      // Footer Heading
      $('h2#footer-title', form).css('color', $('#palette input[name="palette[footertext]"]', form).val());

      // Block example
      $('#secondary-color', form).css('backgroundColor', $('#palette input[name="palette[tertiary]"]', form).val());
			
      $('#secondary-color', form).css('border-bottom-color', $('#palette input[name="palette[secondary]"]', form).val());
			
			$('#secondary-color', form).css('border-top-color', $('#palette input[name="palette[secondary]"]', form).val());
 
      // Text
      $('#preview #preview-main h2, #preview .preview-content', form).css('color', $('#palette input[name="palette[text]"]', form).val());

      // Slider
      $('#slider', form).css('border-bottom-color', $('#palette input[name="palette[text]"]', form).val());

      // Slider text
      $('#slider-text', form).css('backgroundColor', $('#palette input[name="palette[sliderbg]"]', form).val()); 

      // Slider text
      $('#slider-text', form).css('color', $('#palette input[name="palette[slidertext]"]', form).val()); 

      // Links
      $('#preview a', form).css('color', $('#palette input[name="palette[link]"]', form).val());
			
			// Base
      $('blockquote', form).css('backgroundColor', $('#palette input[name="palette[base]"]', form).val());
			
			$('blockquote', form).css('color', $('#palette input[name="palette[background]"]', form).val());
 
      // Titles
      $('#preview-page-title', form).css('color', $('#palette input[name="palette[titles]"]', form).val());
			
			$('#preview-site-name', form).css('color', $('#palette input[name="palette[titles]"]', form).val());
			
			$('div#menu ul li', form).css('color', $('#palette input[name="palette[titles]"]', form).val());
 
      // Menu item active link color
      $('#preview #preview-main-menu-links li a.active', form).css('color', $('#palette input[name="palette[menu_item_a_color]"]', form).val());

      // CSS3 Gradients.
      var gradient_start = $('#palette input[name="palette[header_top]"]', form).val();
      var gradient_end = $('#palette input[name="palette[header_bottom]"]', form).val();
 
      $('#preview #preview-header', form).attr('style', "background-color: " + gradient_start + "; background-image: -webkit-gradient(linear, 0% 0%, 0% 100%, from(" + gradient_start + "), to(" + gradient_end + ")); background-image: -moz-linear-gradient(-90deg, " + gradient_start + ", " + gradient_end + ");");
    }
  };
})(jQuery);