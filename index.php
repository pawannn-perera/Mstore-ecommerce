<?php
	session_start();
	if(isset($_SESSION['uid'])){
		header('location:profile.php');
	}
 ?>
<body>
	<?php
    require 'includes/header.php';
	?>
	<div class="navbar navbar-default navbar-fixed-top" id="topnav">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="index.php" class="navbar-brand">M-Store</a>
			</div>

			<ul class="nav navbar-nav">
				<li style="width:300px;left:10px;top:10px;"><input type="text" class="form-control" id="search" name=""></li>
				<li style="top:10px;left:20px;"><button class="btn btn-primary" id="search_btn" name=""><span class='glyphicon glyphicon-search'></span></button></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li id='shoppingcart'><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>Cart <span class="badge">0</span>	</a>
					<div class="dropdown-menu" style="width: 500px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">S. No.</div>
									<div class="col-md-3">Product</div>
									<div class="col-md-3">Name</div>
									<div class="col-md-3">Price(LKR.)</div>
								</div>
							</div>
							<div class="panel-body"></div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>Login</a>
					<ul class="dropdown-menu">
					<div style="width: 350px;">
						<div class="panel panel-primary">
							<div class="panel-heading">Login</div>
							<div class="panel-heading">
								<label for="email">Email</label>
								<input type="email" class="form-control" id="email">
								<br>
								<label for="email">Password</label>
								<input type="password" class="form-control" id="password">
								<br>
								<a href="#" style="color: white;list-style-type: none;">Forgot Password</a><br>
								<a style="color: white;list-style-type: none; text-decoration: none;">Not a Member? </a><a href="customer_registration.php" style="color: white;list-style-type: none;">Register</a>
								<input type="submit" class="btn btn-success" style="float: right;bottom:12px;" id="login" value="Login" name="">
							</div>
							<div class="panel-footer" id="e_msg"></div>
						</div>
					</div>
				</ul>

				<li><a href="customer_registration.php">Signup</a></li>
			</ul>
		</div>
	</div>
		<br><br><br><br>
	<!-- Slider Begins -->

	<div class="one-time">
	    <div><img src="assets/images/slide1.png" width="1300" height="500"></div>
		<div><img src="assets/images/slide2.png" width="1300" height="500"></div>
		<div><img src="assets/images/slide3.png" width="1300" height="500"></div>
  	</div>

	<!-- Slider ends -->

	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-0"></div>
			<div class="col-md-3">
			<div id="get_cat"></div>
			<div id="get_brand"></div>
			</div>
			
			<div class="col-md-9">
			<div class="row">
					<div class="col-md-12" id="cartmsg">

					</div>
				</div>
				<div class="panel panel-info">
					<div class="panel-heading text-center">--Featured Products--<
					<!--<div class='pull-right'>
								Sort: &nbsp;&nbsp;&nbsp;<a href="#" id='price_sort'>Price</a> | <a href="#" id='pop_sort'>Popularity</a>
					</div>-->
					</div>
					<div class="panel-body">
					<div id="get_product"></div>
					</div>
					<div class="panel-footer">&copy; 2023</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<center>
					<ul class='pagination' id='pageno'>
					</ul>
				</center>
			</div>

			<!-- Modal -->

				<div class="modal fade" id="prod_detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">Product Details</h4>
				      </div>
				      <div class="modal-body" id='dynamic_content'>
				        ...
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

				      </div>
				    </div>
				  </div>
				</div>

			 <!-- Modal ends-->
		</div>
	</div>




	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  	<script type="text/javascript" src="//cdn.jsdelivr.net/jquery.slick/1.6.0/slick.min.js"></script>
	<script src="assets/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>
	<script src="main.js"></script>
	<?php
    require 'includes/footer.php';
	?>
</body>
</html>
