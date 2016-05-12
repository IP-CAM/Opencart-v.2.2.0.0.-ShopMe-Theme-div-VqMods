<div class="box">
<h3><?php echo $title; ?></h3> 
<div class="grid_holder carousel_holder">
	<div class="bordered_content bannercarousel <?php echo $module; ?>">
	<?php foreach ($banners as $banner) { ?>
    <div class="carousel_item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
    <?php } ?>
    </div>
    <?php } ?>
	</div>
</div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
$('.bannercarousel.<?php echo $module; ?>').owlCarousel({
itemsCustom: <?php echo $columns; ?>,
pagination: false,
navigation:true,
slideSpeed:500,
autoHeight:true,
navigationText: [
"<div class='slide_arrow_prev'><i class='fa fa-angle-left'></i></div>",
"<div class='slide_arrow_next'><i class='fa fa-angle-right'></i></div>"
]
}); 
});	
//--></script>