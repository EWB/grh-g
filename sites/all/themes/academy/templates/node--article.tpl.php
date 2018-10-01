<article<?php print $attributes; ?>>
  <?php print $user_picture; ?>
  <?php print render($title_prefix); ?>
  <?php if (!$page && $title): ?>
  <header>
    <h2<?php print $title_attributes; ?>><a href="<?php print $node_url ?>" title="<?php print $title ?>"><?php print $title ?></a></h2>
  </header>
  <?php endif; ?>
  <?php print render($title_suffix); ?>
  
  <div<?php print $content_attributes; ?>>
    <?php
      // We hide the comments and links now so that we can render them later.
      hide($content['comments']);
      hide($content['links']); 
    ?>

      <div class="group-header">
            <?php print render($content['field_image']);  ?>
      </div>

       <?php if ($display_submitted): ?>
        <footer class="submitted"><p><strong>Posted by <?php print $name; ?> on <?php print (format_date($node->created, 'custom', 'M j, Y')); ?></strong></p></footer>
      <?php endif; ?>  
  
     <div class="blog-body">
       <?php print render($content['body']);  ?>
     </div>
     <footer class="submitted"><span><strong>Filed under: <?php print render($content['field_tags']); ?></strong></span></footer>

  </div>
  
  <div class="clearfix">
    <?php print render($content['comments']); ?>
  </div>
</article>