<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login and Registration</title>
	<script type="text/javascript" src="/assets/js/jquery-2.1.3.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2>Log In</h2>
				<h3><?php if ($this->session->flashdata('error_empty_email')) { echo $this->session->flashdata('error_empty_email'); } ?></h3>
				<h3><?php if ($this->session->flashdata('error_empty_password')) { echo $this->session->flashdata('error_empty_password'); } ?></h3>
				<h3><?php if ($this->session->flashdata('error_password_match')) { echo $this->session->flashdata('error_password_match'); } ?></h3>
				<h3><?php if ($this->session->flashdata('error_email_not_found')) { echo $this->session->flashdata('error_email_not_found'); } ?></h3>
				<form action="Welcome" method="post">
	  				<div class="form-group">
	    				<label for="email_login">Email</label>
	    				<input type="email" class="form-control" name="email_login" id="email_login" placeholder="Enter Email">
	  				</div>
	 				<div class="form-group">
	    				<label for="password_login">Password</label>
	    				<input type="password" class="form-control" name="password_login" id="password_login" placeholder="Password">
	  				</div>
	  				<button type="submit" class="btn btn-default">Login</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h2>Or Register</h2>
				<h3><?php echo validation_errors(); ?></h3>
				<h3><?php if ($this->session->flashdata('email_error')) { echo $this->session->flashdata('email_error'); } ?></h3>
				<h3><?php if ($this->session->flashdata('error_register')) { echo $this->session->flashdata('error_register'); } ?></h3>
				<form action="Register" method="post">
	  				<div class="form-group">
	    				<label for="first_name">First Name</label>
	    				<input type="text" class="form-control" name="first_name" id="first_name" placeholder="Enter First Name" value="<?= set_value('first_name') ?>">
	  				</div>
	  				<div class="form-group">
	    				<label for="last_name">Last Name</label>
	    				<input type="text" class="form-control" name="last_name" id="last_name" placeholder="Enter Last Name" value="<?= set_value('last_name') ?>">
	  				</div>
	  				<div class="form-group">
	    				<label for="email_register">Email</label>
	    				<input type="email" class="form-control" name="email_register" id="email_register" placeholder="Enter Email" value="<?= set_value('email_register') ?>">
	  				</div>
	 				<div class="form-group">
	    				<label for="password_register">Password</label>
	    				<input type="password" class="form-control" name="password_register" id="password_register" placeholder="Password">
	  				</div>
	  				<div class="form-group">
	    				<label for="confirm_password_register">Confirm Password</label>
	    				<input type="password" class="form-control" name="confirm_password_register" id="confirm_password_register" placeholder="Confirm Password">
	  				</div>
	  				<button type="submit" class="btn btn-default">Register</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>