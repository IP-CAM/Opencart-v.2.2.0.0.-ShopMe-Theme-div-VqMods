<?php
class ControllerModuleShopmeContact extends Controller {
	public function index() {
		
		$this->load->language('module/shopme_contact');
		
		$data['text_name'] = $this->language->get('text_name');
		$data['text_email'] = $this->language->get('text_email');
		$data['text_message'] = $this->language->get('text_message');
		$data['text_button'] = $this->language->get('text_button');
		
		$title = $this->config->get('shopme_contact_title');
		if(empty($title[$this->language->get('code')])) {
			$data['module_title'] = false;
		} else if (isset($title[$this->language->get('code')])) {
			$data['module_title'] = html_entity_decode($title[$this->language->get('code')], ENT_QUOTES, 'UTF-8');
		}
		
		$welcome_message = $this->config->get('shopme_contact_message');
		if(empty($welcome_message[$this->language->get('code')])) {
			$data['welcome_message'] = false;
		} else if (isset($welcome_message[$this->language->get('code')])) {
			$data['welcome_message'] = html_entity_decode($welcome_message[$this->language->get('code')], ENT_QUOTES, 'UTF-8');
		}
		
       return $this->load->view('module/shopme_contact', $data);
	}
	
	public function send_message () {
		$this->load->language('module/shopme_contact');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			
			if ((utf8_strlen($this->request->post['cf_email']) < 2) || (utf8_strlen($this->request->post['cf_email']) > 60)) {
				$json['error'] = $this->language->get('error_email');
			}

			if ((utf8_strlen($this->request->post['cf_text']) < 5) || (utf8_strlen($this->request->post['cf_text']) > 1000)) {
				$json['error'] = $this->language->get('error_message');
			}

			if (empty($this->session->data['captcha_contact_form']) || ($this->session->data['captcha_contact_form'] != $this->request->post['cf_captcha'])) {
				$json['error'] = $this->language->get('error_verification');
			}

			unset($this->session->data['captcha_contact_form']);

			if (!isset($json['error'])) {
				// Opencart 2.0.2
				
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
			$mail->smtp_username = $this->config->get('config_mail_smtp_username');
			$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
			$mail->smtp_port = $this->config->get('config_mail_smtp_port');
			$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');			
			
			$mail->setTo($this->config->get('config_email'));
			$mail->setFrom($this->request->post['cf_email']);
			$mail->setSender(html_entity_decode($this->request->post['cf_name'], ENT_QUOTES, 'UTF-8'));
			$mail->setSubject(html_entity_decode(sprintf($this->language->get('email_subject'), $this->request->post['cf_name']), ENT_QUOTES, 'UTF-8'));
			$mail->setText($this->request->post['cf_text']);
			$mail->send();
				
				$json['success'] = $this->language->get('text_success');
			}
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
	
	
	public function captcha() {
		$num1=rand(2,6);
		$num2=rand(2,6);
		$this->session->data['captcha_contact_form'] = $num1+$num2;
		$image = imagecreatetruecolor(58, 22);
		$width = imagesx($image);
		$height = imagesy($image);
		$black = imagecolorallocate($image, 50, 50, 50);
		$white = imagecolorallocate($image, 255, 255, 255);
		imagefilledrectangle($image, 0, 0, $width, $height, $white);
		imagestring($image, 4, 0, 3, "$num1"." + "."$num2"." =", $black);
		header('Content-type: image/png');
		imagepng($image);
		imagedestroy($image);
	}
}