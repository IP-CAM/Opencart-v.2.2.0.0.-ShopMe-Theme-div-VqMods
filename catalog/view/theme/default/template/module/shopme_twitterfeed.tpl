<div class="box">
<?php if (!empty($module_title)){ ?>
<h3><?php echo $module_title; ?></h3>
<?php } ?>
<div class="bordered_content padded">
<div class="tweecool"></div>
<?php if (!empty($button_title)){ ?>
<a class="external btn btn-default" href="https://twitter.com/<?php echo $widget_id; ?>/"><?php echo $button_title; ?></a>
<?php } ?>
</div>
</div>
<script>
$(document).ready(function() {
$(".tweecool").tweecool({
//settings
username : '<?php echo $widget_id; ?>',
limit : <?php echo $limit; ?>
});
});
</script>