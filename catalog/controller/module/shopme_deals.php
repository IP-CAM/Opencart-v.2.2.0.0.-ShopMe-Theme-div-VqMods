<?php
class ControllerModuleShopmeDeals extends Controller {
	public function index($setting) {
		$this->load->language('module/shopme_deals');

		$data['heading_title'] = $this->language->get('heading_title');
		
		if (file_exists('catalog/view/theme/shopme/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js')) {
		$this->document->addScript('catalog/view/theme/shopme/js/countdown/jquery.countdown_' . $this->language->get('code') . '.js');
		} else {
		$this->document->addScript('catalog/view/theme/shopme/js/countdown/jquery.countdown_en.js');
		}
		
		$this->document->addStyle('catalog/view/theme/shopme/stylesheet/owl.transitions.css');
		
		$data['autoplay'] = $setting['autoplay'];
		$data['images_width'] = $setting['width'];
		
		$this->load->language('product/product');
		$data['text_tax'] = $this->language->get('text_tax');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');
		$data['text_special_price'] = $this->language->get('text_special_price');
		$data['text_old_price'] = $this->language->get('text_old_price');
		$data['text_you_save'] = $this->language->get('text_you_save');
		$data['text_expire'] = $this->language->get('text_expire');
		$data['text_write'] = $this->language->get('text_write');
		$data['text_model'] = $this->language->get('text_model');
		$data['text_stock'] = $this->language->get('text_stock');
		$data['button_view_all'] = $this->language->get('button_view_all');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		
		$data['shopme_product_countdown'] = $this->config->get('shopme_product_countdown');
		$data['shopme_product_hurry'] = $this->config->get('shopme_product_hurry');
		$data['review_status'] = $this->config->get('config_review_status');
		$data['shopme_product_yousave'] = $this->config->get('shopme_product_yousave');
		$data['shopme_percentage_sale_badge'] = $this->config->get('shopme_percentage_sale_badge');
		$data['shopme_tax'] = $this->config->get('shopme_tax');
		
		
		$data['button_view_all_href'] = $this->url->link('product/special');

		
		$this->load->model('catalog/product');
		$this->load->model('tool/image');
		$this->load->model('catalog/review');

		$data['products'] = array();

		if (!$setting['limit']) {
			$setting['limit'] = 4;
		}

		$products = array_slice($setting['product'], 0, (int)$setting['limit']);

		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);

			if ($product_info) {
				
				if ($product_info['image']) {
					$image = $this->model_tool_image->resize($product_info['image'], $setting['width'], $setting['height']);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $setting['width'], $setting['height']);
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}
							
				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					$sales_percantage = ((($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))-($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax'))))/(($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))/100));
					$special_info = $this->model_catalog_product->getSpecialPriceEnd($product_info['product_id']);
        			$special_date_end = strtotime($special_info['date_end']) - time();
					$yousave = $this->currency->format(($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')))-($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax'))), $this->session->data['currency']);
				} else {
					$special = false;
					$special_date_end = false;
					$yousave = false;
					$sales_percantage = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$product_info['special'] ? $product_info['special'] : $product_info['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}
				
				if ($product_info['quantity'] <= 0) {
					$data['stock'] = $product_info['stock_status'];
				} elseif ($this->config->get('config_stock_display')) {
					$data['stock'] = $product_info['quantity'];
				} else {
					$data['stock'] = $this->language->get('text_instock');
				}

				if ($this->config->get('config_review_status')) {
					$rating = $product_info['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $product_info['product_id'],
					'thumb'       => $image,
					'name'        => $product_info['name'],
					'special_date_end' => $special_date_end,
					'yousave'    	 => $yousave,
					'sales_percantage' => number_format($sales_percantage, 0, ',', '.'),
					'stock_quantity' => sprintf($this->language->get('text_stock_quantity'), (int)$product_info['quantity']),
					'items_sold' => sprintf($this->language->get('text_items_sold'), (int)$this->model_catalog_product->getItemsSold($product_id)),
					'description' => utf8_substr(strip_tags(html_entity_decode($product_info['description'], ENT_QUOTES, 'UTF-8')), 0, 180) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'qty'        => $product_info['quantity'],
					'minimum'     => $product_info['minimum'] > 0 ? $product_info['minimum'] : 1,
					'model'        => $product_info['model'],
					'rating'      => $rating,
					'manufacturer' => $product_info['manufacturer'],
					'manufacturers' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $product_info['manufacturer_id']),
					'reviews'	  => sprintf($this->language->get('text_reviews'), (int)$this->model_catalog_review->getTotalReviewsByProductId($product_id)),
					'href'        => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
				);
			}
		}

		if ($data['products']) {
			
			return $this->load->view('module/shopme_deals', $data);
		}
	}
}