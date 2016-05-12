<?php
class ControllerCommonHeader extends Controller {
	public function index() {
		// Analytics
		$this->load->model('extension/extension');

		$data['analytics'] = array();

		$analytics = $this->model_extension_extension->getExtensions('analytics');

		foreach ($analytics as $analytic) {
			if ($this->config->get($analytic['code'] . '_status')) {
				$data['analytics'][] = $this->load->controller('analytics/' . $analytic['code'], $this->config->get($analytic['code'] . '_status'));
			}
		}

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$this->document->addLink($server . 'image/' . $this->config->get('config_icon'), 'icon');
		}

		$data['title'] = $this->document->getTitle();

			if ($this->config->get('shopme_use_custom_font')) {
			$this->document->addStyle('//fonts.googleapis.com/css?family=' . $this->config->get('shopme_font1_import'));
			} else {
			$this->document->addStyle('//fonts.googleapis.com/css?family=Roboto:300,400,700,900');
			}
			$data['shopme_styles'] = $this->load->controller('common/shopme_styles');
			$data['shopme_cookie'] = $this->load->controller('common/shopme_cookie');	
			$data['header_wishlist_compare'] = $this->load->controller('common/header_wishlist_compare');
			$data['header_mini_menu'] = $this->load->controller('common/header_mini_menu');
			$shopme_top_promo = $this->config->get('shopme_top_promo_message');
			if(empty($shopme_top_promo[$this->config->get('config_language_id')])) {
				$data['shopme_top_promo_message'] = false;
			} else if (isset($shopme_top_promo[$this->config->get('config_language_id')])) {
				$data['shopme_top_promo_message'] = html_entity_decode($shopme_top_promo[$this->config->get('config_language_id')], ENT_QUOTES, 'UTF-8');
			}
			// Shopme ends
		

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');

		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}


		$data['top_menu_pos'] = $this->load->controller('common/top_menu_pos');
		$data['shopme_default_product_style'] = $this->config->get('shopme_default_product_style');
		$data['shopme_use_custom'] = $this->config->get('shopme_use_custom');
		$data['shopme_container_layout'] = $this->config->get('shopme_container_layout');
		$data['shopme_menu_sticky'] = $this->config->get('shopme_menu_sticky');
		$data['shopme_header_style'] = $this->config->get('shopme_header_style');
		$data['shopme_header_search'] = $this->config->get('shopme_header_search');
		$data['shopme_header_login'] = $this->config->get('shopme_header_login');
		$data['shopme_header_cart'] = $this->config->get('shopme_header_cart');
		$data['shopme_menu_type'] = $this->config->get('shopme_menu_type');
		$this->load->language('common/shopme');
		$this->load->language('common/footer');
		$data['shopme_text_mobile_menu'] = $this->language->get('shopme_text_mobile_menu');
		$data['shopme_account'] = $this->language->get('shopme_account');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['popup_login_href'] = $this->url->link('common/popup_login', '', true);
		if ($this->customer->isLogged()) {
			$data['text_welcome'] = sprintf($this->language->get('text_welcome_logged'), $this->url->link('account/account', '', true), $this->url->link('account/logout', '', true));
		} else {
			$data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('common/popup_login', '', true), $this->url->link('account/register', '', true));
		}
		// Shopme ends
		
		$this->load->language('common/header');

		$data['text_home'] = $this->language->get('text_home');

		// Wishlist
		if ($this->customer->isLogged()) {
			$this->load->model('account/wishlist');

			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), $this->model_account_wishlist->getTotalWishlist());
		} else {
			$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}

		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', true);
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', true);
		$data['register'] = $this->url->link('account/register', '', true);
		$data['login'] = $this->url->link('account/login', '', true);
		$data['order'] = $this->url->link('account/order', '', true);
		$data['transaction'] = $this->url->link('account/transaction', '', true);
		$data['download'] = $this->url->link('account/download', '', true);
		$data['logout'] = $this->url->link('account/logout', '', true);
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', true);
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id'  => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name'  => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href'  => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name'     => $category['name'],
					'children' => $children_data,
					'column'   => $category['column'] ? $category['column'] : 1,
					'href'     => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');

		// For page specific css
		if (isset($this->request->get['route'])) {
			if (isset($this->request->get['product_id'])) {
				$class = '-' . $this->request->get['product_id'];
			} elseif (isset($this->request->get['path'])) {
				$class = '-' . $this->request->get['path'];
			} elseif (isset($this->request->get['manufacturer_id'])) {
				$class = '-' . $this->request->get['manufacturer_id'];
			} elseif (isset($this->request->get['information_id'])) {
				$class = '-' . $this->request->get['information_id'];
			} else {
				$class = '';
			}

			$data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
		} else {
			$data['class'] = 'common-home';
		}

		return $this->load->view('common/header', $data);
	}
}
