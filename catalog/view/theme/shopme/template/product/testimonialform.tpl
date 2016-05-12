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
      
      <div class="bordered_content padded box">
      <p><?php echo $text_conditions ?></p>
  
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial" class="form-horizontal">
        
        <div class="form-group required">
    	<div class="col-sm-12">
	    <label class="control-label" for="input-desc"><?php echo $entry_enquiry ?></label>
    	<textarea name="description" rows="10" id="input-desc" class="form-control"><?php echo $description; ?></textarea>
    	<?php if ($error_enquiry) { ?>
        <span class="text-danger"><?php echo $error_enquiry; ?></span>
        <?php } ?>
	    </div>
	    </div>
    
        <div class="form-group">
    	<div class="col-sm-12">
	    <label class="control-label" for="input-name"><?php echo $entry_name ?></label>
        <input type="text" name="name" id="input-name" value="<?php echo $name; ?>" class="form-control" />
	    </div>
	    </div>
        
        <div class="form-group">
    	<div class="col-sm-12">
	    <label class="control-label" for="input-city"><?php echo $entry_city ?></label>
        <input type="text" name="city" id="input-city" value="<?php echo $city; ?>" class="form-control" />
	    </div>
	    </div>
        
        <div class="form-group">
    	<div class="col-sm-12">
	    <label class="control-label" for="input-email"><?php echo $entry_email ?></label>
        <input type="text" name="email" id="input-email" value="<?php echo $email; ?>" class="form-control" />
	    </div>
	    </div>
        
        <div class="form-group required">
        <div class="col-sm-12">
        <label class="control-label" for="input-captcha_comment"><?php echo $entry_captcha; ?></label>
        <div class="input-group">
        <span class="input-group-addon captcha_wrap"><img src="index.php?route=product/testimonialform/captcha" alt="" id="captcha_testimonial" /></span>
        <input type="text" name="captcha_testimonial" value="" id="input-captcha_testimonial" class="form-control" />
        </div>
        <?php if ($error_captcha) { ?>
        <span class="text-danger"><?php echo $error_captcha; ?></span>
        <?php } ?>
        </div>
        </div>
                
        <div class="row">
    	<div class="col-sm-12 text-right"><input class="btn btn-primary" type="submit" value="<?php echo $button_send; ?>" /></div>
        </div>
        
        </div>

    </form>
    </div>

      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 