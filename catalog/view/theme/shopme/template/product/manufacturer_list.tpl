<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
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
      
      <?php if ($categories) { ?>
<div class="bordered_content box <?php echo $shopme_brands_per_row; ?> categories_holder brands">
<div class="product-grid categories">
      <?php foreach ($categories as $category) { ?>
      <?php if ($category['manufacturer']) { ?>
      <?php foreach (array_chunk($category['manufacturer'], 4) as $manufacturers) { ?>
        <?php foreach ($manufacturers as $manufacturer) { ?>
        <div class="item">
	<div class="image zoom_image_container">
    <a href="<?php echo $manufacturer['href']; ?>">
    <?php if ($manufacturer['thumb']) { ?>
    <img class="zoom_image" src="<?php echo $manufacturer['thumb']; ?>" alt="<?php echo $manufacturer['name']; ?>" />
    <?php } ?>
    </a>
    </div>
    <div class="name"><a href="<?php echo $manufacturer['href']; ?>"><?php echo $manufacturer['name']; ?></a></div>
    </div>
        <?php } ?>
      <?php } ?>
      <?php } ?>

      <?php } ?>
      </div>
</div>
      <?php } else { ?>
      <div class="bordered_content padded"><p><?php echo $text_empty; ?></p></div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>