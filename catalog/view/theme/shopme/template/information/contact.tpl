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
    <div id="content" class="<?php echo $class; ?> margin-b contact_form"><?php echo $content_top; ?>
    <h1 class="tall"><?php echo $heading_title; ?></h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <fieldset>
         <h3><?php echo $text_contact; ?></h3>
         <div class="bordered_content padded margin-b">
          <div class="row">
          <div class="form-group col-sm-6 required">
            <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          <div class="form-group col-sm-6 required">
            <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
          </div>
          <div class="form-group col-sm-12 required">
            <label class="control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
          </div>
          
          <?php echo $captcha; ?>
          
            <div class="col-sm-12 text-right">
            <input class="btn btn-dark" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
          </div>
         </div>
        </fieldset>
      </form>

      <h3><?php echo $text_location; ?></h3>
         <div class="bordered_content padded margin-b contact_details">
          <div class="row">
            <?php if ($shopme_google_map) { ?>
            <div class="col-sm-5">
            <?php echo $shopme_google_map; ?>
            </div>
            <div class="col-sm-7">
            <?php } else { ?>
			<div class="col-sm-12">
            <?php } ?>
            <?php if ($image) { ?>
            <p><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" /></p>
            <?php } ?>
            <?php if ($comment) { ?>
            <p><?php echo $comment; ?></p>
            <?php } ?>
            <p class="icon_holder"><?php echo $address; ?><i class="fa fa-map-marker light_color"></i></p>
            <p class="icon_holder"><?php echo $telephone; ?><i class="fa fa-phone light_color"></i></p>
            <?php if ($fax) { ?>
  			<p class="icon_holder"><?php echo $fax; ?><i class="fa fa-fax light_color"></i></p>
  			<?php } ?>
            <?php if ($open) { ?>
  			<p class="icon_holder"><?php echo $open; ?><i class="fa fa-clock-o light_color"></i></p>
  			<?php } ?>
            <?php if ($geocode) { ?>
            <p class="icon_holder"><a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a><i class="fa fa-map-marker light_color"></i></p>
  			<?php } ?>
            </div>
            </div>
         </div>
         
      <?php if ($locations) { ?>
      <div class="clearfix"></div>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <div class="btn btn-default"><i class="fa fa-plus"></i><i class="fa fa-minus"></i></div></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body contact_details">
                <?php if ($location['image']) { ?>
                <p><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" /></p>
                <?php } ?>
                <?php if ($location['comment']) { ?>
                <p><?php echo $location['comment']; ?></p>
                <?php } ?>
                <p class="icon_holder"><?php echo $location['address']; ?><i class="fa fa-map-marker light_color"></i></p>
                
                <?php if ($location['geocode']) { ?>
                <p class="icon_holder"><a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank"><?php echo $button_map; ?></a><i class="fa fa-map-marker light_color"></i> </p>
                <?php } ?>

                <p class="icon_holder"><?php echo $location['telephone']; ?><i class="fa fa-phone light_color"></i></p>
                <?php if ($location['fax']) { ?>
                <p class="icon_holder"><?php echo $location['fax']; ?><i class="fa fa-fax light_color"></i></p>
                <?php } ?>
                <?php if ($location['open']) { ?>
                <p class="icon_holder"><?php echo $location['open']; ?><i class="fa fa-clock-o light_color"></i></p>
                <?php } ?>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>