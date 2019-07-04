<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%   String email = request.getParameter("emaliAddress");
	  String t = "";
	  email=(email == null ? null :t);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>更改个人密码</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Fontastic Custom icon font-->
<link rel="stylesheet" href="css/fontastic.css">
<!-- Google fonts - Poppins -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.ico">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
	<div class="page">
		<!-- Main Navbar-->
		<header class="header">
			<nav class="navbar">
				<!-- Search Box-->
				<div class="search-box">
					<button class="dismiss">
						<i class="icon-close"></i>
					</button>
					<form id="searchForm" action="#" role="search">
						<input type="search" placeholder="What are you looking for..."
							class="form-control">
					</form>
				</div>
				<div class="container-fluid">
					<div
						class="navbar-holder d-flex align-items-center justify-content-between">
						<!-- Navbar Header-->
						<div class="navbar-header">
							<!-- Navbar Brand -->
							<a href="index.jsp" class="navbar-brand d-none d-sm-inline-block">
								<div class="brand-text d-none d-lg-inline-block">
									<strong>人流量监控平台</strong>
								</div>
								<div class="brand-text d-none d-sm-inline-block d-lg-none">
									<strong>BD</strong>
								</div>
							</a>
							<!-- Toggle Button-->
							<a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
						</div>
						<!-- Navbar Menu -->
						<ul
							class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
							<!-- Search-->
							<li class="nav-item d-flex align-items-center"><a
								id="search" href="#"><i class="icon-search"></i></a></li>

							<!-- Logout    -->
							<li class="nav-item"><a href="Logout"
								class="nav-link logout"> <span class="d-none d-sm-inline">Logout</span><i
									class="fa fa-sign-out"></i></a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>

		<div class="page-content d-flex align-items-stretch">
			<!-- Side Navbar -->
			<nav class="side-navbar">
				<!-- Sidebar Header-->
				<div class="sidebar-header d-flex align-items-center">
					<div class="avatar">
						<img src="img/avatar-1.jpg" alt="..."
							class="img-fluid rounded-circle">
					</div>
					<div class="title">
						<h1 class="h4">${sessionScope.loginUsername}</h1>
						<p>email: ${sessionScope.email}</p>
					</div>
				</div>
				<!-- Sidebar Navidation Menus-->
				<span class="heading">information</span>
				<ul class="list-unstyled">
					<li><a href="index.jsp"> <i class="icon-home"></i>主页
					</a></li>
					<li><a href="#exampledropdownDropdown" aria-expanded="true"
						data-toggle="collapse"> <i class="icon-interface-windows"></i>个人信息
					</a>
						<ul id="exampledropdownDropdown"
							class="list-unstyled collapse show">
							<li><a href="information.jsp">更改个人信息</a></li>
							<li class="active"><a href="changepassword.jsp">更改个人密码</a></li>
						</ul></li>
				</ul>
			</nav>
			<div class="content-inner">
				<!-- Page Header-->
				<header class="page-header">
					<div class="container-fluid">
						<h2 class="no-margin-bottom">个人信息</h2>
					</div>
				</header>

				<!-- Forms Section-->
				<section class="forms">
					<div class="container-fluid">
						<div class="row" style="text-align: center;">
							<!-- Form Elements -->
							<div class="col-lg-2"></div>
							<div class="col-lg-8">
								<div class="card">
									<div class="card-header d-flex align-items-center">
										<h3 class="h4">更改你的密码</h3>
									</div>
									<div class="card-body">
										<div class="form-group row">
											<label class="col-sm-4 form-control-label">邮箱</label>
											<div class="col-sm-7">

												<div class="form-group">
													<form action="SendVerificationCode" method="post"
														class="form-validate">
														<div class="input-group">
															<input id="emali-address" type="email"
																name="emaliAddress"  placeholder=<%=request.getParameter("emaliAddress") %>  class="form-control">
															<div class="input-group-append">
																<button type="submit" id="button"
																	class="btn btn-primary">发送验证码</button>
															</div>
														</div>
													</form>
												</div>

												<small class="help-block-none">邮箱地址不正确，请输入正确的邮箱地址</small>
											</div>
										</div>
										<form action="ChangePassword" method="post" class="form-horizontal">
											<div class="line"></div>
											<div class="form-group row">
												<label class="col-sm-4 form-control-label">验证码</label>
												<div class="col-sm-7">
													<input type="text" name="verificationcode" placeholder="请输入验证码"
														class="form-control">
												</div>
											</div>
											<div class="line"></div>
											<div class="form-group row">
												<label class="col-sm-4 form-control-label">密码</label>
												<div class="col-sm-7">
													<input id="password" type="password" placeholder="请输入密码" name="password"
														class="form-control">
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 form-control-label"></label>
												<div class="col-sm-7">
													<input id="passwordconfirm" type="password" placeholder="请再次输入密码"
														name="passwordconfirm" class="form-control">
												</div>
											</div>
											<div class="line"></div>
											<div class="form-group row">
												<div class="col-sm-6 ">
													<!-- <button type="submit" class="btn btn-secondary">Cancel</button> -->
													<button id="button_save" type="submit" class="btn btn-primary">保存更改</button>
												</div>
												<div class="col-sm-6 ">
													<button type="submit" class="btn btn-secondary">取消</button>
													<!-- <button type="submit" class="btn btn-primary">Save changes</button> -->
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-- Page Footer-->
				<footer class="main-footer">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6">
								<p>Copyright &copy; 2019.NWPU All rights reserved.</p>
							</div>
							<div class="col-sm-6 text-right">
								<p></p>
								<!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
							</div>
						</div>
					</div>
				</footer>
			</div>
		</div>
	</div>
	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	<script src="js/charts-home.js"></script>
	<!-- Main File-->
	<script src="js/front.js"></script>
	<script>
(function(){
    var sub = document.getElementById("button_save");
    //初始化移入移出事件
    if(sub.addEventListener){
        sub.addEventListener("click", click);  
    }else if(sub.attachEvent){
        sub.attachEvent("onClick", click);
    }
})();
 
function click(){
    var password = document.getElementById("password");
    var passwordConfirm = document.getElementById("passwordconfirm");
    if(password.value != passwordconfirm.value)
        alert("对不起，您2次输入的密码不一致");
}
</script>
</body>
</html>