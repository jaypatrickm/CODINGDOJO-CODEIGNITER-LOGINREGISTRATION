<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
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
			<div class="col-lg-4">
				<h2>Welcome <?= $first_name ?>!</h2>
			</div>
			<div class="col-lg-4">
				<form action="Log_Off" method="post">
					<button type="submit" class="btn btn-link">Log Off</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<h3>User Information</h3>
				<h4>First Name</h4>
				<h5><?= $first_name ?></h5>
				<h4>Last Name</h4>
				<h5><?= $last_name ?></h5>
				<h4>Email Address</h4>
				<h5><?= $email ?></h5>
			</div>
		</div>
	</div>
</body>
</html>