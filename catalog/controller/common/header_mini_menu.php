<?php 
class ControllerCommonHeaderMiniMenu extends Controller {
	public function index() {
		
		$data['lang_id'] = $this->config->get('config_language_id');
		if ($this->config->get('shopme_sections')) {
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
			
			if(isset($section['title'][$data['lang_id']])) {
			$data['sections'][] = array(
				'title'   => $section['title'][$data['lang_id']],
				'href'   => $section['href'],
				'groups'  => $groups,
			);
			}
		}

			return $this->load->view('common/header_mini_menu', $data);
			
	}
	public function info() {
		$this->response->setOutput($this->index());
	}
}