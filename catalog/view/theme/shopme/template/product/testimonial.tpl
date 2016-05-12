<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
  
  <?php echo $column_left; ?>
    
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9 col-sm-8'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      
        <?php if ($testimonials) { ?>
        <div class="bordered_content box">
        <div class="grid_holder grid1">
        <div class="product-grid testimonial">
        
        <?php foreach ($testimonials as $testimonial) { ?>
        <div class="item testimonial">
          <span class="author"><?php echo $testimonial['name']; ?>, <?php echo $testimonial['city']; ?></span>
          <p><?php echo $testimonial['description'] ; ?></p>
      	</div>
        <?php } ?>
        
        </div>
        </div>
        <?php if (isset($pagination)) { ?>
            <?php if ($pagination) { ?>
            <div class="padded text-right"><?php echo $pagination;?></div>
            <?php }?>
         <div class="bottom_buttons text-right">
            <a class="btn btn-default" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><?php echo $write;?></a>
            </div>
    	<?php }?>
        <?php if (isset($showall_url)) { ?>
    		<div class="bottom_buttons text-right">
            <a class="btn btn-default" href="<?php echo $write_url;?>" title="<?php echo $write;?>"><?php echo $write;?></a>
            <a class="btn btn-default" href="<?php echo $showall_url;?>" title="<?php echo $showall;?>"><?php echo $showall;?></a>
            </div>
    	<?php }?>
        </div> <!-- bordered_content ends -->

    <?php } ?>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 