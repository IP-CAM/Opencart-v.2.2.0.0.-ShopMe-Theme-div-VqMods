<div class="box">
<?php if (!empty($module_title)){ ?>
<h3><?php echo $module_title; ?></h3>
<?php } ?>

<div class="btn-holder">
<?php foreach($sections as $section){ ?>
<a href="<?php echo $section['link']; ?>" class="<?php echo $section['link_type']; ?> btn btn-icon <?php echo $section['social_type']; ?>" <?php if ($section['tooltip']){ ?> data-toggle="tooltip" title="<?php echo $section['tooltip']; ?>" <?php } ?>><i class="fa fa-<?php echo $section['social_type']; ?>"></i></a>
<?php } ?>
<div class="clearfix"></div>
</div>
</div>