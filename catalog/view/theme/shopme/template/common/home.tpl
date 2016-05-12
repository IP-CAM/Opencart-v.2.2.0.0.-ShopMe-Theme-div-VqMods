<?php echo $header; ?>

<script type="text/javascript">
	$("li.home").addClass("current");
	$(".breadcrumb_wrapper").hide();
</script>
<div class="container main">
  
  <?php echo $home_top; ?>
  
  <div class="row">
  
  <?php echo $column_left; ?>
    
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-md-9 col-sm-8'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> homepage">
    <?php echo $content_top; ?>
     <?php echo $content_bottom; ?>
     </div>
    <?php echo $column_right; ?>
    </div>
    
    <?php echo $home_bottom; ?>
    
</div>
<?php echo $footer; ?> 