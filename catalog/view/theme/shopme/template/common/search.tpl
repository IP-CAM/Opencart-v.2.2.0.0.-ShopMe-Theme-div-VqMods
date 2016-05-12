<div class="search_wrapper">
<i class="icon-search button-search hover_icon"></i>
<div id="search">
<input type="text" name="search" class="search_input" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
<div class="categories">
<select name="category_id" class="form-control">
<option value="0"><?php echo $text_category; ?></option>
<?php foreach ($categories as $category_1) { ?>
<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
<?php foreach ($category_1['children'] as $category_2) { ?>
<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;-&nbsp;<?php echo $category_2['name']; ?></option>
<?php foreach ($category_2['children'] as $category_3) { ?>
<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;<?php echo $category_3['name']; ?></option>
<?php } ?>
<?php } ?>
<?php } ?>
</select>
</div>
</div>
</div>