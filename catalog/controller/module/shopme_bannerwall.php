<?php
class ControllerModuleShopmeBannerwall extends Controller {
	public function index($setting) {
	
	$this->load->model('tool/image');
	
		
		if (!empty($setting['image1'][$this->config->get('config_language_id')]) && file_exists(DIR_IMAGE . $setting['image1'][$this->config->get('config_language_id')])) {
            $data['image1'] = $this->model_tool_image->resize($setting['image1'][$this->config->get('config_language_id')], 360, 260);
        } else {
            $data['image1'] = false;
        }
		
		if (!empty($setting['html1'][$this->config->get('config_language_id')])) {
            $data['html1'] = html_entity_decode($setting['html1'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
        } else {
            $data['html1'] = false;
        }
        
        if (!empty($setting['image2'][$this->config->get('config_language_id')]) && file_exists(DIR_IMAGE . $setting['image2'][$this->config->get('config_language_id')])) {
            $data['image2'] = $this->model_tool_image->resize($setting['image2'][$this->config->get('config_language_id')], 360, 115);
        } else {
            $data['image2'] = false;
        }
		
		if (!empty($setting['html2'][$this->config->get('config_language_id')])) {
            $data['html2'] = html_entity_decode($setting['html2'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
        } else {
            $data['html2'] = false;
        }
		
        
        if (!empty($setting['image3'][$this->config->get('config_language_id')]) && file_exists(DIR_IMAGE . $setting['image3'][$this->config->get('config_language_id')])) {
            $data['image3'] = $this->model_tool_image->resize($setting['image3'][$this->config->get('config_language_id')], 360, 115);
        } else {
            $data['image3'] = false;
        }
		
		if (!empty($setting['html3'][$this->config->get('config_language_id')])) {
            $data['html3'] = html_entity_decode($setting['html3'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
        } else {
            $data['html3'] = false;
        }
        
        if (!empty($setting['image4'][$this->config->get('config_language_id')]) && file_exists(DIR_IMAGE . $setting['image4'][$this->config->get('config_language_id')])) {
            $data['image4'] = $this->model_tool_image->resize($setting['image4'][$this->config->get('config_language_id')], 360, 260);
        } else {
            $data['image4'] = false;
        }
        
		if (!empty($setting['html4'][$this->config->get('config_language_id')])) {
            $data['html4'] = html_entity_decode($setting['html4'][$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
        } else {
            $data['html4'] = false;
        }
		
		return $this->load->view('module/shopme_bannerwall', $data);
	}
}