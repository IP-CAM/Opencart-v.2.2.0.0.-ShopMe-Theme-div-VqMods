<?php
class ControllerModuleShopme extends Controller {
	private $error = array(); 
	
	public function index() {   
		$this->load->language('module/shopme');
		$this->load->model('localisation/language');
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('setting/setting');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('shopme', $this->request->post);	
			
			if (isset($this->request->post['save']) && $this->request->post['save'] == 'stay') {
				$this->session->data['success'] = $this->language->get('text_success');
				$this->response->redirect($this->url->link('module/shopme', 'token=' . $this->session->data['token'], true)); 
			}
				
			$this->session->data['success'] = $this->language->get('text_success');
			$this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], true));
		}
		
		$data['languages'] = $this->model_localisation_language->getLanguages();
		
		
		// Language starts
		$data['heading_title'] = $this->language->get('heading_title');
		$data['button_save'] = $this->language->get('button_save');
		$data['button_save_stay'] = $this->language->get('button_save_stay');
		$data['button_cancel'] = $this->language->get('button_cancel');
		
		// Tabs
		$data['text_tab_general'] = $this->language->get('text_tab_general');
		$data['text_tab_design'] = $this->language->get('text_tab_design');
		$data['text_tab_custom_css'] = $this->language->get('text_tab_custom_css');
		
		// General settings
		$data['text_heading_google_fonts'] = $this->language->get('text_heading_google_fonts');
		$data['text_use_google_fonts'] = $this->language->get('text_use_google_fonts');
		$data['text_google_font_family'] = $this->language->get('text_google_font_family');
		$data['text_google_font_weight'] = $this->language->get('text_google_font_weight');
		$data['text_google_font_latin_extended'] = $this->language->get('text_google_font_latin_extended');

		$data['text_heading_layout'] = $this->language->get('text_heading_layout');
		$data['text_custom_top_promo_message'] = $this->language->get('text_custom_top_promo_message');
		$data['text_custom_top_promo_message_help'] = $this->language->get('text_custom_top_promo_message_help');
		
		$data['text_menu_mega_second_image_w'] = $this->language->get('text_menu_mega_second_image_w');
		$data['text_menu_mega_second_image_h'] = $this->language->get('text_menu_mega_second_image_h');
		
		$data['text_use_custom_menu_link1'] = $this->language->get('text_use_custom_menu_link1');
		$data['text_use_custom_menu_title1'] = $this->language->get('text_use_custom_menu_title1');
		$data['text_use_custom_menu_url1'] = $this->language->get('text_use_custom_menu_url1');
		$data['text_use_custom_menu_link2'] = $this->language->get('text_use_custom_menu_link2');
		$data['text_use_custom_menu_title2'] = $this->language->get('text_use_custom_menu_title2');
		$data['text_use_custom_menu_url2'] = $this->language->get('text_use_custom_menu_url2');
		$data['text_use_custom_menu_title2'] = $this->language->get('text_use_custom_menu_title2');
		$data['text_use_custom_menu_block'] = $this->language->get('text_use_custom_menu_block');
		$data['text_use_custom_menu_block_title'] = $this->language->get('text_use_custom_menu_block_title');
		$data['text_menu_custom_block_content'] = $this->language->get('text_menu_custom_block_content');
		$data['text_menu_custom_block_content_help'] = $this->language->get('text_menu_custom_block_content_help');
		$data['text_heading_product_page'] = $this->language->get('text_heading_product_page');
		$data['text_heading_product_listings'] = $this->language->get('text_heading_product_listings');
		$data['text_grid_home'] = $this->language->get('text_grid_home');
		$data['text_grid_category'] = $this->language->get('text_grid_category');
		$data['text_grid_related'] = $this->language->get('text_grid_related');
		$data['text_default_product_listing'] = $this->language->get('text_default_product_listing');
		$data['text_percentage_sale_badge'] = $this->language->get('text_percentage_sale_badge');
		$data['text_rollover_effect'] = $this->language->get('text_rollover_effect');
		
		$data['text_heading_footer_social'] = $this->language->get('text_heading_footer_social');
		
		
		$data['text_upload_payment_icon'] = $this->language->get('text_upload_payment_icon');
		$data['text_browse'] = $this->language->get('text_browse');
		$data['text_clear'] = $this->language->get('text_clear');
		
		
		
		
		// Design settings
		$data['text_use_custom_design'] = $this->language->get('text_use_custom_design');
		$data['text_reset_design'] = $this->language->get('text_reset_design');
		$data['text_reset_design_info'] = $this->language->get('text_reset_design_info');
		$data['text_heading_header'] = $this->language->get('text_heading_header');
		$data['text_header_background'] = $this->language->get('text_header_background');

		$data['text_top_border_background'] = $this->language->get('text_top_border_background');
		$data['text_top_border_opacity'] = $this->language->get('text_top_border_opacity');
		$data['text_top_border_text'] = $this->language->get('text_top_border_text');
		$data['text_top_border_text_hover'] = $this->language->get('text_top_border_text_hover');
		$data['text_lang_curr_style'] = $this->language->get('text_lang_curr_style');
		$data['text_header_text_color'] = $this->language->get('text_header_text_color');
		$data['text_heading_design_usermenu'] = $this->language->get('text_heading_design_usermenu');
		$data['text_user_menu_background'] = $this->language->get('text_user_menu_background');
		$data['text_user_menu_background_opacity'] = $this->language->get('text_user_menu_background_opacity');
		$data['text_user_menu_background_opacity_hover'] = $this->language->get('text_user_menu_background_opacity_hover');
		$data['text_opacity_help'] = $this->language->get('text_opacity_help');
		
		$data['text_heading_search_field'] = $this->language->get('text_heading_search_field');
		$data['text_search_field_text_color'] = $this->language->get('text_search_field_text_color');
		$data['text_search_field_background'] = $this->language->get('text_search_field_background');
		$data['text_search_field_background_hover'] = $this->language->get('text_search_field_background_hover');
		$data['text_search_field_icons'] = $this->language->get('text_search_field_icons');
		
		$data['text_user_menu_icon'] = $this->language->get('text_user_menu_icon');
		$data['text_user_menu_link'] = $this->language->get('text_user_menu_link');
		$data['text_user_menu_link_hover'] = $this->language->get('text_user_menu_link_hover');
		$data['text_heading_design_main_menu'] = $this->language->get('text_heading_design_main_menu');
		$data['text_main_menu_background'] = $this->language->get('text_main_menu_background');
		$data['text_main_menu_pattern1'] = $this->language->get('text_main_menu_pattern1');
		$data['text_main_menu_pattern2'] = $this->language->get('text_main_menu_pattern2');
		$data['text_main_menu_link_color'] = $this->language->get('text_main_menu_link_color');
		$data['text_main_menu_link_shadow'] = $this->language->get('text_main_menu_link_shadow');
		$data['text_main_menu_icon_style'] = $this->language->get('text_main_menu_icon_style');
		$data['text_heading_design_content'] = $this->language->get('text_heading_design_content');
		$data['text_primary_color'] = $this->language->get('text_primary_color');
		$data['text_secondary_color'] = $this->language->get('text_secondary_color');
		$data['text_h1_color'] = $this->language->get('text_h1_color');
		$data['text_sub_heading_color'] = $this->language->get('text_sub_heading_color');
		
		$data['text_highlight_background_color'] = $this->language->get('text_highlight_background_color');
		$data['text_highlight_background_help'] = $this->language->get('text_highlight_background_help');
		$data['text_salebadge_background'] = $this->language->get('text_salebadge_background');
		$data['text_price_color'] = $this->language->get('text_price_color');
		
		$data['text_heading_modules'] = $this->language->get('text_heading_modules');
		$data['text_module_heading_background'] = $this->language->get('text_module_heading_background');
		$data['text_module_heading_color'] = $this->language->get('text_module_heading_color');
		
		$data['text_heading_product_tabs'] = $this->language->get('text_heading_product_tabs');
		$data['text_product_tabs_heading'] = $this->language->get('text_product_tabs_heading');
		$data['text_product_tabs_content'] = $this->language->get('text_product_tabs_content');
		
		$data['text_heading_buttons'] = $this->language->get('text_heading_buttons');
		$data['text_button_color'] = $this->language->get('text_button_color');
		$data['text_button_background'] = $this->language->get('text_button_background');
		$data['text_button_color_hover'] = $this->language->get('text_button_color_hover');
		$data['text_button_background_hover'] = $this->language->get('text_button_background_hover');
		$data['text_button2_color'] = $this->language->get('text_button2_color');
		$data['text_button2_background'] = $this->language->get('text_button2_background');
		
		$data['text_heading_icons'] = $this->language->get('text_heading_icons');
		$data['text_icons_background'] = $this->language->get('text_icons_background');
		$data['text_icons_background_help'] = $this->language->get('text_icons_background_help');
		$data['text_icons_background_hover'] = $this->language->get('text_icons_background_hover');
		
		$data['text_heading_design_footer'] = $this->language->get('text_heading_design_footer');
		$data['text_footer_background'] = $this->language->get('text_footer_background');
		$data['text_footer_pattern1'] = $this->language->get('text_footer_pattern1');
		$data['text_footer_pattern2'] = $this->language->get('text_footer_pattern2');
		$data['text_footer_social_icons_style'] = $this->language->get('text_footer_social_icons_style');
		$data['text_footer_social_icons_background'] = $this->language->get('text_footer_social_icons_background');
		$data['text_footer_social_icons_hover'] = $this->language->get('text_footer_social_icons_hover');
		$data['text_footer_content_background'] = $this->language->get('text_footer_content_background');
		$data['text_footer_headings'] = $this->language->get('text_footer_headings');
		$data['text_footer_links'] = $this->language->get('text_footer_links');
		$data['text_footer_links_hover'] = $this->language->get('text_footer_links_hover');
		$data['text_company_info_icons_style'] = $this->language->get('text_company_info_icons_style');
		
		// Custom CSS 
		$data['text_use_custom_css'] = $this->language->get('text_use_custom_css');
		$data['text_custom_css'] = $this->language->get('text_custom_css');
		$data['text_custom_css_help'] = $this->language->get('text_custom_css_help');
		// Language ends
		
		
 		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
			
		} 
		
		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
  		$data['breadcrumbs'] = array();

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], true),
      		'separator' => false
   		);

   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], true),
      		'separator' => ' :: '
   		);
		
		
		$data['token'] = $this->session->data['token'];
		
		// Content starts
		// Font settings
		$data['shopme_use_google_fonts_list'] = $this->language->get('shopme_use_google_fonts_list');
		if (isset($this->request->post['shopme_use_google_fonts'])) {
			$data['shopme_use_google_fonts'] = $this->request->post['shopme_use_google_fonts'];
		} else {
			$data['shopme_use_google_fonts'] = $this->config->get('shopme_use_google_fonts');
		}
		
		
		// General settings
		$data['shopme_container_layout_list'] = $this->language->get('shopme_container_layout_list');
		if (isset($this->request->post['shopme_container_layout'])) {
			$data['shopme_container_layout'] = $this->request->post['shopme_container_layout'];
		} else {
			$data['shopme_container_layout'] = $this->config->get('shopme_container_layout');
		}
		
		
		$data['shopme_use_retina_list'] = $this->language->get('shopme_use_retina_list');
		
		if (isset($this->request->post['shopme_use_retina'])) {
			$data['shopme_use_retina'] = $this->request->post['shopme_use_retina'];
		} else {
			$data['shopme_use_retina'] = $this->config->get('shopme_use_retina');
		}
		
		
		if (isset($this->request->post['shopme_top_promo_message'])) {
			$data['shopme_top_promo_message'] = $this->request->post['shopme_top_promo_message'];
		} else {
			$data['shopme_top_promo_message'] = $this->config->get('shopme_top_promo_message');
		}

		
		$data['shopme_menu_sticky_list'] = $this->language->get('shopme_menu_sticky_list');
		
		if (isset($this->request->post['shopme_menu_sticky'])) {
			$data['shopme_menu_sticky'] = $this->request->post['shopme_menu_sticky'];
		} else {
			$data['shopme_menu_sticky'] = $this->config->get('shopme_menu_sticky');
		}
		

		if (isset($this->request->post['shopme_text_ql'])) {
			$data['shopme_text_ql'] = $this->request->post['shopme_text_ql'];
		} else {
			$data['shopme_text_ql'] = $this->config->get('shopme_text_ql');
		}
		
		
		if (isset($this->request->post['shopme_google_map'])) {
			$data['shopme_google_map'] = $this->request->post['shopme_google_map'];
		} else {
			$data['shopme_google_map'] = $this->config->get('shopme_google_map');
		}
		
		
		$data['shopme_grid_category_list'] = $this->language->get('shopme_grid_category_list');
		if (isset($this->request->post['shopme_grid_category'])) {
			$data['shopme_grid_category'] = $this->request->post['shopme_grid_category'];
		} else {
			$data['shopme_grid_category'] = $this->config->get('shopme_grid_category');
		}
		
		$data['shopme_grid_related_list'] = $this->language->get('shopme_grid_related_list');
		if (isset($this->request->post['shopme_grid_related'])) {
			$data['shopme_grid_related'] = $this->request->post['shopme_grid_related'];
		} else {
			$data['shopme_grid_related'] = $this->config->get('shopme_grid_related');
		}
		
		$data['shopme_product_share_list'] = $this->language->get('shopme_product_share_list');
		if (isset($this->request->post['shopme_product_share'])) {
			$data['shopme_product_share'] = $this->request->post['shopme_product_share'];
		} else {
			$data['shopme_product_share'] = $this->config->get('shopme_product_share');
		}
		
		$data['shopme_product_meta_list'] = $this->language->get('shopme_product_meta_list');
		if (isset($this->request->post['shopme_product_meta'])) {
			$data['shopme_product_meta'] = $this->request->post['shopme_product_meta'];
		} else {
			$data['shopme_product_meta'] = $this->config->get('shopme_product_meta');
		}
		
		$data['shopme_product_countdown_list'] = $this->language->get('shopme_product_countdown_list');
		if (isset($this->request->post['shopme_product_countdown'])) {
			$data['shopme_product_countdown'] = $this->request->post['shopme_product_countdown'];
		} else {
			$data['shopme_product_countdown'] = $this->config->get('shopme_product_countdown');
		}
		
		$data['shopme_tax_list'] = $this->language->get('shopme_tax_list');
		if (isset($this->request->post['shopme_tax'])) {
			$data['shopme_tax'] = $this->request->post['shopme_tax'];
		} else {
			$data['shopme_tax'] = $this->config->get('shopme_tax');
		}
		
		
		
		$data['shopme_product_zoom_list'] = $this->language->get('shopme_product_zoom_list');
		if (isset($this->request->post['shopme_product_zoom'])) {
			$data['shopme_product_zoom'] = $this->request->post['shopme_product_zoom'];
		} else {
			$data['shopme_product_zoom'] = $this->config->get('shopme_product_zoom');
		}
		
		$data['shopme_image_options_list'] = $this->language->get('shopme_image_options_list');
		if (isset($this->request->post['shopme_image_options'])) {
			$data['shopme_image_options'] = $this->request->post['shopme_image_options'];
		} else {
			$data['shopme_image_options'] = $this->config->get('shopme_image_options');
		}
		

		
		
		
		$data['shopme_product_yousave_list'] = $this->language->get('shopme_product_yousave_list');
		if (isset($this->request->post['shopme_product_yousave'])) {
			$data['shopme_product_yousave'] = $this->request->post['shopme_product_yousave'];
		} else {
			$data['shopme_product_yousave'] = $this->config->get('shopme_product_yousave');
		}
		
		
		$data['shopme_category_refine_list'] = $this->language->get('shopme_category_refine_list');
		if (isset($this->request->post['shopme_category_refine'])) {
			$data['shopme_category_refine'] = $this->request->post['shopme_category_refine'];
		} else {
			$data['shopme_category_refine'] = $this->config->get('shopme_category_refine');
		}
		
		$data['shopme_category_thumb_list'] = $this->language->get('shopme_category_thumb_list');
		if (isset($this->request->post['shopme_category_thumb'])) {
			$data['shopme_category_thumb'] = $this->request->post['shopme_category_thumb'];
		} else {
			$data['shopme_category_thumb'] = $this->config->get('shopme_category_thumb');
		}
		
		$data['shopme_category_per_row_list'] = $this->language->get('shopme_category_per_row_list');
		if (isset($this->request->post['shopme_category_per_row'])) {
			$data['shopme_category_per_row'] = $this->request->post['shopme_category_per_row'];
		} else {
			$data['shopme_category_per_row'] = $this->config->get('shopme_category_per_row');
		}
		
		if (isset($this->request->post['shopme_refine_image_w'])) {
			$data['shopme_refine_image_w'] = $this->request->post['shopme_refine_image_w'];
		} else {
			$data['shopme_refine_image_w'] = $this->config->get('shopme_refine_image_w');
		}
		
		if (isset($this->request->post['shopme_refine_image_h'])) {
			$data['shopme_refine_image_h'] = $this->request->post['shopme_refine_image_h'];
		} else {
			$data['shopme_refine_image_h'] = $this->config->get('shopme_refine_image_h');
		}
		
		$data['shopme_brands_per_row_list'] = $this->language->get('shopme_brands_per_row_list');
		if (isset($this->request->post['shopme_brands_per_row'])) {
			$data['shopme_brands_per_row'] = $this->request->post['shopme_brands_per_row'];
		} else {
			$data['shopme_brands_per_row'] = $this->config->get('shopme_brands_per_row');
		}
		
		if (isset($this->request->post['shopme_brands_image_w'])) {
			$data['shopme_brands_image_w'] = $this->request->post['shopme_brands_image_w'];
		} else {
			$data['shopme_brands_image_w'] = $this->config->get('shopme_brands_image_w');
		}
		
		if (isset($this->request->post['shopme_brands_image_h'])) {
			$data['shopme_brands_image_h'] = $this->request->post['shopme_brands_image_h'];
		} else {
			$data['shopme_brands_image_h'] = $this->config->get('shopme_brands_image_h');
		}
		
		$data['shopme_default_product_style_list'] = $this->language->get('shopme_default_product_style_list');
		if (isset($this->request->post['shopme_default_product_style'])) {
			$data['shopme_default_product_style'] = $this->request->post['shopme_default_product_style'];
		} else {
			$data['shopme_default_product_style'] = $this->config->get('shopme_default_product_style');
		}
		
		$data['shopme_default_view_list'] = $this->language->get('shopme_default_view_list');
		if (isset($this->request->post['shopme_default_view'])) {
			$data['shopme_default_view'] = $this->request->post['shopme_default_view'];
		} else {
			$data['shopme_default_view'] = $this->config->get('shopme_default_view');
		}
		
		$data['shopme_rollover_effect_list'] = $this->language->get('shopme_rollover_effect_list');
		if (isset($this->request->post['shopme_rollover_effect'])) {
			$data['shopme_rollover_effect'] = $this->request->post['shopme_rollover_effect'];
		} else {
			$data['shopme_rollover_effect'] = $this->config->get('shopme_rollover_effect');
		}
		
		$data['shopme_percentage_sale_badge_list'] = $this->language->get('shopme_percentage_sale_badge_list');
		if (isset($this->request->post['shopme_percentage_sale_badge'])) {
			$data['shopme_percentage_sale_badge'] = $this->request->post['shopme_percentage_sale_badge'];
		} else {
			$data['shopme_percentage_sale_badge'] = $this->config->get('shopme_percentage_sale_badge');
		}
		
		$data['shopme_countdown_list'] = $this->language->get('shopme_countdown_list');
		if (isset($this->request->post['shopme_countdown'])) {
			$data['shopme_countdown'] = $this->request->post['shopme_countdown'];
		} else {
			$data['shopme_countdown'] = $this->config->get('shopme_countdown');
		}
		
		
		$data['shopme_facebook_widget_list'] = $this->language->get('shopme_facebook_widget_list');
		if (isset($this->request->post['shopme_facebook_widget'])) {
			$data['shopme_facebook_widget'] = $this->request->post['shopme_facebook_widget'];
		} else {
			$data['shopme_facebook_widget'] = $this->config->get('shopme_facebook_widget');
		}
		
		$data['shopme_twitter_widget_list'] = $this->language->get('shopme_twitter_widget_list');
		if (isset($this->request->post['shopme_twitter_widget'])) {
			$data['shopme_twitter_widget'] = $this->request->post['shopme_twitter_widget'];
		} else {
			$data['shopme_twitter_widget'] = $this->config->get('shopme_twitter_widget');
		}
		
		$data['shopme_contact_widget_list'] = $this->language->get('shopme_contact_widget_list');
		if (isset($this->request->post['shopme_contact_widget'])) {
			$data['shopme_contact_widget'] = $this->request->post['shopme_contact_widget'];
		} else {
			$data['shopme_contact_widget'] = $this->config->get('shopme_contact_widget');
		}
		
		$data['shopme_location_widget_list'] = $this->language->get('shopme_location_widget_list');
		if (isset($this->request->post['shopme_location_widget'])) {
			$data['shopme_location_widget'] = $this->request->post['shopme_location_widget'];
		} else {
			$data['shopme_location_widget'] = $this->config->get('shopme_location_widget');
		}
		
		
		$data['shopme_footer_columns_list'] = $this->language->get('shopme_footer_columns_list');
		if (isset($this->request->post['shopme_footer_columns'])) {
			$data['shopme_footer_columns'] = $this->request->post['shopme_footer_columns'];
		} else {
			$data['shopme_footer_columns'] = $this->config->get('shopme_footer_columns');
		}
		
				
		if (isset($this->request->post['shopme_footer_custom_block'])) {
			$data['shopme_footer_custom_block'] = $this->request->post['shopme_footer_custom_block'];
		} else {
			$data['shopme_footer_custom_block'] = $this->config->get('shopme_footer_custom_block');
		}
		
		$data['shopme_product_hurry_list'] = $this->language->get('shopme_product_hurry_list');
		if (isset($this->request->post['shopme_product_hurry'])) {
			$data['shopme_product_hurry'] = $this->request->post['shopme_product_hurry'];
		} else {
			$data['shopme_product_hurry'] = $this->config->get('shopme_product_hurry');
		}
		
		$this->load->model('tool/image');
		
		
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		if (isset($this->request->post['shopme_footer_payment_icon'])) {
			$data['shopme_footer_payment_icon'] = $this->request->post['shopme_footer_payment_icon'];
		} else {
			$data['shopme_footer_payment_icon'] = $this->config->get('shopme_footer_payment_icon');
		}
		
		if (isset($this->request->post['shopme_footer_payment_icon']) && is_file(DIR_IMAGE . $this->request->post['shopme_footer_payment_icon'])) {
			$data['shopme_footer_payment'] = $this->model_tool_image->resize($this->request->post['shopme_footer_payment_icon'], 100, 100);
		} elseif ($this->config->get('shopme_footer_payment_icon') && is_file(DIR_IMAGE . $this->config->get('shopme_footer_payment_icon'))) {
			$data['shopme_footer_payment'] = $this->model_tool_image->resize($this->config->get('shopme_footer_payment_icon'), 100, 100);
		} else {
			$data['shopme_footer_payment'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		if (isset($this->request->post['shopme_custom_bg_icon'])) {
			$data['shopme_custom_bg_icon'] = $this->request->post['shopme_custom_bg_icon'];
		} else {
			$data['shopme_custom_bg_icon'] = $this->config->get('shopme_custom_bg_icon');
		}
		
		if (isset($this->request->post['shopme_custom_bg_icon']) && is_file(DIR_IMAGE . $this->request->post['shopme_custom_bg_icon'])) {
			$data['shopme_custom_bg'] = $this->model_tool_image->resize($this->request->post['shopme_custom_bg_icon'], 100, 100);
		} elseif ($this->config->get('shopme_custom_bg_icon') && is_file(DIR_IMAGE . $this->config->get('shopme_custom_bg_icon'))) {
			$data['shopme_custom_bg'] = $this->model_tool_image->resize($this->config->get('shopme_custom_bg_icon'), 100, 100);
		} else {
			$data['shopme_custom_bg'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		
		
		
		
		
		
		
		
		$data['shopme_use_cookie_list'] = $this->language->get('shopme_use_cookie_list');
		if (isset($this->request->post['shopme_use_cookie'])) {
			$data['shopme_use_cookie'] = $this->request->post['shopme_use_cookie'];
		} else {
			$data['shopme_use_cookie'] = $this->config->get('shopme_use_cookie');
		}
		
		if (isset($this->request->post['shopme_cookie_text'])) {
			$data['shopme_cookie_text'] = $this->request->post['shopme_cookie_text'];
		} else {
			$data['shopme_cookie_text'] = $this->config->get('shopme_cookie_text');
		}
		
		if (isset($this->request->post['shopme_readmore_url'])) {
			$data['shopme_readmore_url'] = $this->request->post['shopme_readmore_url'];
		} else {
			$data['shopme_readmore_url'] = $this->config->get('shopme_readmore_url');
		}
		
		if (isset($this->request->post['shopme_cookie_button_readmore'])) {
			$data['shopme_cookie_button_readmore'] = $this->request->post['shopme_cookie_button_readmore'];
		} else {
			$data['shopme_cookie_button_readmore'] = $this->config->get('shopme_cookie_button_readmore');
		}
		
		if (isset($this->request->post['shopme_cookie_button_accept'])) {
			$data['shopme_cookie_button_accept'] = $this->request->post['shopme_cookie_button_accept'];
		} else {
			$data['shopme_cookie_button_accept'] = $this->config->get('shopme_cookie_button_accept');
		}
		
		$data['shopme_use_ie_list'] = $this->language->get('shopme_use_ie_list');
		if (isset($this->request->post['shopme_use_ie'])) {
			$data['shopme_use_ie'] = $this->request->post['shopme_use_ie'];
		} else {
			$data['shopme_use_ie'] = $this->config->get('shopme_use_ie');
		}
		
		if (isset($this->request->post['shopme_ie_text'])) {
			$data['shopme_ie_text'] = $this->request->post['shopme_ie_text'];
		} else {
			$data['shopme_ie_text'] = $this->config->get('shopme_ie_text');
		}
		
		if (isset($this->request->post['shopme_ie_update_text'])) {
			$data['shopme_ie_update_text'] = $this->request->post['shopme_ie_update_text'];
		} else {
			$data['shopme_ie_update_text'] = $this->config->get('shopme_ie_update_text');
		}
		
		if (isset($this->request->post['shopme_ie_url'])) {
			$data['shopme_ie_url'] = $this->request->post['shopme_ie_url'];
		} else {
			$data['shopme_ie_url'] = $this->config->get('shopme_ie_url');
		}
		
		// General settings ends
		
		// Design options
		
		$data['shopme_header_style_list'] = $this->language->get('shopme_header_style_list');
		
		if (isset($this->request->post['shopme_header_style'])) {
			$data['shopme_header_style'] = $this->request->post['shopme_header_style'];
		} else {
			$data['shopme_header_style'] = $this->config->get('shopme_header_style');
		}
		
		$data['shopme_header_login_list'] = $this->language->get('shopme_header_login_list');
		
		if (isset($this->request->post['shopme_header_login'])) {
			$data['shopme_header_login'] = $this->request->post['shopme_header_login'];
		} else {
			$data['shopme_header_login'] = $this->config->get('shopme_header_login');
		}
		
		$data['shopme_header_wishlist_list'] = $this->language->get('shopme_header_wishlist_list');
		
		if (isset($this->request->post['shopme_header_wishlist'])) {
			$data['shopme_header_wishlist'] = $this->request->post['shopme_header_wishlist'];
		} else {
			$data['shopme_header_wishlist'] = $this->config->get('shopme_header_wishlist');
		}
		
		$data['shopme_header_compare_list'] = $this->language->get('shopme_header_compare_list');
		
		if (isset($this->request->post['shopme_header_compare'])) {
			$data['shopme_header_compare'] = $this->request->post['shopme_header_compare'];
		} else {
			$data['shopme_header_compare'] = $this->config->get('shopme_header_compare');
		}
		
		$data['shopme_header_search_list'] = $this->language->get('shopme_header_search_list');
		
		if (isset($this->request->post['shopme_header_search'])) {
			$data['shopme_header_search'] = $this->request->post['shopme_header_search'];
		} else {
			$data['shopme_header_search'] = $this->config->get('shopme_header_search');
		}
		
		$data['shopme_header_cart_list'] = $this->language->get('shopme_header_cart_list');
		
		if (isset($this->request->post['shopme_header_cart'])) {
			$data['shopme_header_cart'] = $this->request->post['shopme_header_cart'];
		} else {
			$data['shopme_header_cart'] = $this->config->get('shopme_header_cart');
		}
		
		$data['shopme_menu_type_list'] = $this->language->get('shopme_menu_type_list');
		
		if (isset($this->request->post['shopme_menu_type'])) {
			$data['shopme_menu_type'] = $this->request->post['shopme_menu_type'];
		} else {
			$data['shopme_menu_type'] = $this->config->get('shopme_menu_type');
		}
		
		// Fonts
		$data['shopme_use_custom_font_list'] = $this->language->get('shopme_use_custom_font_list');
		
		if (isset($this->request->post['shopme_use_custom_font'])) {
			$data['shopme_use_custom_font'] = $this->request->post['shopme_use_custom_font'];
		} else {
			$data['shopme_use_custom_font'] = $this->config->get('shopme_use_custom_font');
		}
		
		if (isset($this->request->post['shopme_font1_import'])) {
			$data['shopme_font1_import'] = $this->request->post['shopme_font1_import'];
		} else {
			$data['shopme_font1_import'] = $this->config->get('shopme_font1_import');
		}
		
		if (isset($this->request->post['shopme_font1_name'])) {
			$data['shopme_font1_name'] = $this->request->post['shopme_font1_name'];
		} else {
			$data['shopme_font1_name'] = $this->config->get('shopme_font1_name');
		}
		
		
		
		
		
		$data['shopme_use_font_regular_list'] = $this->language->get('shopme_use_font_regular_list');
		
		if (isset($this->request->post['shopme_use_font_regular'])) {
			$data['shopme_use_font_regular'] = $this->request->post['shopme_use_font_regular'];
		} else {
			$data['shopme_use_font_regular'] = $this->config->get('shopme_use_font_regular');
		}
		
		
		
		$data['shopme_use_font_bold_list'] = $this->language->get('shopme_use_font_bold_list');
		
		if (isset($this->request->post['shopme_use_font_bold'])) {
			$data['shopme_use_font_bold'] = $this->request->post['shopme_use_font_bold'];
		} else {
			$data['shopme_use_font_bold'] = $this->config->get('shopme_use_font_bold');
		}
		
		// Fonts
		
		$data['shopme_use_custom_list'] = $this->language->get('shopme_use_custom_list');
		
		if (isset($this->request->post['shopme_use_custom'])) {
			$data['shopme_use_custom'] = $this->request->post['shopme_use_custom'];
		} else {
			$data['shopme_use_custom'] = $this->config->get('shopme_use_custom');
		}
		
		if (isset($this->request->post['shopme_body_background'])) {
			$data['shopme_body_background'] = $this->request->post['shopme_body_background'];
		} else {
			$data['shopme_body_background'] = $this->config->get('shopme_body_background');
		}
		
		$data['shopme_body_image_list'] = $this->language->get('shopme_body_image_list');
		if (isset($this->request->post['shopme_body_image'])) {
			$data['shopme_body_image'] = $this->request->post['shopme_body_image'];
		} else {
			$data['shopme_body_image'] = $this->config->get('shopme_body_image');
		}
		
		
		
		if (isset($this->request->post['shopme_top_border_background'])) {
			$data['shopme_top_border_background'] = $this->request->post['shopme_top_border_background'];
		} else {
			$data['shopme_top_border_background'] = $this->config->get('shopme_top_border_background');
		}
		
		if (isset($this->request->post['shopme_top_border_border'])) {
			$data['shopme_top_border_border'] = $this->request->post['shopme_top_border_border'];
		} else {
			$data['shopme_top_border_border'] = $this->config->get('shopme_top_border_border');
		}
		
		if (isset($this->request->post['shopme_top_border_text'])) {
			$data['shopme_top_border_text'] = $this->request->post['shopme_top_border_text'];
		} else {
			$data['shopme_top_border_text'] = $this->config->get('shopme_top_border_text');
		}
		
		if (isset($this->request->post['shopme_top_border_link'])) {
			$data['shopme_top_border_link'] = $this->request->post['shopme_top_border_link'];
		} else {
			$data['shopme_top_border_link'] = $this->config->get('shopme_top_border_link');
		}
		
		if (isset($this->request->post['shopme_top_border_link_hover'])) {
			$data['shopme_top_border_link_hover'] = $this->request->post['shopme_top_border_link_hover'];
		} else {
			$data['shopme_top_border_link_hover'] = $this->config->get('shopme_top_border_link_hover');
		}
		
		$data['shopme_language_currency_list'] = $this->language->get('shopme_language_currency_list');
		
		if (isset($this->request->post['shopme_language_currency'])) {
			$data['shopme_language_currency'] = $this->request->post['shopme_language_currency'];
		} else {
			$data['shopme_language_currency'] = $this->config->get('shopme_language_currency');
		}		
		
		if (isset($this->request->post['shopme_header_text'])) {
			$data['shopme_header_text'] = $this->request->post['shopme_header_text'];
		} else {
			$data['shopme_header_text'] = $this->config->get('shopme_header_text');
		}
		
		if (isset($this->request->post['shopme_search_field_text'])) {
			$data['shopme_search_field_text'] = $this->request->post['shopme_search_field_text'];
		} else {
			$data['shopme_search_field_text'] = $this->config->get('shopme_search_field_text');
		}
		
		if (isset($this->request->post['shopme_search_field_background'])) {
			$data['shopme_search_field_background'] = $this->request->post['shopme_search_field_background'];
		} else {
			$data['shopme_search_field_background'] = $this->config->get('shopme_search_field_background');
		}
		
		if (isset($this->request->post['shopme_search_field_background_hover'])) {
			$data['shopme_search_field_background_hover'] = $this->request->post['shopme_search_field_background_hover'];
		} else {
			$data['shopme_search_field_background_hover'] = $this->config->get('shopme_search_field_background_hover');
		}
		
		$data['shopme_search_field_icons_list'] = $this->language->get('shopme_search_field_icons_list');
		if (isset($this->request->post['shopme_search_field_icons'])) {
			$data['shopme_search_field_icons'] = $this->request->post['shopme_search_field_icons'];
		} else {
			$data['shopme_search_field_icons'] = $this->config->get('shopme_search_field_icons');
		}
		
		if (isset($this->request->post['shopme_user_menu_background'])) {
			$data['shopme_user_menu_background'] = $this->request->post['shopme_user_menu_background'];
		} else {
			$data['shopme_user_menu_background'] = $this->config->get('shopme_user_menu_background');
		}
		
		if (isset($this->request->post['shopme_user_menu_background_opacity'])) {
			$data['shopme_user_menu_background_opacity'] = $this->request->post['shopme_user_menu_background_opacity'];
		} else {
			$data['shopme_user_menu_background_opacity'] = $this->config->get('shopme_user_menu_background_opacity');
		}
		
		if (isset($this->request->post['shopme_user_menu_background_opacity_hover'])) {
			$data['shopme_user_menu_background_opacity_hover'] = $this->request->post['shopme_user_menu_background_opacity_hover'];
		} else {
			$data['shopme_user_menu_background_opacity_hover'] = $this->config->get('shopme_user_menu_background_opacity_hover');
		}
		
		$data['shopme_user_menu_icons_list'] = $this->language->get('shopme_user_menu_icons_list');
		
		if (isset($this->request->post['shopme_user_menu_icons'])) {
			$data['shopme_user_menu_icons'] = $this->request->post['shopme_user_menu_icons'];
		} else {
			$data['shopme_user_menu_icons'] = $this->config->get('shopme_user_menu_icons');
		}
		
		if (isset($this->request->post['shopme_user_menu_text'])) {
			$data['shopme_user_menu_text'] = $this->request->post['shopme_user_menu_text'];
		} else {
			$data['shopme_user_menu_text'] = $this->config->get('shopme_user_menu_text');
		}
		
		if (isset($this->request->post['shopme_user_menu_text_hover'])) {
			$data['shopme_user_menu_text_hover'] = $this->request->post['shopme_user_menu_text_hover'];
		} else {
			$data['shopme_user_menu_text_hover'] = $this->config->get('shopme_user_menu_text_hover');
		}
		
		if (isset($this->request->post['shopme_menu_background'])) {
			$data['shopme_menu_background'] = $this->request->post['shopme_menu_background'];
		} else {
			$data['shopme_menu_background'] = $this->config->get('shopme_menu_background');
		}
		
		$data['shopme_menu_pattern1_list'] = $this->language->get('shopme_menu_pattern1_list');
		if (isset($this->request->post['shopme_menu_pattern1'])) {
			$data['shopme_menu_pattern1'] = $this->request->post['shopme_menu_pattern1'];
		} else {
			$data['shopme_menu_pattern1'] = $this->config->get('shopme_menu_pattern1');
		}
		
		$data['shopme_menu_pattern2_list'] = $this->language->get('shopme_menu_pattern2_list');
		if (isset($this->request->post['shopme_menu_pattern2'])) {
			$data['shopme_menu_pattern2'] = $this->request->post['shopme_menu_pattern2'];
		} else {
			$data['shopme_menu_pattern2'] = $this->config->get('shopme_menu_pattern2');
		}
		
		if (isset($this->request->post['shopme_menu_link_color'])) {
			$data['shopme_menu_link_color'] = $this->request->post['shopme_menu_link_color'];
		} else {
			$data['shopme_menu_link_color'] = $this->config->get('shopme_menu_link_color');
		}
		
		
		if (isset($this->request->post['shopme_menu_link_background_hover'])) {
			$data['shopme_menu_link_background_hover'] = $this->request->post['shopme_menu_link_background_hover'];
		} else {
			$data['shopme_menu_link_background_hover'] = $this->config->get('shopme_menu_link_background_hover');
		}
		
		if (isset($this->request->post['shopme_shortcut_separator'])) {
			$data['shopme_shortcut_separator'] = $this->request->post['shopme_shortcut_separator'];
		} else {
			$data['shopme_shortcut_separator'] = $this->config->get('shopme_shortcut_separator');
		}
		
		
		if (isset($this->request->post['shopme_primary_color'])) {
			$data['shopme_primary_color'] = $this->request->post['shopme_primary_color'];
		} else {
			$data['shopme_primary_color'] = $this->config->get('shopme_primary_color');
		}
		
		if (isset($this->request->post['shopme_secondary_color'])) {
			$data['shopme_secondary_color'] = $this->request->post['shopme_secondary_color'];
		} else {
			$data['shopme_secondary_color'] = $this->config->get('shopme_secondary_color');
		}
		
		if (isset($this->request->post['shopme_link_hover_color'])) {
			$data['shopme_link_hover_color'] = $this->request->post['shopme_link_hover_color'];
		} else {
			$data['shopme_link_hover_color'] = $this->config->get('shopme_link_hover_color');
		}
	
		
		if (isset($this->request->post['shopme_h1_color'])) {
			$data['shopme_h1_color'] = $this->request->post['shopme_h1_color'];
		} else {
			$data['shopme_h1_color'] = $this->config->get('shopme_h1_color');
		}
		
		if (isset($this->request->post['shopme_heading_color'])) {
			$data['shopme_heading_color'] = $this->request->post['shopme_heading_color'];
		} else {
			$data['shopme_heading_color'] = $this->config->get('shopme_heading_color');
		}
		
		if (isset($this->request->post['shopme_highlight_background'])) {
			$data['shopme_highlight_background'] = $this->request->post['shopme_highlight_background'];
		} else {
			$data['shopme_highlight_background'] = $this->config->get('shopme_highlight_background');
		}
		
		if (isset($this->request->post['shopme_salebadge_background'])) {
			$data['shopme_salebadge_background'] = $this->request->post['shopme_salebadge_background'];
		} else {
			$data['shopme_salebadge_background'] = $this->config->get('shopme_salebadge_background');
		}
		
		if (isset($this->request->post['shopme_price_color'])) {
			$data['shopme_price_color'] = $this->request->post['shopme_price_color'];
		} else {
			$data['shopme_price_color'] = $this->config->get('shopme_price_color');
		}
		
		if (isset($this->request->post['shopme_module_heading_background'])) {
			$data['shopme_module_heading_background'] = $this->request->post['shopme_module_heading_background'];
		} else {
			$data['shopme_module_heading_background'] = $this->config->get('shopme_module_heading_background');
		}
		
		if (isset($this->request->post['shopme_module_heading_color'])) {
			$data['shopme_module_heading_color'] = $this->request->post['shopme_module_heading_color'];
		} else {
			$data['shopme_module_heading_color'] = $this->config->get('shopme_module_heading_color');
		}
		
		if (isset($this->request->post['shopme_product_tabs_heading'])) {
			$data['shopme_product_tabs_heading'] = $this->request->post['shopme_product_tabs_heading'];
		} else {
			$data['shopme_product_tabs_heading'] = $this->config->get('shopme_product_tabs_heading');
		}
		
		if (isset($this->request->post['shopme_product_tabs_content'])) {
			$data['shopme_product_tabs_content'] = $this->request->post['shopme_product_tabs_content'];
		} else {
			$data['shopme_product_tabs_content'] = $this->config->get('shopme_product_tabs_content');
		}
		
		if (isset($this->request->post['shopme_button_color'])) {
			$data['shopme_button_color'] = $this->request->post['shopme_button_color'];
		} else {
			$data['shopme_button_color'] = $this->config->get('shopme_button_color');
		}
		
		if (isset($this->request->post['shopme_button_background'])) {
			$data['shopme_button_background'] = $this->request->post['shopme_button_background'];
		} else {
			$data['shopme_button_background'] = $this->config->get('shopme_button_background');
		}
		

		
		if (isset($this->request->post['shopme_button_hover_color'])) {
			$data['shopme_button_hover_color'] = $this->request->post['shopme_button_hover_color'];
		} else {
			$data['shopme_button_hover_color'] = $this->config->get('shopme_button_hover_color');
		}
		
		if (isset($this->request->post['shopme_button_hover_background'])) {
			$data['shopme_button_hover_background'] = $this->request->post['shopme_button_hover_background'];
		} else {
			$data['shopme_button_hover_background'] = $this->config->get('shopme_button_hover_background');
		}
		
		
		
		
		if (isset($this->request->post['shopme_button2_color'])) {
			$data['shopme_button2_color'] = $this->request->post['shopme_button2_color'];
		} else {
			$data['shopme_button2_color'] = $this->config->get('shopme_button2_color');
		}
		
		if (isset($this->request->post['shopme_button2_background'])) {
			$data['shopme_button2_background'] = $this->request->post['shopme_button2_background'];
		} else {
			$data['shopme_button2_background'] = $this->config->get('shopme_button2_background');
		}
		
		
		
		if (isset($this->request->post['shopme_button2_hover_color'])) {
			$data['shopme_button2_hover_color'] = $this->request->post['shopme_button2_hover_color'];
		} else {
			$data['shopme_button2_hover_color'] = $this->config->get('shopme_button2_hover_color');
		}
		
		if (isset($this->request->post['shopme_button2_hover_background'])) {
			$data['shopme_button2_hover_background'] = $this->request->post['shopme_button2_hover_background'];
		} else {
			$data['shopme_button2_hover_background'] = $this->config->get('shopme_button2_hover_background');
		}
		
		
		
		
		if (isset($this->request->post['shopme_icons_background'])) {
			$data['shopme_icons_background'] = $this->request->post['shopme_icons_background'];
		} else {
			$data['shopme_icons_background'] = $this->config->get('shopme_icons_background');
		}
		
		if (isset($this->request->post['shopme_icons_background_hover'])) {
			$data['shopme_icons_background_hover'] = $this->request->post['shopme_icons_background_hover'];
		} else {
			$data['shopme_icons_background_hover'] = $this->config->get('shopme_icons_background_hover');
		}
		
		if (isset($this->request->post['shopme_footer_background'])) {
			$data['shopme_footer_background'] = $this->request->post['shopme_footer_background'];
		} else {
			$data['shopme_footer_background'] = $this->config->get('shopme_footer_background');
		}
		
		$data['shopme_footer_pattern1_list'] = $this->language->get('shopme_footer_pattern1_list');
		if (isset($this->request->post['shopme_footer_pattern1'])) {
			$data['shopme_footer_pattern1'] = $this->request->post['shopme_footer_pattern1'];
		} else {
			$data['shopme_footer_pattern1'] = $this->config->get('shopme_footer_pattern1');
		}
		
		$data['shopme_footer_pattern2_list'] = $this->language->get('shopme_footer_pattern2_list');
		if (isset($this->request->post['shopme_footer_pattern2'])) {
			$data['shopme_footer_pattern2'] = $this->request->post['shopme_footer_pattern2'];
		} else {
			$data['shopme_footer_pattern2'] = $this->config->get('shopme_footer_pattern2');
		}
		
		$data['shopme_footer_social_icons_style_list'] = $this->language->get('shopme_footer_social_icons_style_list');
		if (isset($this->request->post['shopme_footer_social_icons_style'])) {
			$data['shopme_footer_social_icons_style'] = $this->request->post['shopme_footer_social_icons_style'];
		} else {
			$data['shopme_footer_social_icons_style'] = $this->config->get('shopme_footer_social_icons_style');
		}
		
		if (isset($this->request->post['shopme_footer_social_icons_background'])) {
			$data['shopme_footer_social_icons_background'] = $this->request->post['shopme_footer_social_icons_background'];
		} else {
			$data['shopme_footer_social_icons_background'] = $this->config->get('shopme_footer_social_icons_background');
		}
		
		if (isset($this->request->post['shopme_footer_social_icons_hover'])) {
			$data['shopme_footer_social_icons_hover'] = $this->request->post['shopme_footer_social_icons_hover'];
		} else {
			$data['shopme_footer_social_icons_hover'] = $this->config->get('shopme_footer_social_icons_hover');
		}
		
		$data['shopme_footer_content_background_list'] = $this->language->get('shopme_footer_content_background_list');
		if (isset($this->request->post['shopme_footer_content_background'])) {
			$data['shopme_footer_content_background'] = $this->request->post['shopme_footer_content_background'];
		} else {
			$data['shopme_footer_content_background'] = $this->config->get('shopme_footer_content_background');
		}
		
		if (isset($this->request->post['shopme_footer_heading'])) {
			$data['shopme_footer_heading'] = $this->request->post['shopme_footer_heading'];
		} else {
			$data['shopme_footer_heading'] = $this->config->get('shopme_footer_heading');
		}
		
		if (isset($this->request->post['shopme_footer_links'])) {
			$data['shopme_footer_links'] = $this->request->post['shopme_footer_links'];
		} else {
			$data['shopme_footer_links'] = $this->config->get('shopme_footer_links');
		}
		
		if (isset($this->request->post['shopme_footer_links_hover'])) {
			$data['shopme_footer_links_hover'] = $this->request->post['shopme_footer_links_hover'];
		} else {
			$data['shopme_footer_links_hover'] = $this->config->get('shopme_footer_links_hover');
		}
		
		$data['shopme_company_info_icons_style_list'] = $this->language->get('shopme_company_info_icons_style_list');
		if (isset($this->request->post['shopme_company_info_icons_style'])) {
			$data['shopme_company_info_icons_style'] = $this->request->post['shopme_company_info_icons_style'];
		} else {
			$data['shopme_company_info_icons_style'] = $this->config->get('shopme_company_info_icons_style');
		}
		
		// Design options ends
		
		// Custom CSS starts
		$data['shopme_use_custom_css_list'] = $this->language->get('shopme_use_custom_css_list');
		
		if (isset($this->request->post['shopme_use_custom_css'])) {
			$data['shopme_use_custom_css'] = $this->request->post['shopme_use_custom_css'];
		} else {
			$data['shopme_use_custom_css'] = $this->config->get('shopme_use_custom_css');
		}
		
		if (isset($this->request->post['shopme_custom_css_content'])) {
			$data['shopme_custom_css_content'] = $this->request->post['shopme_custom_css_content'];
		} else {
			$data['shopme_custom_css_content'] = $this->config->get('shopme_custom_css_content');
		}
		// Custom CSS ends
		
		// Custom Javascript starts
		$data['shopme_use_custom_javascript_list'] = $this->language->get('shopme_use_custom_javascript_list');
		
		if (isset($this->request->post['shopme_use_custom_javascript'])) {
			$data['shopme_use_custom_javascript'] = $this->request->post['shopme_use_custom_javascript'];
		} else {
			$data['shopme_use_custom_javascript'] = $this->config->get('shopme_use_custom_javascript');
		}
		
		if (isset($this->request->post['shopme_custom_javascript_content'])) {
			$data['shopme_custom_javascript_content'] = $this->request->post['shopme_custom_javascript_content'];
		} else {
			$data['shopme_custom_javascript_content'] = $this->config->get('shopme_custom_javascript_content');
		}
		// Custom Javascript ends

		// Content ends
		
		
		// Menu
		
		$data['text_add_section'] = $this->language->get('text_add_section');
		$data['text_groups_heading'] = $this->language->get('text_groups_heading');
		$data['text_section_title'] = $this->language->get('text_section_title');
		$data['text_input_question'] = $this->language->get('text_input_question');
		$data['text_input_answer'] = $this->language->get('text_input_answer');
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_title'] = $this->language->get('entry_title');
		$data['entry_description'] = $this->language->get('entry_description');
		$data['button_add_section'] = $this->language->get('button_add_section');
		$data['button_add_group'] = $this->language->get('button_add_group');
		$data['button_remove'] = $this->language->get('button_remove'); 
		$data['tab_section'] = $this->language->get('tab_section');

		
		
		
		if (isset($this->request->post['shopme_sections'])) {
			$data['sections'] = $this->request->post['shopme_sections'];
		} elseif ($this->config->get('shopme_sections')) {
			$sections = $this->config->get('shopme_sections');
		} else {
			$sections = array();
		}
		
		$data['sections'] = array();
		
		foreach ($sections as $section) {
			$groups = array();
			
			$i = 0;
            
			if(isset($section['groups'])) {
				foreach($section['groups'] as $group) {
					$groups[$i] = $group;
					$i++;
				}
			}
				
			$data['sections'][] = array(
				'title'   => $section['title'],
				'href'   => $section['href'],
				'groups'  => $groups,
			);
		}
		
		
		
		
   		$data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/shopme', 'token=' . $this->session->data['token'], true),
      		'separator' => ' :: '
   		);

		
		$data['action'] = $this->url->link('module/shopme', 'token=' . $this->session->data['token'], true);
		
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], true);
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('module/shopme.tpl', $data));
	}
	
		private function validate() {
		if (!$this->user->hasPermission('modify', 'module/shopme')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
						
		if (!$this->error) {
			return true;
		} else {
			return false;
		}	
	}
	
	
	
	public function install(){
		$this->load->model('setting/setting');
		$data = array(
			'shopme_header_style'			=> 'header1',
			'shopme_footer_columns'			=> 'col-xs-12',
			'shopme_menu_type'				=> 'default',
			'shopme_header_login'			=> 'enabled',
			'shopme_header_wishlist'		=> 'enabled',
			'shopme_header_compare'			=> 'enabled',
			'shopme_header_cart'			=> 'enabled',
			'shopme_header_search'			=> 'enabled',
			'shopme_refine_image_w'			=> '190',
			'shopme_refine_image_h'			=> '190',
			'shopme_category_thumb'			=> '0',
			'shopme_category_refine'		=> '0',
			'shopme_brands_per_row'			=> 'grid3',
			'shopme_brands_image_w'			=> '240',
			'shopme_brands_image_h'			=> '115',
			'shopme_default_view'			=> 'grid',
			'shopme_grid_category'			=> 'grid3',
			'shopme_grid_related'			=> 'grid3'
		);

		$this->model_setting_setting->editSetting('shopme', $data);

		$sql = " SHOW TABLES LIKE '" . DB_PREFIX . "blog' ";
		$query = $this->db->query( $sql );
		if( count($query->rows) <=0 ){ 
			
		$blog_data = array(
			'blogsetting_post_thumbs_h'			=>'511',	
			'blogsetting_post_thumbs_w'			=>'808',	
			'blogsetting_share'			=>'1',	
			'blogsetting_post_thumb'			=>'1',	
			'blogsetting_post_page_view'			=>'1',	
			'blogsetting_post_author'			=>'1',	
			'blogsetting_post_comments_count'			=>'1',	
			'blogsetting_post_date_added'			=>'1',	
			'blogsetting_author'			=>'1',	
			'blogsetting_page_view'			=>'1',	
			'blogsetting_comments_count'			=>'1',	
			'blogsetting_date_added'			=>'1',	
			'blogsetting_thumbs_h'			=>'511',	
			'blogsetting_thumbs_w'			=>'808',	
			'blogsetting_layout'			=>'1',	
			'blogsetting_blogs_per_page'			=>'5',	
			'blogsetting_rel_blog_per_row'			=>'2',	
			'blogsetting_rel_thumb'			=>'1',	
			'blogsetting_rel_thumbs_w'			=>'202',	
			'blogsetting_rel_thumbs_h'			=>'128',	
			'blogsetting_rel_characters'			=>'100',	
			'blogsetting_comment_per_page'			=>'5',	
			'blogsetting_comment_approve'			=>'1',	
			'blogsetting_comment_notification'			=>'1',	
			'blogsetting_author_change'			=>'1'
		);

		$this->model_setting_setting->editSetting('blogsetting', $blog_data);
			
		}
		
		//Add extra DB tables if needed
		$sql =	"CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "tab (
		`tab_id` int(11) NOT NULL AUTO_INCREMENT,
		`sort_order` int(3) NOT NULL,
		`status` tinyint(1) NOT NULL DEFAULT 1,
		`position` tinyint(1) NOT NULL DEFAULT 1,
		`show_empty` tinyint(1) NOT NULL DEFAULT 0,
		PRIMARY KEY (`tab_id`)
		) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin";
		$this->db->query($sql);
		
		$sql = 	"CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "tab_description (
		`tab_id` int(11) NOT NULL,
		`language_id` int(11) NOT NULL,
		`name` varchar(64) COLLATE utf8_bin NOT NULL,
		PRIMARY KEY (`tab_id`,`language_id`)
		) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin";
		$this->db->query($sql);
		
		$sql = 	"CREATE TABLE IF NOT EXISTS " . DB_PREFIX . "product_tab (
		`product_id` int(11) NOT NULL,
		`tab_id` int(11) NOT NULL,
		`language_id` int(11) NOT NULL,
		`text` text NOT NULL,
		`position` tinyint(1),
		`show_empty` tinyint(1),
		PRIMARY KEY (`product_id`,`tab_id`,`language_id`)
		) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "question` ( ";
		$sql .= "`question_id` int(11) NOT NULL AUTO_INCREMENT, ";
		$sql .= "`product_id` int(1) NOT NULL, ";
		$sql .= "`customer_id` int(11) NOT NULL, ";
		$sql .= "`author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`answer` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`status` tinyint(1) NOT NULL, ";
		$sql .= "`private` tinyint(1) NOT NULL DEFAULT '0', ";
		$sql .= "`notify` tinyint(1) NOT NULL DEFAULT '1', ";
		$sql .= "`date_added` datetime DEFAULT '0000-00-00 00:00:00', ";
		$sql .= "`date_modified` datetime DEFAULT '0000-00-00 00:00:00', ";
		$sql .= "PRIMARY KEY (`question_id`) ";
		$sql .= ") ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog` ( ";
		$sql .= "`blog_id` int(11) NOT NULL AUTO_INCREMENT, ";
		$sql .= "`allow_comment` int(1) NOT NULL DEFAULT '1', ";
		$sql .= "`count_read` int(11) NOT NULL DEFAULT '0', ";
		$sql .= "`sort_order` int(3) NOT NULL, ";
		$sql .= "`status` int(1) NOT NULL DEFAULT '1', ";
		$sql .= "`author` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL, ";
		$sql .= "`date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', ";
		$sql .= "`image` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL, ";
		$sql .= "PRIMARY KEY (`blog_id`) ";
		$sql .= ") ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_category` ( ";
		$sql .= "`blog_category_id` int(11) NOT NULL AUTO_INCREMENT, ";
		$sql .= "`parent_id` int(11) NOT NULL DEFAULT '0', ";
		$sql .= "`sort_order` int(3) NOT NULL DEFAULT '0', ";
		$sql .= "`date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', ";
		$sql .= "`status` int(1) NOT NULL DEFAULT '1', ";
		$sql .= "PRIMARY KEY (`blog_category_id`) ";
		$sql .= ") ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=49 ; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_category_description` ( ";
		$sql .= "`blog_category_id` int(11) NOT NULL, ";
		$sql .= "`language_id` int(11) NOT NULL, ";
		$sql .= "`name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '', ";
		$sql .= "`page_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '', ";
		$sql .= "`meta_keywords` varchar(255) COLLATE utf8_bin NOT NULL, ";
		$sql .= "`meta_description` varchar(255) COLLATE utf8_bin NOT NULL, ";
		$sql .= "`description` text COLLATE utf8_bin NOT NULL, ";
		$sql .= "PRIMARY KEY (`blog_category_id`,`language_id`), ";
		$sql .= "KEY `name` (`name`) ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_category_to_layout` ( ";
		$sql .= "`blog_category_id` int(11) NOT NULL, ";
		$sql .= "`store_id` int(11) NOT NULL, ";
		$sql .= "`layout_id` int(11) NOT NULL, ";
		$sql .= "PRIMARY KEY (`blog_category_id`,`store_id`) ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_category_to_store` ( ";
		$sql .= "`blog_category_id` int(11) NOT NULL, ";
		$sql .= "`store_id` int(11) NOT NULL, ";
		$sql .= "PRIMARY KEY (`blog_category_id`,`store_id`) ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_comment` ( ";
		$sql .= "`blog_comment_id` int(11) NOT NULL AUTO_INCREMENT, ";
		$sql .= "`blog_id` int(11) NOT NULL DEFAULT '0', ";
		$sql .= "`name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`date_added` datetime DEFAULT '0000-00-00 00:00:00', ";
		$sql .= "`status` int(1) NOT NULL DEFAULT '1', ";
		$sql .= "PRIMARY KEY (`blog_comment_id`) ";
		$sql .= ") ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_description` ( ";
		$sql .= "`blog_id` int(11) NOT NULL, ";
		$sql .= "`language_id` int(11) NOT NULL, ";
		$sql .= "`title` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`page_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`meta_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`meta_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`short_description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, ";
		$sql .= "`tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_related` ( ";
		$sql .= "`parent_blog_id` int(11) NOT NULL DEFAULT '0', ";
		$sql .= "`child_blog_id` int(11) NOT NULL DEFAULT '0' ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=latin1; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_to_category` ( ";
		$sql .= "`blog_id` int(11) NOT NULL, ";
		$sql .= "`blog_category_id` int(11) NOT NULL, ";
		$sql .= "PRIMARY KEY (`blog_id`,`blog_category_id`) ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_to_layout` ( ";
		$sql .= "`blog_id` int(11) NOT NULL, ";
		$sql .= "`store_id` int(11) NOT NULL, ";
		$sql .= "`layout_id` int(11) NOT NULL, ";
		$sql .= "PRIMARY KEY (`blog_id`,`store_id`) ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin; ";
		$this->db->query($sql);
		
		$sql = "CREATE TABLE IF NOT EXISTS `" . DB_PREFIX . "blog_to_store` ( ";
		$sql .= "`blog_id` int(11) NOT NULL, ";
		$sql .= "`store_id` int(11) NOT NULL ";
		$sql .= ") ENGINE=MyISAM DEFAULT CHARSET=latin1; ";
		$this->db->query($sql);
		
		
		$sql = "SELECT * FROM " . DB_PREFIX . "layout WHERE name = 'Blog'";
		$query = $this->db->query( $sql );
		if( count($query->rows) <=0 ){ 
			$sql  = "INSERT INTO  `" . DB_PREFIX . "layout` ( `layout_id` , `name` ) VALUES ( NULL , 'Blog' ); ";
			$query = $this->db->query( $sql );
			$id = $this->db->getLastId();
			$sql = "INSERT INTO `".DB_PREFIX."layout_route` (
						`layout_route_id` ,
						`layout_id` ,
						`store_id` ,
						`route`
						)
						VALUES (
						NULL , '".$id."', '0', 'blog/%');
				";
				$query = $this->db->query( $sql );
		}
		
		$sql = "SELECT * FROM " . DB_PREFIX . "layout WHERE name = 'Footer'";
		$query = $this->db->query( $sql );
		if( count($query->rows) <=0 ){ 
			$sql  = "INSERT INTO  `" . DB_PREFIX . "layout` ( `layout_id` , `name` ) VALUES ( NULL , 'Footer' ); ";
			$query = $this->db->query( $sql );
		}
		
		
		
	
	} // Install ends
	

	
}