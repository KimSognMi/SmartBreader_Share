<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>SMART BREADER</title>
<script type="text/javascript" src="assets/js/jquery-3.1.0.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=" utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="assets/css/main.css" />

<link rel="stylesheet" href="assets/css/joinstyle.css" media="screen"
	title="no title" charset="utf-8">
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script src="assets/js/daum.js"></script>
</head>
<body>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<!-- Note: The "styleN" class below should match that of the banner element. -->
		<header id="header" class="alt style2">
			<a href="index.jsp" class="logo"><strong>SMART</strong> <span>BREADER</span></a>
			<nav>
				<a href="#menu">Menu</a>
			</nav>
		</header>

		<!-- Menu -->
		<nav id="menu">
			<ul class="links">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="about.jsp">ABOUT US</a></li>
				<li><a href="board.jsp">BOARD</a></li>
				<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
				<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="mypage.jsp" class="button special fit">MY PAGE</a></li>
				<li><a href="index.jsp" class="button fit">Log Out</a></li>
			</ul>
		</nav>

		<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style4">
			<div class="inner">
				<span class="image"> <img src="images/rr.jpg" alt="" />
				</span>
				<header class="major">
					<h1>MY PAGE</h1>
				</header>
				<div class="content">
					<p>
						Lorem ipsum dolor sit amet nullam consequat<br /> sed veroeros.
						tempus adipiscing nulla.
					</p>
				</div>		
					<ul class="actions">
						<li><a href="#three" class="button next scrolly">수정!</a></li>
					</ul>
			
			</div>
		</section>

		<!-- Main -->

		<div id="main">
			<section id="three">
				<!-- <article class="container"> -->
				<div class="col-md-6 col-md-offset-3">
					<form>
						<div class="field2">
							<label for="username">이름</label> <input type="text"
								class="form-control" id="username" placeholder="이름을 입력해 주세요">
						</div>
						<div class="field2">
							<label for="InputEmail">이메일 주소(ID)</label> <input type="email"
								class="form-control" id="InputEmail" placeholder="이메일 주소">
						</div>

						<div class="field2 ">
							<label for="InputPassword1">비밀번호</label> <input type="password"
								class="form-control" id="InputPassword1" placeholder="비밀번호">
						</div>
						<div class="field2 ">
							<label for="InputPassword2">비밀번호 확인</label> <input
								type="password" class="form-control" id="InputPassword2"
								placeholder="비밀번호 확인">
							<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
						</div>


                          <div class="field3">
							<label for="InputPhone">휴대폰 번호</label><input type="tel"
								class="form-control" id="phone" placeholder="- 없이 입력해 주세요">
							</div>
							
		
							  <div class="field3" >
							 <label for="InputAddress">주소</label></div>
							  <div class="field half2">
	<input type="text" class="form-control" id="post1" placeholder="post1" readonly=""></div>
	 <div class="field half">
	- <input type="tel" class="form-control" id="post2" placeholder="post2" readonly=""></div>
	
		
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기">
	<br>
	<div class="field2">
	<input type="text" name="addr1" id="addr1" size="40" readonly="" class="form-control"
		placeholder="도로명주소">
	<br>
	<span style="line-height: 10%;"></span>
	<input type="text" class="form-control" name="addr2" id="addr2" size="40" placeholder="지번주소">
	</div>
							
							
						 <div class="form-group text-center">
						
							<button type="submit" class="btn btn-info">
								수정완료<i class="fa fa-check spaceLeft"></i>
							</button>
							<button type="submit" class="btn btn-warning">수정취소<i class="fa fa-times spaceLeft"></i></button>
						
						</div>
						
					</form>
			</div>

				<!--  </article>	 -->

			</section>
		</div>






		<!-- Footer -->
		<footer id="footer">
			<div class="inner">
				<ul class="icons">
					<li><a href="#" class="icon alt fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon alt fa-facebook"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon alt fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon alt fa-github"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon alt fa-linkedin"><span
							class="label">LinkedIn</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; Untitled</li>
					<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>

				</ul>
			</div>
		</footer>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>




</body>
</html>