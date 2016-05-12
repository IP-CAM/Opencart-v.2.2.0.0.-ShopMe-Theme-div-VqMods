<div class="box category_module">
<h3><?php echo $heading_title; ?></h3>
<ul class="categories vertical">
    <?php foreach ($categories as $category) { ?>
    <?php if ($category['children']) { ?>    
    <li class="has_sub"><a class="sub_trigger" href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?><i class="icon-down-dir"></i></a> 
        <div class="wrapper" style="display:inline;width:250px;">
        <ul>
        <?php foreach ($category['children'] as $child) { ?>
        <li><a class="dark_bg_color_hover" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
        <?php } ?>
        </ul>
        </div>
    </li>
    <?php } else { ?>
    <li><a href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a></li>
    <?php } ?>
    <?php } ?>
</ul>
</div>