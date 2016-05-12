<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<base target="_parent">
<meta name="robots" content="noindex">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopme/stylesheet/stylesheet.css" />
<script type="text/javascript" src="catalog/view/theme/shopme/js/cloud-zoom.1.0.2.min.js"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/shopme/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/shopme/js/shopme_common.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/datetimepicker/moment.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<?php if ($direction == 'rtl') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopme/stylesheet/rtl.css" />
<?php } ?>
<?php echo $shopme_styles; ?>
</head>
<body style="background:#ffffff !important;">
<div id="popup_login">
<div class="popup_login_holder">
<div class="top">
<div class="heading">
<a href="<?php echo $register; ?>" class="btn btn-default pull-right"><?php echo $text_register; ?></a>
<h2><?php echo $text_login; ?></h2> 
</div>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
<div class="form-group">
<label class="control-label"><?php echo $entry_email; ?></label>
<input type="text" name="email" class="form-control" value="<?php echo $email; ?>" />
</div>
<div class="form-group">
<label class="control-label"><?php echo $entry_password; ?></label>
<input type="password" name="password" class="form-control" value="<?php echo $password; ?>" />
</div>
<input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
<a href="<?php echo $forgotten; ?>" class="forgotten"><?php echo $text_forgotten; ?></a>
<?php if ($redirect) { ?>
<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
<?php } ?>
</form>
</div>
<div class="bottom">
<div id="social_login_popup_holder" class="popup"><?php echo $content_top; ?></div>
</div>
</div>
</div>
</body></html>