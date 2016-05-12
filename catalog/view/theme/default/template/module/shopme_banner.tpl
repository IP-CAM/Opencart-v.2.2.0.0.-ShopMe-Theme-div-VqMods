<?php if ($module_title){ ?>
<h3><?php echo $module_title; ?></h3>
<?php } ?>
<div class="row text-center box_short">
<?php foreach($sections as $section){ ?>
<div class="<?php echo $columns; ?> box_short">
<?php if ($section['description']) { ?>
<a href="<?php echo $section['description']; ?>"><img class="zoom_image" alt="" src="<?php echo $section['image']; ?>" /></a>
<?php } else { ?>
<img class="zoom_image" alt="" src="<?php echo $section['image']; ?>" />
<?php } ?>
</div>
<?php } ?>
</div>