<?php  
class ControllerModuleShowintabsoutput extends Controller {
	public function index($setting) {
    	$this->load->language('module/showintabs');
    	$this->load->model('catalog/product');
		
		$data['show_countdown'] = $setting['countdown'];
		
		if ($data['show_countdown']) {
			if (file_exists('catalog/view/theme/shopme/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js')) {
			$this->document->addScript('catalog/view/theme/shopme/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js');
			} else {
			$this->document->addScript('catalog/view/theme/shopme/js/countdown/jquery.countdown_en.js');
			}
		};
		
		$data['tab_style'] = $setting['tab_style'];
		$data['tab_pos'] = $setting['tab_pos'];
		
		$data['show_tax'] = $this->config->get('shopme_tax');
		
		$title = $setting['title'];
        $data['title'] = html_entity_decode($title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		
		$link_title = $setting['link_title'];
        $data['link_title'] = html_entity_decode($link_title[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
  		
		$data['text_tax'] = $this->language->get('text_tax');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		
		$data['shopme_category_per_row'] = $this->config->get('shopme_category_per_row');
		$data['shopme_rollover_effect'] = $this->config->get('shopme_rollover_effect');
		$data['shopme_percentage_sale_badge'] = $this->config->get('shopme_percentage_sale_badge');
		$shopme_quicklook = $this->config->get('shopme_text_ql');
		$data['shopme_text_ql'] = html_entity_decode($shopme_quicklook[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
		
		$data['carousel'] = $setting['carousel'];
		$data['columns'] = $setting['columns'];
		$data['column_digit'] = substr(trim($data['columns']), -1);
		$data['style'] = $this->config->get('shopme_default_product_style');
		$data['link_href'] = $setting['link_href'];
		
		static $module = 0;
		
		$data['tabs'] = array();

		$this->load->model('tool/image');
		
		$tabs = $this->config->get('showintabs_tab');
		
		$tabs = isset($tabs) ? $tabs : array();

    	foreach ($tabs as $key => $tab) {
			if(in_array($key, $setting['selected_tabs']['tabs'])) {
				if (!empty($tab['title'][$this->config->get('config_language_id')])) {
					$title = $tab['title'][$this->config->get('config_language_id')];
				}else{
					$title = $this->language->get('heading_default');
				}	
	
				$products = array();
	
				switch ($tab['data_source']) {
					case 'SP': //Select Products
						$results = $this->getSelectProducts($tab,$setting['limit']);
						break;
					case 'PG': //Product Group
						$results = $this->getProductGroups($tab,$setting['limit']);
						break;
					case 'CQ': //Custom Query
						$results = $this->getCustomQuery($tab,$setting['limit']);
						break;
					default:
						$this->log->write('SHOW_IN_TAB::ERROR: The tab don\'t have product configured.');
						break;
				}
				
	
				//Preparo la info de cada producto
				foreach ($results as $result) {
					if ($result['image']) {
						$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $setting['image_width'], $setting['image_height']);
					}
					
					$images = $this->model_catalog_product->getProductImages($result['product_id']);
					if(isset($images[0]['image']) && !empty($images[0]['image'])){
					$images =$images[0]['image'];
				   	} else {
					$images = false;
					}
					
					if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}
							
					if ((float)$result['special']) {
						$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}
					
					if ((float)$result['special']) {
					$sales_percantage = ((($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')))-($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax'))))/(($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')))/100));
					} else {
					$sales_percantage = false;
					}
					
					
					if (((float)$result['special']) && ($data['show_countdown'])) {
    				$special_info = $this->model_catalog_product->getSpecialPriceEnd($result['product_id']);
        			$special_date_end = strtotime($special_info['date_end']) - time();
    				} else {
        			$special_date_end = false;
    				}
					
					
					if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}	
					
					if ($this->config->get('config_review_status')) {
						$rating = $result['rating'];
					} else {
						$rating = false;
					}
					
					
					if ($data['column_digit'] == 'z') {
						$name = utf8_substr(strip_tags(html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8')), 0, 40) . '..';
					} else {
						$name = $result['name'];
					}
					
					$products[] = array(
						'product_id' => $result['product_id'],
						'thumb'   	 => $image,
						'name'    	 => $name,
						'price'   	 => $price,
						'special' 	 => $special,
						'tax'         => $tax,
						'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
						'rating'     => $rating,
						'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
						'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id']),
						'quickview'  => $this->url->link('product/quickview', 'product_id=' . $result['product_id'], '', true),
						'sales_percantage' => number_format($sales_percantage, 0, ',', '.'),
						'special_date_end' => $special_date_end,
						'brand_name'		=> $result['manufacturer'],
						'thumb_hover'  => $this->model_tool_image->resize($images, $setting['image_width'], $setting['image_width'])
					);
				}	

				$data['tabs'][] = array(
					'title' => $title,
					'products' => $products
				);
			}
    	}
		
		
    	$data['button_cart'] = $this->language->get('button_cart');
		
		$data['module'] = $module++;

		return $this->load->view('module/showintabs_output', $data);
		
  	}

  	// Obtiene los productos de los grupos predefinidos de opencart
  	private function getProductGroups( $tabInfo , $limit ){
  		$results = array();

  		//Obtengo listado de productos en funcion del criterio
  		switch ( $tabInfo['product_group'] ) {
  			case 'BS':
  				$results = $this->model_catalog_product->getBestSellerProducts($limit);
  				break;
  			case 'LA':
  				$results = $this->model_catalog_product->getLatestProducts($limit);
  				break;
  			case 'SP':
  				$results = $this->model_catalog_product->getProductSpecials(array('start' => 0,'limit' => $limit));
  				break;
  			case 'PP':
  				$results = $this->model_catalog_product->getPopularProducts($limit);
  				break;
  		}
  		return $results;
  	}

	// Obtiene los productos seleccionados por el user con toda la info necesaria
  	private function getSelectProducts( $tabInfo , $limit ){
  		$results = array();

  		if(isset($tabInfo['products'])){
  			$limit_count = 0;
			foreach ( $tabInfo['products'] as $product ) {
				if ($limit_count++ == $limit) break;
				$results[$product['product_id']] = $this->model_catalog_product->getProduct($product['product_id']);
			}
		}

		return $results;
  	}

  	//Obtiene los productos segun los datos del custom query
  	private function getCustomQuery( $tabInfo , $limit){
  		$results = array();

  		if ( $tabInfo['sort'] == 'rating' || $tabInfo['sort'] == 'p.date_added') {
  			$order = 'DESC';
  		}else{
  			$order = 'ASC';
  		}

  		$data = array(
  			'filter_category_id' => $tabInfo['filter_category']=='ALL' ? '' : $tabInfo['filter_category'], 
  			'filter_manufacturer_id' => $tabInfo['filter_manufacturer']=='ALL' ? '' : $tabInfo['filter_manufacturer'], 
  			'sort' => $tabInfo['sort'], 
  			'order' => $order,
  			'start' => 0,
  			'limit' => $limit
  		);

  		$results = $this->model_catalog_product->getProducts($data);

		return $results;
  	}

}