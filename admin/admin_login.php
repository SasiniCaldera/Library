<?php
	include "connection.php";
	include "navbar.php";
	
?>

<!DOCTYPE html>
<html>
<head>

	<title>Student Login</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width , initial-scale=1">	

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
	section
	{
		margin-top: -20px;
	}
</style>
</head>
<body>

<!--
				<nav class="navbar navbar-inverse">
						<div class="container-fluid">
							<div class="navbar-header">
					 		
					 		<a class="navbar-brand active">ONLINE LIBRARY MANAGEMENT SYSTEM</a>
							</div>

					
							<ul class="nav navbar-nav">
							<li><a href="index.php">HOME</a></li>
							<li><a href="books.php">BOOKS</a></li>
							<li><a href="feedback.php">FEEDBACK</a></li>
							
							</ul>
							<ul class="nav navbar-nav navbar-right">
								
							<li><a href="student_login.php"><span class="glyphicon glyphicon-log-in"> LOGIN</span></a></li>
							<li><a href="student_login.php"><span class="glyphicon glyphicon-log-out"> LOGOUT</span></a></li>
							<li><a href="registration.php"><span class="glyphicon glyphicon-user"> SIGN UP</span></a></li>
							</ul>

						
					</div>
				</nav>I-->
		<!--
	<header style="height: 80px;">
		<div class="logo">
				 		
				 		<h1 style="color: white; font-size: 25px; word-spacing: 10px;line-height: 70px;margin-top: 10px;">ONLINE LIBRARY MANAGEMENT SYSTEM</h1>
				</div>

				<nav>
					<ul>
						<li><a href="index.html">HOME</a></li>
						<li><a href="">BOOKS</a></li>
						<li><a href="student_login.html">STUDENT-LOGIN</a></li>
						<li><a href="registration.html">REGISTRATION</a></li>
						<li><a href="">FEEDBACK</a></li>
						<link rel="stylesheet" type="text/css" href="">
					</ul>
				</nav>
	</header>I-->
	<section>
		<div class="log_img">
			<br><br><br>
			<div class="box1">
				<h1 style="text-align: center; font-size: 35px;font-family: Lucida Console;">
				Library Management System</h1>
				<h1 style="text-align: center; font-size: 25px;">User Login Form</h1><br>
				<form name="Login" action="" method="post">

					<div class="login">
					<input class="form-control" type="text" name="username" placeholder="Username" required=""> <br>
					<input class="form-control" type="password" name="password" placeholder="Password" required=""> <br>
					<input class="btn btn-default" type="submit" name="submit" value="Login" style="color:black; width: 60px; height: 30px;" >
					</div>
					
				<p style="color: white; padding-left: 30px;">
					<br><br>
					<a  style="color: yellow; text-decoration: none;"href="update_password.php">Forgot Password?</a> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
					New to the library?<a style= "color: yellow; text-decoration: none;"href="registration.html">&nbspSign Up</a>
				</p>
				</form>
		</div>	
		</div>
	</section>
		<?php

			if(isset($_POST['submit']))
			{
				$count=0;
				$res=mysqli_query($db,"SELECT * FROM `admin` WHERE username='$_POST[username]' && password='$_POST[password]';");
				$row= mysqli_fetch_assoc($res);
				$count=mysqli_num_rows($res);

				if ($count==0)
				 {

					?>
							<!--
							<script type="text/javascript">
								alert("The username and password doesn't match.")
							</script>
							-->

					<div class="alert alert-danger" style="width:700px; margin-left: 400px; background-color: #de1313; color:white;">
						<strong> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp The username and password doesn't match.</strong>
					</div>
					<?php
				}

				else
				{
					/*--------if username & password matches-----*/
					$_SESSION['login_user'] = $_POST['username'];
					$_SESSION['pic'] = $row['pic'];
					$_SESSION['username']='';
					
					?>
						<script type="text/javascript">
							window.location="index.php"
						</script>
					<?php
				}
			}
		?>



</body>
</html>
