<div class="box">
<h3><?php echo $heading_title; ?></h3>
<ul class="category_tree">
    <?php foreach ($categories as $category) { ?>
        <?php $category_id = $category['category_id']; ?>
        <?php if ($category['category_id'] == $category_id) { ?>
        <li><a class="dark_bg_color_hover" href="<?php echo $category['href']; ?>" ><?php echo $category['name']; ?></a> 
        <?php } ?>
    <?php if ($category['children']) { ?>
    <ul>
    <?php foreach ($category['children'] as $child) { ?>
    <li><a class="dark_bg_color_hover" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
    <?php } ?>
    </ul>
    <?php } ?>
    </li>
    <?php } ?>
</ul>
</div>