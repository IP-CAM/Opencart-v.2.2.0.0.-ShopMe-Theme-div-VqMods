<?php 
class ControllerCommonShopmeStyles extends Controller {
	public function index() {
		// Custom CSS
		$data['custom_css'] = $this->config->get('shopme_use_custom_css');
		$data['custom_css_content'] = html_entity_decode(($this->config->get('shopme_custom_css_content')), ENT_QUOTES, 'UTF-8');
		
		// Custom Javascript
		$data['custom_javascript'] = $this->config->get('shopme_use_custom_javascript');
		$data['custom_javascript_content'] = html_entity_decode(($this->config->get('shopme_custom_javascript_content')), ENT_QUOTES, 'UTF-8');
		
		// Custom style
		$data['custom_style'] = $this->config->get('shopme_use_custom');
		
		$data['shopme_custom_bg_icon'] = $this->config->get('shopme_custom_bg_icon');
		$data['shopme_body_image'] = $this->config->get('shopme_body_image');
		$data['shopme_body_background'] = $this->config->get('shopme_body_background');
		$data['shopme_top_border_background'] = $this->config->get('shopme_top_border_background');
		$data['shopme_top_border_border'] = $this->config->get('shopme_top_border_border');
		$data['shopme_top_border_text'] = $this->config->get('shopme_top_border_text');
		$data['shopme_top_border_link'] = $this->config->get('shopme_top_border_link');
		$data['shopme_top_border_link_hover'] = $this->config->get('shopme_top_border_link_hover');
		$data['shopme_shortcut_separator'] = $this->config->get('shopme_shortcut_separator');
		$data['shopme_menu_background'] = $this->config->get('shopme_menu_background');
		$data['shopme_menu_link_color'] = $this->config->get('shopme_menu_link_color');
		$data['shopme_menu_link_color_hover'] = $this->config->get('shopme_menu_link_color_hover');
		$data['shopme_menu_link_background_hover'] = $this->config->get('shopme_menu_link_background_hover');
		$data['shopme_primary_color'] = $this->config->get('shopme_primary_color');
		$data['shopme_secondary_color'] = $this->config->get('shopme_secondary_color');
		$data['shopme_offer_color'] = $this->config->get('shopme_offer_color');
		$data['shopme_link_hover_color'] = $this->config->get('shopme_link_hover_color');
		$data['shopme_salebadge_background'] = $this->config->get('shopme_salebadge_background');
		$data['shopme_price_color'] = $this->config->get('shopme_price_color');
		$data['shopme_icons_background_hover'] = $this->config->get('shopme_icons_background_hover');
		$data['shopme_button_background'] = $this->config->get('shopme_button_background');
		$data['shopme_button_color'] = $this->config->get('shopme_button_color');
		$data['shopme_button_border'] = $this->config->get('shopme_button_border');
		$data['shopme_button_hover_background'] = $this->config->get('shopme_button_hover_background');
		$data['shopme_button_hover_color'] = $this->config->get('shopme_button_hover_color');
		$data['shopme_button_hover_border'] = $this->config->get('shopme_button_hover_border');
		$data['shopme_button2_background'] = $this->config->get('shopme_button2_background');
		$data['shopme_button2_color'] = $this->config->get('shopme_button2_color');
		$data['shopme_button2_border'] = $this->config->get('shopme_button2_border');
		$data['shopme_button2_hover_background'] = $this->config->get('shopme_button2_hover_background');
		$data['shopme_button2_hover_color'] = $this->config->get('shopme_button2_hover_color');
		$data['shopme_button2_hover_border'] = $this->config->get('shopme_button2_hover_border');
		
		
		// Custom fonts
		$data['custom_style_font'] = $this->config->get('shopme_use_custom_font');
		$data['shopme_font1_name'] = $this->config->get('shopme_font1_name');
		$data['shopme_font2_name'] = $this->config->get('shopme_font2_name');
		
		$data['shopme_use_font_light'] = $this->config->get('shopme_use_font_light');
		$data['shopme_use_font_regular'] = $this->config->get('shopme_use_font_regular');
		$data['shopme_use_font_semibold'] = $this->config->get('shopme_use_font_semibold');
		$data['shopme_use_font_bold'] = $this->config->get('shopme_use_font_bold');

		return $this->load->view('common/shopme_styles', $data);
	}
	public function info() {
		$this->response->setOutput($this->index());
	}
}