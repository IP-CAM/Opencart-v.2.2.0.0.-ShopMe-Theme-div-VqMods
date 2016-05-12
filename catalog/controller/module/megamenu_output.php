<?php
class ControllerModuleMegamenuOutput extends Controller {
	public function index() {
		
		$module_data = array();
		$this->load->model('menu/module15');
		$extensions = $this->model_menu_module15->getExtensions('module');		
		foreach ($extensions as $extension) {
			$modules = $this->config->get($extension['code'] . '_module');
			if ($modules) {
				foreach ($modules as $module) {
					if ($module['position'] == 'mega_menu' && $module['status']) {
						$module_data[] = array(
							'code'       => $extension['code'],
							'setting'    => $module,
							'sort_order' => $module['sort_order']
						);				
		}}}}
		$data['modules'] = array();
		foreach ($module_data as $module) {
			if(!isset($module['code']) || !isset($module['setting'])) {
				$part = explode('.', $module['code']);
					$data['modules'][] = $this->load->controller('module/' . $part[0]);
				if (isset($part[1])) { 
					$setting_info = $this->model_menu_module15->getModule($part[1]);
					if ($setting_info && $setting_info['status']) {
						$data['modules'][] = $this->load->controller('module/' . $part[0], $setting_info);
					}		
				}
			} else {
				$module = $this->load->controller('module/' . $module['code'], $module['setting']);
				if ($module) {
					$data['modules'][] = $module;
				}}}
		
		return $this->load->view('module/megamenu_output', $data);
	}
}