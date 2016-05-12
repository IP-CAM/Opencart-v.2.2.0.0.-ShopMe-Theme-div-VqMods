<?php
class ControllerModuleShopmeFacebook extends Controller {
	public function index() {
		
		$title = $this->config->get('shopme_facebook_title');
		if(empty($title[$this->config->get('config_language_id')])) {
			$data['module_title'] = false;
		} else if (isset($title[$this->config->get('config_language_id')])) {
			$data['module_title'] = html_entity_decode($title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		$data['facebook_script'] = html_entity_decode($this->config->get('shopme_facebook_script'), ENT_QUOTES, 'UTF-8');
		$data['facebook_html'] = html_entity_decode($this->config->get('shopme_facebook_html'), ENT_QUOTES, 'UTF-8');
			
       return $this->load->view('module/shopme_facebook', $data);
			
	}
}