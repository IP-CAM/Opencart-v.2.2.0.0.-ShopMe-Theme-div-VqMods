<?php 
class ControllerCommonShopmeCookie extends Controller {
	public function index() {
		
		// Cookie Control
		$data['shopme_use_cookie'] = $this->config->get('shopme_use_cookie');
		
		$shopme_cookie_text = $this->config->get('shopme_cookie_text');
		if(empty($shopme_cookie_text[$this->config->get('config_language_id')])) {
			$data['shopme_cookie_message'] = false;
		} else if (isset($shopme_cookie_text[$this->config->get('config_language_id')])) {
			$data['shopme_cookie_message'] = html_entity_decode($shopme_cookie_text[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$shopme_cookie_button_readmore = $this->config->get('shopme_cookie_button_readmore');
		if(empty($shopme_cookie_button_readmore[$this->config->get('config_language_id')])) {
			$data['shopme_readmore_text'] = false;
		} else if (isset($shopme_cookie_button_readmore[$this->config->get('config_language_id')])) {
			$data['shopme_readmore_text'] = html_entity_decode($shopme_cookie_button_readmore[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$shopme_cookie_button_accept = $this->config->get('shopme_cookie_button_accept');
		if(empty($shopme_cookie_button_accept[$this->config->get('config_language_id')])) {
			$data['shopme_button_accept_text'] = false;
		} else if (isset($shopme_cookie_button_accept[$this->config->get('config_language_id')])) {
			$data['shopme_button_accept_text'] = html_entity_decode($shopme_cookie_button_accept[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$data['shopme_readmore_url'] = $this->config->get('shopme_readmore_url');
		
		// Old IE check
		$data['shopme_use_ie'] = $this->config->get('shopme_use_ie');
		
		$shopme_ie_update_text = $this->config->get('shopme_ie_update_text');
		if(empty($shopme_ie_update_text[$this->config->get('config_language_id')])) {
			$data['shopme_ie_update_message'] = false;
		} else if (isset($shopme_ie_update_text[$this->config->get('config_language_id')])) {
			$data['shopme_ie_update_message'] = html_entity_decode($shopme_ie_update_text[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}

		$shopme_ie_text = $this->config->get('shopme_ie_text');
		if(empty($shopme_ie_text[$this->config->get('config_language_id')])) {
			$data['shopme_ie_message'] = false;
		} else if (isset($shopme_ie_text[$this->config->get('config_language_id')])) {
			$data['shopme_ie_message'] = html_entity_decode($shopme_ie_text[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$data['shopme_ie_url'] = $this->config->get('shopme_ie_url');
		
		return $this->load->view('common/shopme_cookie', $data);
	}
	public function info() {
		$this->response->setOutput($this->index());
	}
}