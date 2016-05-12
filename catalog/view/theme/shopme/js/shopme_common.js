function getURLVar(key) {
var value = [];
var query = String(document.location).split('?');
if (query[1]) {
var part = query[1].split('&');
for (i = 0; i < part.length; i++) {
var data = part[i].split('=');
if (data[0] && data[1]) {
value[data[0]] = data[1];
}}

if (value[key]) {
return value[key];
} else {
return '';
}}}

$(window).resize(function(){
// Hide mobile menu etc on window resize
if ($(window).width() > 767) {
$('.mini_menu .has-sub > ul').attr('style', function(i, style){return style.replace(/display[^;]+;?/g, ''); });
$('#column-left .wrapper').attr('style', function(i, style){return style.replace(/display[^;]+;?/g, ''); });
}
if ($(window).width() > 992) {
$('.main_menu .wrapper').attr('style', function(i, style){return style.replace(/display[^;]+;?/g, ''); });
$('.main_menu .has-sub > ul').attr('style', function(i, style){return style.replace(/display[^;]+;?/g, ''); });
}
var scroll_right = $(".container").offset().left;
$(".scroll_to_top").css('right', (scroll_right - 100) + 'px');
});

$(document).ready(function() {
// Quickview //
$(".quickview").colorbox({
iframe:true,
width:900,
maxWidth:"90%",
height:705,
maxHeight:"90%",
className: "quickview",
onClosed: function() {
$('#cart').load('index.php?route=common/cart/info #cart > *');
$('#header_wishlist').load('index.php?route=common/header_wishlist_compare/info #header_wishlist');
$('#header_compare').load('index.php?route=common/header_wishlist_compare/info #header_compare');
}});

// Popup login //
$("#popup_login").colorbox({
className: "login",
iframe: true,
width:370,
maxWidth:"90%",
height:390,
maxHeight:"90%",
initialWidth:"150",
initialHeight:"200"
});

// Equal height on product items
$('#content .product-grid.eq_height .item').matchHeight();

// Equal height on filter when position content top
$('#content #adv_ajaxfilter .option_box').matchHeight();

// Highlight any found errors
$('.text-danger').each(function() {
var element = $(this).parent().parent();

if (element.hasClass('form-group')) {
element.addClass('has-error');
}});

/* Search */
$('.button-search').bind('click', function() {
url = 'index.php?route=product/search';
var search = $('input[name=\'search\']').prop('value');
if (search) {
url += '&search=' + encodeURIComponent(search);
}
var category_id = $('select[name=\'category_id\']').prop('value');
if (category_id > 0) {
url += '&category_id=' + encodeURIComponent(category_id);
url += '&sub_category=true';
}
location = url;
});
$('input[name=\'search\']').bind('keydown', function(e) {
if (e.keyCode == 13) {
$('.button-search').trigger('click');
}
});
$('select[name=\'category_id\']').on('change', function() {
if (this.value == '0') {
$('input[name=\'sub_category\']').prop('disabled', true);
} else {
$('input[name=\'sub_category\']').prop('disabled', false);
}});
$('select[name=\'category_id\']').trigger('change');

/* Mega Menu */
var activeurl = window.location;
$('a[href="'+activeurl+'"]').first().closest('li.top').addClass('current');

/* Avoid drop down to go outside container */
if ($(window).width() > 992) {
$('.menu_wrapper ul.categories .wrapper').each(function() {
var menu = $('.header').offset();
var dropdown = $(this).parent().offset();
var dropdown_wrapper = $(this).offset();
var i = (dropdown.left + $(this).outerWidth()) - (menu.left - 15 + $('.header').outerWidth());
if (i > 0) {
$(this).css('margin-left', '-' + i + 'px');
}
var r = (menu.left - dropdown_wrapper.left + 15);
if (r > 0) {
	$(this).css('margin-right', '-' + r + 'px');
}
});
}


$('.has-sub > ul').attr('style', function(i, style){return style.replace(/display[^;]+;?/g, ''); });
$('.menu_wrapper .categories .wrapper').attr('style', function(i, style){return style.replace(/display[^;]+;?/g, ''); });
$('#column-left .categories .wrapper').attr('style', function(i, style){return style.replace(/display[^;]+;?/g, ''); });

$('.v_menu_trigger').click(function() {
$('.menu_wrapper .mini_menu_trigger').removeClass('active');
$('.menu_wrapper ul.links_holder').hide();
$(this).toggleClass('active')
$('.menu_wrapper ul.categories').toggleClass('active');
});

// Mobile Mini Menu  //
$('.mini_menu_trigger').click(function() {
$('.v_menu_trigger').removeClass('active');
$('ul.categories').removeClass('active');
$('ul.links_holder').slideToggle(500);
$('.mini_menu_trigger').toggleClass('active');
});           

$('.header .sub_trigger .icon-down-dir, .header_top_line_wrapper .sub_trigger .icon-down-dir').click(function(e) {
if ($(window).width() < 767) {
e.preventDefault();
$(this).parent().parent().find('>ul').stop(true, true).slideToggle(350)
.end().siblings().find('>ul').slideUp(350);
}
});

$('.main_menu .sub_trigger .icon-down-dir').click(function(e) {
if ($(window).width() < 991) {
e.preventDefault();
$(this).parent().parent().find('>ul').stop(true, true).slideToggle(350)
.end().siblings().find('>ul').slideUp(350);
}
});

$('ul.categories .sub_trigger .icon-down-dir').click(function(e) {
if ($(window).width() < 991) {
e.preventDefault();
$(this).parent().parent().find('>ul').stop(true, true).slideToggle(350)
.end().siblings().find('>ul').slideUp(350);
$(this).parent().parent().find('.wrapper').stop(true, true).slideToggle(350)
.end().siblings().find('.wrapper').slideUp(350);
}
});

// Sticky menu
var menu_to_top = $('.menu_wrapper').offset().top;
var stickymenu = function(){
var window_to_top = $(window).scrollTop();
if (window_to_top > menu_to_top) { 
$('.sticky').addClass('active');
} else {
$('.sticky').removeClass('active'); 
}};
$(window).scroll(function() {
stickymenu();
});

// Sticky header
var header_to_top = $('.row.header .logo').offset().top;
var stickyheader = function(){
var window_to_top = $(window).scrollTop();
if (window_to_top > header_to_top) { 
$('.header_sticky').addClass('active');
} else {
$('.header_sticky').removeClass('active'); 
}};
$(window).scroll(function() {
stickyheader();
});

// Move breadcrumb to header //
$('.breadcrumb').appendTo($('.breadcrumb_wrapper'));

// Fix for the header login/search field
$('.login_input').focus(function( ){
$('.login_drop_heading').stop(true,true).addClass('active');
});
$('.login_input').focusout(function( ){
$('.login_drop_heading').stop(true,true).removeClass('active');
});

$('.search_input').focus(function( ){
$('#search').stop(true,true).addClass('active');
});
$('.search_input').focusout(function( ){
$('#search').stop(true,true).removeClass('active');
$('#ajax_search_results').hide(200);
});	

// Open external links in new tab //
$('a.external').on('click',function(e){
e.preventDefault();
window.open($(this).attr('href'));
});

// Image thumb swipe  //
$(".product-list .item, .product-grid .item").hover(function() {
$(this).find(".image_hover").stop(true).fadeTo(600,1);
}, function() {
$(this).find(".image_hover").stop(true).fadeTo(300,0);
});

// Show special countdown on hover
$('.product-list .item, .product-grid .item').mousemove(function(e) {
$(this).find('.offer_popup').stop(true, true).fadeIn();
$(this).find('.offer_popup').offset({
top: e.pageY + 50,
left: e.pageX + 50
});
}).mouseleave(function() {
$('.offer_popup').fadeOut();
});

// Scroll to top button //
var scroll_right = $(".row.footer").offset().left;
$(".scroll_to_top").css('right', (scroll_right - 100) + 'px');

var windowScroll_t;
$(window).scroll(function(){
clearTimeout(windowScroll_t);
windowScroll_t = setTimeout(function() {
			
if ($(this).scrollTop() > 100)
{ $('.scroll_to_top').addClass('active'); }
else
{ $('.scroll_to_top').removeClass('active'); }
}, 200);
});

$('.scroll_top').click(function(){
$("html, body").animate({scrollTop: 0}, 1000);
return false;
});

// Add correct class to footer  //
$(".footer_modules").has(".full_width_wrapper").addClass("has_full_width");
$(".footer_modules").has(".box").addClass("has_content");

// Side widgets //
$(".side_widgets .btn-icon").click(function(){
if ($(this).parent().hasClass('open')) {
$(this).parent().removeClass('open');
} else {
$(".side_widgets .widget").removeClass('open');
$(this).parent().toggleClass('open');
}
});

// tooltips on hover
$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});

// Makes tooltips work on ajax generated content
$(document).ajaxStop(function() {
$('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
});
});

// Cart add remove functions
var cart = {
'add': function(product_id, quantity) {
$.ajax({
url: 'index.php?route=checkout/cart/add',
type: 'post',
data: 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
dataType: 'json',
beforeSend: function() {
$('#cart > button').button('loading');
},
success: function(json) {
$('.alert, .text-danger').remove();
$('#cart > button').button('reset');
if (json['redirect']) {
location = json['redirect'];
}
if (json['success']) {
$.colorbox({
html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-default" href="' + json['link_cart'] + '">' + json['text_cart'] + '</a> ' + '<a class="btn btn-primary" href="' + json['link_checkout'] + '">' + json['text_checkout'] + '</a></div></div>',
className: "login",
initialHeight:50,
initialWidth:50,
width:"90%",
maxWidth:400,
height:"90%",
maxHeight:200
});
$('#cart').load('index.php?route=common/cart/info #cart > *');
}}
});
},
'update': function(key, quantity) {
$.ajax({
url: 'index.php?route=checkout/cart/edit',
type: 'post',
data: 'key=' + key + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
dataType: 'json',
beforeSend: function() {
$('#cart > button').button('loading');
},
success: function(json) {
$('#cart > button').button('reset');
$('#cart-total').html(json['total']);
if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
location = 'index.php?route=checkout/cart';
} else {
$('#cart').load('index.php?route=common/cart/info #cart > *'); //Added
}}
});
},
'remove': function(key) {
$.ajax({
url: 'index.php?route=checkout/cart/remove',
type: 'post',
data: 'key=' + key,
dataType: 'json',
beforeSend: function() {
$('#cart > button').button('loading');
},
success: function(json) {
$('#cart > button').button('reset');
$('#cart-total').html(json['total']);
if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
location = 'index.php?route=checkout/cart';
} else {
$('#cart').load('index.php?route=common/cart/info #cart > *'); //Added
}}
});
}}

var voucher = {
'add': function() {
},
'remove': function(key) {
$.ajax({
url: 'index.php?route=checkout/cart/remove',
type: 'post',
data: 'key=' + key,
dataType: 'json',
beforeSend: function() {
$('#cart > button').button('loading');
},
complete: function() {
$('#cart > button').button('reset');
},
success: function(json) {
$('#cart-total').html(json['total']);
if (getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') {
location = 'index.php?route=checkout/cart';
} else {
$('#cart').load('index.php?route=common/cart/info #cart > *'); //Added
}
}
});
}
}

var wishlist = {
'add': function(product_id) {
$.ajax({
url: 'index.php?route=account/wishlist/add',
type: 'post',
data: 'product_id=' + product_id,
dataType: 'json',
success: function(json) {
$('.alert').remove();
if (json['success']) {
$.colorbox({
html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-primary" href="' + json['link_wishlist'] + '">' + json['text_wishlist'] + '</a></div></div>',
className: "login",
initialHeight:50,
initialWidth:50,
width:"90%",
maxWidth:400,
height:"90%",
maxHeight:200
});
}

if (json['info']) {
$.colorbox({
html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['info'] + '</span></div><div class="bottom"><a class="btn btn-primary" href="' + json['link_wishlist'] + '">' + json['text_wishlist'] + '</a></div></div>',
className: "login",
initialHeight:50,
initialWidth:50,
width:"90%",
maxWidth:400,
height:"90%",
maxHeight:200
});
}}
});
},
'remove': function() {
}
}

var compare = {
'add': function(product_id) {
$.ajax({
url: 'index.php?route=product/compare/add',
type: 'post',
data: 'product_id=' + product_id,
dataType: 'json',
success: function(json) {
$('.alert').remove();

if (json['success']) {
$.colorbox({
html:'<div class="cart_notification"><div class="product"><img src="' + json['image'] + '"/><span>' + json['success'] + '</span></div><div class="bottom"><a class="btn btn-primary" href="' + json['link_compare'] + '">' + json['text_compare'] + '</a></div></div>',
className: "login",
initialHeight:50,
initialWidth:50,
width:"90%",
maxWidth:400,
height:"90%",
maxHeight:200
});
$('#compare-total').html(json['total']);
$('#header_compare').html(json['compare_total']);
}}
});
},
'remove': function() {
}}

/* Agree to Terms */
$(document).delegate('.agree', 'click', function(e) {
e.preventDefault();
$('#modal-agree').remove();
var element = this;
$.ajax({
url: $(element).attr('href'),
type: 'get',
dataType: 'html',
success: function(data) {
html  = '<div id="modal-agree" class="modal">';
html += '  <div class="modal-dialog">';
html += '    <div class="modal-content">';
html += '      <div class="modal-header">';
html += '        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>';
html += '        <h4 class="modal-title">' + $(element).text() + '</h4>';
html += '      </div>';
html += '      <div class="modal-body">' + data + '</div>';
html += '    </div';
html += '  </div>';
html += '</div>';
$('body').append(html);
$('#modal-agree').modal('show');
}
});
});

// Autocomplete */
(function($) {
$.fn.autocomplete = function(option) {
return this.each(function() {
this.timer = null;
this.items = new Array();

$.extend(this, option);
$(this).attr('autocomplete', 'off');

// Focus
$(this).on('focus', function() {
this.request();
});

// Blur
$(this).on('blur', function() {
setTimeout(function(object) {
object.hide();
}, 200, this);				
});

// Keydown
$(this).on('keydown', function(event) {
switch(event.keyCode) {
case 27: // escape
this.hide();
break;
default:
this.request();
break;
}				
});

// Click
this.click = function(event) {
event.preventDefault();
value = $(event.target).parent().attr('data-value');
if (value && this.items[value]) {
this.select(this.items[value]);
}}

// Show
this.show = function() {
var pos = $(this).position();

$(this).siblings('ul.dropdown-menu').css({
top: pos.top + $(this).outerHeight(),
left: pos.left
});

$(this).siblings('ul.dropdown-menu').show();
}

// Hide
this.hide = function() {
$(this).siblings('ul.dropdown-menu').hide();
}		

// Request
this.request = function() {
clearTimeout(this.timer);

this.timer = setTimeout(function(object) {
object.source($(object).val(), $.proxy(object.response, object));
}, 200, this);
}

// Response
this.response = function(json) {
html = '';

if (json.length) {
for (i = 0; i < json.length; i++) {
this.items[json[i]['value']] = json[i];
}

for (i = 0; i < json.length; i++) {
if (!json[i]['category']) {
html += '<li data-value="' + json[i]['value'] + '"><a href="#">' + json[i]['label'] + '</a></li>';
}
}

// Get all the ones with a categories
var category = new Array();

for (i = 0; i < json.length; i++) {
if (json[i]['category']) {
if (!category[json[i]['category']]) {
	category[json[i]['category']] = new Array();
	category[json[i]['category']]['name'] = json[i]['category'];
	category[json[i]['category']]['item'] = new Array();
}

category[json[i]['category']]['item'].push(json[i]);
}}

for (i in category) {
html += '<li class="dropdown-header">' + category[i]['name'] + '</li>';

for (j = 0; j < category[i]['item'].length; j++) {
html += '<li data-value="' + category[i]['item'][j]['value'] + '"><a href="#">&nbsp;&nbsp;&nbsp;' + category[i]['item'][j]['label'] + '</a></li>';
}}}

if (html) {
this.show();
} else {
this.hide();
}

$(this).siblings('ul.dropdown-menu').html(html);
}

$(this).after('<ul class="dropdown-menu"></ul>');
$(this).siblings('ul.dropdown-menu').delegate('a', 'click', $.proxy(this.click, this));	

});
}
})(window.jQuery);