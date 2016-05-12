<?php
class ControllerModuleShopmeSocials extends Controller {
	public function index($setting) {
		
		
		$title = $setting['module_title'];
        $data['module_title'] = $title[$this->config->get('config_language_id')];
		
		
		if (isset($setting['sections'])) {        
            
			$data['sections'] = array();

            $section_row = 0;
            
            foreach($setting['sections'] as $section) {
				
				if (isset($section['social_type'])){
                    $social_type = $section['social_type'];
                } else {
                    $social_type = '';
                }
				
				if (isset($section['link'])){
                    $link = $section['link'];
                } else {
                    $link = '';
                }
				
				if (isset($section['link_type'])){
                    $link_type = $section['link_type'];
                } else {
                    $link_type = '';
                }
				
				if (isset($section['tooltip'])){
                    $tooltip = $section['tooltip'];
                } else {
                    $tooltip = '';
                }

                $section_row++;

                $data['sections'][] = array(
                    'index'   => $section_row,
                    'social_type'   => $social_type,
                    'link'  => $link,
					'link_type'   => $link_type,
                    'tooltip'  => $tooltip
					
                );
            }
		
			return $this->load->view('module/shopme_socials', $data);
		}
	}
}