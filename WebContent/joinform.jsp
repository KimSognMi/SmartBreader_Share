<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>SMART BREADER</title>
		<meta http-equiv="Content-Type" content="text/html; charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	
		<link rel="stylesheet" href="assets/css/main.css" />
		
		<link rel="stylesheet" href="assets/css/style.css" media="screen" title="no title" charset="utf-8">
		 
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


			<%
				MemberDTO dto = (MemberDTO) session.getAttribute("login");
			%>
			<%
				if (dto == null) {
			%>
			<ul class="links">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="about.jsp">ABOUT US</a></li>
				<li><a href="generic.jsp">BOARD</a></li>
				<li><a href="elements.jsp">NEAR ME NOW</a></li>
				<li><a href="elements.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="joinform.jsp" class="button special fit">Join</a></li>
				<li><a href="loginform.jsp" class="button fit">LogIn</a></li>
			</ul>
			<%
				} else {
			%>

			<ul class="links">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="about.jsp">ABOUT US</a></li>
				<li><a href="generic.jsp">BOARD</a></li>
				<li><a href="elements.jsp">NEAR ME NOW</a></li>
				<li><a href="elements.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="mypage.jsp" class="button special fit">MyPage</a></li>
				<li><a href="LogOutServlet" class="button fit">LogOut</a></li>
			</ul>

			<%
				}
			%>
		</nav>

				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
					<section id="banner" class="style1">
						<div class="inner">
							<span class="image">
								<img src="images/ee2.jpg" alt="" />
							</span>
							<header class="major">
								<h1>JOIN</h1>
							</header>
							<div class="content">
								<p>Lorem ipsum dolor sit amet nullam consequat<br />
					 			sed veroeros. tempus adipiscing nulla.</p>
					 			<ul class="actions">
									<li><a href="#one" class="button next scrolly">JOIN US!</a></li>
								</ul>
							</div>
						</div>
					</section>
  
				<!-- Main -->
			

					<div id="main">
 
						<article class="container">
						   <div class="col-md-6 col-md-offset-3">
          <form role="form">
            <div class="form-group">
              <label for="InputEmail">이메일 주소</label>
              <input type="email" class="form-control" id="InputEmail" placeholder="이메일 주소">
            </div>
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호">
            </div>
            <div class="form-group">
              <label for="InputPassword2">비밀번호 확인</label>
              <input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 확인">
              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
            </div>
            <div class="form-group">
              <label for="username">이름</label>
              <input type="text" class="form-control" id="username" placeholder="이름을 입력해 주세요">
            </div>
            <div class="form-group">
              <label for="username">휴대폰 인증</label>
              <div class="input-group">
                <input type="tel" class="form-control" id="username" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label for="username">인증번호 입력</label>
              <div class="input-group">
                <input type="text" class="form-control" id="username" placeholder="인증번호">
                <span class="input-group-btn">
                  <button class="btn btn-success">인증번호 입력<i class="fa fa-edit spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
                <label>약관 동의</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="#">이용약관</a>에 동의합니다.
              </div>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
          </form>
        </div>
						
			 </article>			
						
						
						</div>
						


				

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