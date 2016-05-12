<?php 
class ControllerCommonSideWidgets extends Controller {
	public function index() {
		
		// Config values
		$data['shopme_facebook_widget'] = $this->config->get('shopme_facebook_widget');
		$data['shopme_twitter_widget'] = $this->config->get('shopme_twitter_widget');
		$data['shopme_contact_widget'] = $this->config->get('shopme_contact_widget');
		$data['shopme_location_widget'] = $this->config->get('shopme_location_widget');
		
		// Facebook
		$facebook_title = $this->config->get('shopme_facebook_title');
		if(empty($facebook_title[$this->config->get('config_language_id')])) {
			$data['facebook_title'] = false;
		} else if (isset($facebook_title[$this->config->get('config_language_id')])) {
			$data['facebook_title'] = html_entity_decode($facebook_title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$data['facebook_script'] = html_entity_decode($this->config->get('shopme_facebook_script'), ENT_QUOTES, 'UTF-8');
		$data['facebook_html'] = html_entity_decode($this->config->get('shopme_facebook_html'), ENT_QUOTES, 'UTF-8');
		
		
		// Twitter
		$this->document->addScript('catalog/view/theme/shopme/js/tweetfeed.min.js');
		$twitter_title = $this->config->get('shopme_twitterfeed_title');
		if(empty($twitter_title[$this->config->get('config_language_id')])) {
			$data['twitter_title'] = false;
		} else if (isset($twitter_title[$this->config->get('config_language_id')])) {
			$data['twitter_title'] = html_entity_decode($twitter_title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$button_title = $this->config->get('shopme_twitterfeed_button_title');
		if(empty($button_title[$this->config->get('config_language_id')])) {
			$data['button_title'] = false;
		} else if (isset($button_title[$this->config->get('config_language_id')])) {
			$data['button_title'] = html_entity_decode($button_title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$data['widget_id'] = $this->config->get('shopme_twitterfeed_widget_id');
		$data['limit'] = $this->config->get('shopme_twitterfeed_limit');
		
		
		// Contact form
		$this->load->language('module/shopme_contact');
		$data['text_name'] = $this->language->get('text_name');
		$data['text_email'] = $this->language->get('text_email');
		$data['text_message'] = $this->language->get('text_message');
		$data['text_button'] = $this->language->get('text_button');
		
		$contact_title = $this->config->get('shopme_contact_title');
		if(empty($contact_title[$this->config->get('config_language_id')])) {
			$data['contact_title'] = $this->language->get('text_heading');
		} else if (isset($contact_title[$this->config->get('config_language_id')])) {
			$data['contact_title'] = html_entity_decode($contact_title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		$welcome_message = $this->config->get('shopme_contact_message');
		if(empty($welcome_message[$this->config->get('config_language_id')])) {
			$data['welcome_message'] = false;
		} else if (isset($welcome_message[$this->config->get('config_language_id')])) {
			$data['welcome_message'] = html_entity_decode($welcome_message[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		}
		
		
		// Location
		$this->load->language('information/contact');
		$data['shopme_google_map'] = $this->config->get('shopme_google_map');
		$data['text_location'] = $this->language->get('text_location');
		$data['address'] = nl2br($this->config->get('config_address'));
		$data['telephone'] = $this->config->get('config_telephone');
		$data['fax'] = $this->config->get('config_fax');
		$data['open'] = nl2br($this->config->get('config_open'));
		$data['comment'] = $this->config->get('config_comment');
		
		
		return $this->load->view('common/side_widgets', $data);
	}
	
	public function info() {
		$this->response->setOutput($this->index());
	}
	
	
}