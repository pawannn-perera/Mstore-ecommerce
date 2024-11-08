<?php

	include('dbconnect.php');

	$f_name = $_POST['f_name'];
	$l_name = $_POST['l_name'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$mobile = $_POST['mobile'];
	$address1 = $_POST['address1'];
	$address2 = $_POST['address2'];

	if (empty($f_name) || empty($l_name) || empty($email) || empty($mobile) || empty($address1)) {
		echo "<div class='alert alert-danger alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Please fill all the fields!</div>";
		exit(0);
	} else {
		if (empty($password)) {
			echo "
				<div class='alert alert-warning'>
					<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
					<b>Password is required</b>
				</div>
			";
			exit();
		}

		if (strlen($password) < 8) {
			echo "
				<div class='alert alert-warning'>
					<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
					<b>Password should be at least 8 characters long</b>
				</div>
			";
			exit();
		}

		if (!(strlen($mobile) == 10)) {
			echo "
				<div class='alert alert-warning'>
					<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
					<b>Mobile number must be 10 digits</b>
				</div>
			";
			exit();
		}

		// Check for available user details
		$sql = "SELECT user_id FROM user_info WHERE email = '$email' LIMIT 1";
		$check_query = mysqli_query($conn, $sql);
		$count_email = mysqli_num_rows($check_query);

		if ($count_email > 0) {
			echo "
				<div class='alert alert-danger'>
					<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
					<b>Email Address is already available. Try another email address.</b>
				</div>
			";
			exit();
		} else {
			// Hash the password
			//$hashed_password = password_hash($password, PASSWORD_DEFAULT);

			$sql = "INSERT INTO user_info (first_name, last_name, email, password, mobile, address1, address2) VALUES ('$f_name', '$l_name', '$email', '$password', '$mobile', '$address1', '$address2')";
			$run_query = mysqli_query($conn, $sql);
			if ($run_query) {
				echo "
					<div class='alert alert-success'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						Click <b><a href='index.php'>here</a></b> to login.
					</div>
				";
			}
		}
	}

?>
