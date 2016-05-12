<?php if ($reviews) { ?>

<?php foreach ($reviews as $review) { ?>
<div class="review-list">
  <div class="author"><span class="name"><?php echo $review['author']; ?></span>, <?php echo $review['date_added']; ?></div>
  
  
  <span class="rating_stars rating r<?php echo $review['rating']; ?>">
       <i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i>
       </span>
  
  
  <div class="text"><?php echo $review['text']; ?></div>
</div>
<?php } ?>
<div class="text-right"><?php echo $pagination; ?></div>
<?php } else { ?>
<p><?php echo $text_no_reviews; ?></p>
<?php } ?>