<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Logins extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->output->enable_profiler();
	}

	public function index()
	{
		if($this->session->userdata('id'))
		{
			$id = $this->session->userdata('id');
			$this->load->model('login');
			$login_check = $this->login->get_user_by_id($id);
			$user_data = array(
							'first_name' => $login_check['first_name'],
							'last_name' => $login_check['last_name'],
							'email' => $login_check['email']);
			$this->load->view('login/welcome', $user_data);
		}
		else
		{
			$this->load->view('login/index');
		}
	}

	public function login()
	{
		$email = $this->input->post('email_login');
		$password = trim($this->input->post('password_login'));

		if (strlen($password) == 0)
		{
			$this->session->set_flashdata('error_empty_password', 'please enter a password');
			redirect('Login');
		}
		else 
		{
			if (strlen($email) == 0)
			{
				$this->session->set_flashdata('error_empty_email', 'please enter an email');
				redirect('Login');
			} else {
				$this->load->model('login');
				$login_check = $this->login->get_user_by_email($email);
			
				if($login_check)
				{
					$password_test = $login_check['password'];

					$encrypted_password = md5($password . '' . $login_check['salt']);
					if ($password_test == $encrypted_password)
					{
						$this->session->set_userdata('id', $login_check['id']);
						$user_data = array(
										'first_name' => $login_check['first_name'],
										'last_name' => $login_check['last_name'],
										'email' => $login_check['email']);
						$this->load->view('login/welcome', $user_data);
					}
					else 
					{
						$this->session->set_flashdata('error_password_match', 'password is incorrect, please try again.');
						redirect('Login');
					}
				} 
				else 
				{
					$this->session->set_flashdata('error_email_not_found', 'email is not signed up, please try a different email.');
					redirect('Login');
				}
			}	
		}
	}

	public function log_off()
	{
		$this->session->unset_userdata('id');
		$this->session->sess_destroy();
		$this->load->view('login/index');
	}

	public function register()
	{
	
		//echo $this->input->post('password_register');
		//echo $this->input->post('confirm_password_register');
		$this->load->helper(array('form', 'url'));
		$this->form_validation->set_rules('first_name', 'First Name', 'trim|required',
											array('required' => 'Please type in a first name.')
		);
		$this->form_validation->set_rules('last_name', 'Last Name', 'trim|required',
											array('required' => 'Please type in a last name.')
		);
		$this->form_validation->set_rules('email_register', 'Email', 'trim|required|valid_email|is_unique[users.email]',
											array('required' => 'An email is required to register.',
												  'valid_email' => 'Must enter a valid email address. JSmith@gmail.com',
												  'is_unique' => 'Email is already in use, please select a different email.')
		);
		$this->form_validation->set_rules('password_register', 'Password', 'trim|required|min_length[8]',
											array('required' => 'Please enter a password.',
												  'min_length[8]' => 'Password must be at least 8 characters.')
											);
		$this->form_validation->set_rules('confirm_password_register', 'Confirm Password', 'trim|required|min_length[8]|matches[password_register]',
											array('required' => 'Please enter a password.',
												  'min_length[8]' => 'Password must be at least 8 characters.',
												  'matches[password_register]' => 'Passwords must match.')
											);
		$this->load->model('login');
		if($this->form_validation->run() == FALSE)
		{
			$this->load->view('login/index');
		}
		else
		{
			$first_name = $this->input->post('first_name');
			$last_name = $this->input->post('last_name');
			$email = $this->input->post('email_register');
			$password = $this->input->post('password_register');
			$salt = bin2hex(openssl_random_pseudo_bytes(22));
			$encrypted_password = md5($password . '' . $salt);
			if(empty($date_of_birth))
			{
				$date_of_birth = '';
			}
			if(empty($profile_picture))
			{
				$profile_picture = '';
			}
			$user_data = array('first_name' => $first_name,
							   'last_name' => $last_name,
							   'email' => $email,
							   'salt' => $salt,
							   'password' => $encrypted_password,
							   'date_of_birth' => $date_of_birth,
							   'profile_picture' => $profile_picture);
			$this->load->model('login');
			$result = $this->login->register_user($user_data);
			if ($result)
			{
				$this->session->set_userdata('id', $result);
				redirect('/');
			}
			else 
			{
				$this->session->set_flashdata('error_register', 'Something went wrong, please try registering again.');
				redirect('/');
			}
		}
	}
}

//end of main controller