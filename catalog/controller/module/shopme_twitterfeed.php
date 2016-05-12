<?php
class ControllerModuleShopmeTwitterfeed extends Controller {
	public function index() {
		
		$this->document->addScript('catalog/view/theme/shopme/js/tweetfeed.min.js');
		
		$title = $this->config->get('shopme_twitterfeed_title');
		if(empty($title[$this->config->get('config_language_id')])) {
			$data['module_title'] = false;
		} else if (isset($title[$this->config->get('config_language_id')])) {
			$data['module_title'] = html_entity_decode($title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$button_title = $this->config->get('shopme_twitterfeed_button_title');
		if(empty($button_title[$this->config->get('config_language_id')])) {
			$data['button_title'] = false;
		} else if (isset($button_title[$this->config->get('config_language_id')])) {
			$data['button_title'] = html_entity_decode($button_title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$data['widget_id'] = $this->config->get('shopme_twitterfeed_widget_id');
		
		$data['limit'] = $this->config->get('shopme_twitterfeed_limit');
			
       return $this->load->view('module/shopme_twitterfeed', $data);
			
	}
}