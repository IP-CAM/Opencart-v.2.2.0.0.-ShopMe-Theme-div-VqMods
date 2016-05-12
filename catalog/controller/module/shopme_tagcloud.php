<?php
class ControllerModuleShopmeTagcloud extends Controller {
	public function index() {
		
		$this->load->model('localisation/language');
		$this->load->model('module/shopme_tagcloud');
		
		$title = $this->config->get('shopme_tagcloud_title');
        $data['module_title'] = $title[$this->config->get('config_language_id')];
	
		$data['limit'] = $this->config->get('shopme_tagcloud_limit');	
		
		$data['tagcloud'] = $this->model_module_shopme_tagcloud->getRandomTags(array(
			'limit'   => (int)$data['limit']
		));
			
       return $this->load->view('module/shopme_tagcloud', $data);
		
	}
}