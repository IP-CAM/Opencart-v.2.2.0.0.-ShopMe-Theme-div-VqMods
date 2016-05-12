<div class="box">
<h3><?php echo $testimonial_title; ?></h3>
  <div class="bordered_content">
    <div class="grid_holder <?php echo $testimonial_columns; ?>">
    <div class="product-grid testimonial m<?php echo $module; ?> <?php if ($testimonial_carousel) { ?>carousel<?php } ?> ">
      <?php foreach ($testimonials as $testimonial) { ?>
		<div class="item testimonial">
          <a class="author" href="<?php echo $testimonial['link']; ?>"><?php echo $testimonial['name']; ?>, <?php echo $testimonial['city']; ?></a>
          <p><?php echo $testimonial['description'] ; ?></p>
      	</div>
      <?php } ?>
	</div>
    <?php if ($testimonial_links) { ?>
    <div class="bottom_buttons">
	<a href="<?php echo $showall_url;?>" class="btn btn-default"><?php echo $show_all; ?></a>
    </div>
	<?php } ?>
    </div>
  </div>
</div>
<?php if ($testimonial_carousel) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
var grid1 = 1;
var grid2 = 2;
var grid3 = 3;
var grid4 = 4;
$('.product-grid.testimonial.m<?php echo $module; ?>').owlCarousel({
itemsCustom: [[0, 1], [767, <?php echo $testimonial_columns; ?>]],
pagination: false,
navigation:true,
slideSpeed:500,
scrollPerPage:false,
navigationText: [
"<div class='slide_arrow_prev'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next'><i class='fa fa-angle-right'></i></div>"
],
afterAction: function(){
       this.$owlItems.removeClass('first');
       this.$owlItems.eq(this.currentItem).addClass('first');
     }
}); 
});	
//--></script>
<?php } ?>