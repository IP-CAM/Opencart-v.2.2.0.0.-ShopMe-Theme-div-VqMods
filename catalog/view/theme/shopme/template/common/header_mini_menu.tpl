<?php if (isset($sections)) { ?>    
<ul class="links_holder horizontal">
<?php foreach ($sections as $section) { ?>
<?php $group_row = 0; ?>
    <?php if ($section['groups']) { ?>
        <li class="has-sub top">
        <a class="sub_trigger" href="<?php echo isset($section['href']) ? $section['href'] : ''; ?>"><?php echo isset($section['title']) ? $section['title'] : ''; ?><i class="icon-down-dir"></i></a>
        <ul style="display:inline">
        <?php foreach($section['groups'] as $group){ ?>
        <li><a href="<?php echo isset($section['groups'][$group_row]['href']) ? $section['groups'][$group_row]['href'] : ''; ?>"><?php echo isset($section['groups'][$group_row]['title'][$lang_id]) ? $section['groups'][$group_row]['title'][$lang_id] : ''; ?></a></li>
        <?php $group_row++; ?>
        <?php } ?><!-- foreach groups ends -->
        </ul>
        </li>
    <?php } else { ?>
    	<li class="top"><a href="<?php echo isset($section['href']) ? $section['href'] : ''; ?>"><?php echo isset($section['title']) ? $section['title'] : ''; ?></a></li>       
    <?php } ?> 
<?php } ?> <!-- foreach sections ends -->
</ul>
<?php } ?> <!-- if sections ends -->