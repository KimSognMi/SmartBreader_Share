<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Generic - Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<a href="index.jsp" class="logo"><strong>Forty</strong> <span>by HTML5 UP</span></a>
						<nav>
							<a href="#menu">Menu</a>
						</nav>
					</header>

				<!-- Menu -->
					<nav id="menu">

			<c:if test="${sessionScope.login==null}">
				<ul class="links">
					<li><a href="index.jsp">HOME</a></li>
					<li><a href="about.jsp">ABOUT US</a></li>
					<li><a href="BoardListServlet">BOARD</a></li>
					<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
					<li><a href="PetSearchServlet">NEAR ME DOG</a></li>
					<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
				</ul>
				<ul class="actions vertical">
					<li><a href="memberform.jsp" class="button special fit">JOIN</a></li>
					<li><a href="loginform.jsp" class="button fit">Log In</a></li>
				</ul>
			</c:if>

			<c:if test="${sessionScope.login!=null}">

				<c:if test="${login.userid =='adminkongju@naver.com'}">관리자계정
						<ul class="links">
						<li><a href="index.jsp">HOME</a></li>
						<li><a href="about.jsp">ABOUT US</a></li>
						<li><a href="BoardListServlet">BOARD</a></li>
						<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
						<li><a href="PetSearchServlet">NEAR ME DOG</a></li>
						<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
					</ul>
					<ul class="actions vertical">
						<li><a href="petform.jsp" class="button fit">Manage Pet</a></li>
						<li><a href="MemberListServlet" class="button special fit">Manage
								Member</a></li>
						<li><a href="LogOutServlet" class="button fit">Log Out</a></li>
					</ul>
				</c:if>

				<c:if test="${login.userid!='adminkongju@naver.com'}">
					<c:if test="${sessionScope.list.size()==0}">
						<ul class="links">
							<li><a href="index.jsp">HOME</a></li>
							<li><a href="about.jsp">ABOUT US</a></li>
							<li><a href="BoardListServlet">BOARD</a></li>
							<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
							<li><a href="nearmedog.jsp">NEAR ME DOG</a></li>
							<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
						</ul>
						<ul class="actions vertical">
							<li><a href="petform.jsp" class="button fit">My PET</a></li>
							<li><a href="MyPageServlet" class="button special fit">MyPage</a></li>
							<li><a href="LogOutServlet" class="button fit">Log Out</a></li>
						</ul>

					</c:if>
				
 ${sessionScope.list.size()}
				<c:if test="${sessionScope.list.size()!=0}">
						<ul class="links">
							<li><a href="index.jsp">HOME</a></li>
							<li><a href="about.jsp">ABOUT US</a></li>
							<li><a href="BoardListServlet">BOARD</a></li>
							<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
							<li><a href="nearmedog.jsp">NEAR ME DOG</a></li>
							<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
						</ul>
						<ul class="actions vertical">
							<li><a href="MyPetListServlet" class="button fit">My PET
									Page</a></li>
							<li><a href="MyPageServlet" class="button special fit">MyPage</a></li>
							<li><a href="LogOutServlet" class="button fit">Log Out</a></li>
						</ul>



					</c:if>
				</c:if>


			</c:if>

		</nav>

				<!-- Main -->
					<div id="main" class="alt">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h1>Generic</h1>
									</header>
									<span class="image main"><img src="images/pic11.jpg" alt="" /></span>
									<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fergiat. Pellentesque in mi eu massa lacinia malesuada et a elit. Donec urna ex, lacinia in purus ac, pretium pulvinar mauris. Curabitur sapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit.</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus rutrum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam tristique libero eu nibh porttitor fermentum. Nullam venenatis erat id vehicula viverra. Nunc ultrices eros ut ultricies condimentum. Mauris risus lacus, blandit sit amet venenatis non, bibendum vitae dolor. Nunc lorem mauris, fringilla in aliquam at, euismod in lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In non lorem sit amet elit placerat maximus. Pellentesque aliquam maximus risus, vel sed vehicula.</p>
									<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>
								</div>
							</section>

					</div>

				<!-- Contact -->
					<section id="contact">
						<div class="inner">
							<section>
								<form method="post" action="#">
									<div class="field half first">
										<label for="name">Name</label>
										<input type="text" name="name" id="name" />
									</div>
									<div class="field half">
										<label for="email">Email</label>
										<input type="text" name="email" id="email" />
									</div>
									<div class="field">
										<label for="message">Message</label>
										<textarea name="message" id="message" rows="6"></textarea>
									</div>
									<ul class="actions">
										<li><input type="submit" value="Send Message" class="special" /></li>
										<li><input type="reset" value="Clear" /></li>
									</ul>
								</form>
							</section>
							<section class="split">
								<section>
									<div class="contact-method">
										<span class="icon alt fa-envelope"></span>
										<h3>Email</h3>
										<a href="#">information@untitled.tld</a>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-phone"></span>
										<h3>Phone</h3>
										<span>(000) 000-0000 x12387</span>
									</div>
								</section>
								<section>
									<div class="contact-method">
										<span class="icon alt fa-home"></span>
										<h3>Address</h3>
										<span>1234 Somewhere Road #5432<br />
										Nashville, TN 00000<br />
										United States of America</span>
									</div>
								</section>
							</section>
						</div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<div class="inner">
							<ul class="icons">
								<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
								<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
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