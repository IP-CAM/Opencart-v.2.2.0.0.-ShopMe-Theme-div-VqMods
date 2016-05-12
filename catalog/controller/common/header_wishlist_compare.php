<?php 
class ControllerCommonHeaderWishlistCompare extends Controller {
	public function index() {
		
		$data['shopme_header_wishlist'] = $this->config->get('shopme_header_wishlist');
		$data['shopme_header_compare'] = $this->config->get('shopme_header_compare');
		
		$this->load->language('module/header_wishlist_compare');
		
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_compare'] = $this->language->get('text_compare');
		
		$this->load->model('account/wishlist');
		
		if ($this->customer->isLogged()) {
		$data['text_wishlist_count'] = sprintf($this->language->get('text_wishlist_count'), $this->model_account_wishlist->getTotalWishlist());
		} else {
		$data['text_wishlist_count'] = sprintf($this->language->get('text_wishlist_count'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		}
		$data['wishlist_link'] = $this->url->link('account/wishlist', '', true);
		
		
		$data['text_compare_count'] = sprintf($this->language->get('text_compare_count'), (isset($this->session->data['compare']) ? count($this->session->data['compare']) : 0));
		$data['compare_link'] = $this->url->link('product/compare', '', true);

			return $this->load->view('common/header_wishlist_compare', $data);
			
	}
	public function info() {
		$this->response->setOutput($this->index());
	}
}