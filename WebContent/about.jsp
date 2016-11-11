<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>SMART BREADER</title>
		<meta http-equiv="Content-Type" content="text/html; charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="styasdflesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				<!-- Note: The "styleN" class below should match that of the banner element. -->
					<header id="header" class="alt style2">
						<a href="index.jsp" class="logo"><strong>SMART</strong> <span>BREADER</span></a>
						<nav>
			<c:if test="${sessionScope.login!=null}">
		안녕하세요.  ${login.username}님<p style="color: red">♥</p>
			</c:if>
				&nbsp;<a href="#menu">Menu</a>
			</nav>
					</header>

				<!-- Menu -->
				<nav id="menu">

			<c:if test="${sessionScope.login==null}">
				<ul class="links">
					<li><a href="index.jsp">HOME</a></li>
					<li><a href="about.jsp">ABOUT US</a></li>
					<li><a href="LoginFormServlet">후기 & 질문</a></li>
					<li><a href="LoginFormServlet">편의시설 검색</a></li>
					<li><a href="LoginFormServlet">근처 애견 검색</a></li>
				
				</ul>
				<ul class="actions vertical">
					<li><a href="MemberFormServlet" class="button special fit">회원가입</a></li>
					<li><a href="LoginFormServlet" class="button fit">LogIn</a></li>
				</ul>
			</c:if>

			<c:if test="${sessionScope.login!=null}">
				
					<c:if test="${login.userid =='adminkongju@naver.com'}">관리자계정
						<ul class="links">
							<li><a href="index.jsp">HOME</a></li>
							<li><a href="about.jsp">ABOUT US</a></li>
							<li><a href="BoardListServlet2">후기 & 질문</a></li>
							<li><a href="nearmenow.jsp">편의시설 검색</a></li>
							<li><a href="PetSearchServlet">근처 애견 검색</a></li>
						
						</ul>
						<ul class="actions vertical">
							<li><a href="MemberListServlet" class="button special fit">회원관리</a></li>
							<li><a href="LogOutServlet" class="button fit">LogOut</a></li>
						</ul>
				
				
				       
	</c:if>
						<c:if test="${login.userid!='adminkongju@naver.com'}">
			 <c:if test="${!empty sessionScope.list}">	 
						<c:if test="${sessionScope.list.size()!=0}">
					<ul class="links">
						<li><a href="index.jsp">HOME</a></li>
						<li><a href="about.jsp">ABOUT US</a></li>
		
						<li><a href="BoardListServlet">후기 & 질문</a></li>
						<li><a href="nearmenow.jsp">편의시설 검색</a></li>
						<li><a href="PetSearchServlet">근처 애견 검색</a></li>
					
					</ul> 
					<ul class="actions vertical">
						<li><a href="MyPetListServlet?userid=${login.userid}" class="button fit">MyPET Page</a></li>
					<li><a href="RequestPetListServlet?requestid=${login.userid}" class="button special fit">신청현황</a></li> 
				
						<li><a href="MyPageServlet" class="button special fit">MyPage</a></li>
						<li><a href="LogOutServlet" class="button fit">LogOut</a></li>
					</ul> 
					
				</c:if>
				</c:if> 
				

				<c:if test="${sessionScope.list.size()==0 or empty sessionScope.list}">
				
					<ul class="links">
						<li><a href="index.jsp">HOME</a></li>
						<li><a href="about.jsp">ABOUT US</a></li>
						<li><a href="BoardListServlet">BOARD</a></li>
						<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
						<li><a href="PetSearchServlet">NEAR ME DOG</a></li>
						
					</ul>
					<ul class="actions vertical">
						<li><a href="PetFormServlet" class="button fit">PET 등록</a></li>
						<li><a href="MyPageServlet" class="button special fit">MyPage</a></li>
						<li><a href="LogOutServlet" class="button fit">Log Out</a></li>
					</ul>
				
				</c:if>
				
	
					</c:if>
					
		
	</c:if>

			
		</nav>

				<!-- Banner -->
				<!-- Note: The "styleN" class below should match that of the header element. -->
					<section id="banner" class="style6">
						<div class="inner">
							<span class="image">
								<img src="images/jj.jpg" alt="" />
							</span>
							<header class="major">
								<h1>ABOUT US</h1>
							</header>
							<div class="content">
								<p>우리는 SMART BREEDER 입니다<br />
					 			</p>
							</div>
						</div>
					</section>

				<!-- Main -->
					<div id="main">

						<!-- One -->
							<section id="one">
								<div class="inner">
									<header class="major">
										<h2>SMART BREEDER</h2>
									</header>
									<p>개인주의 성향이 늘고 1인 가구 시대가 되어가면서 애견에 대한 관심이 증가 하고 있습니다.
이제 동물과 인간의 관계를 넘어 가족구성원으로 여겨지는 시대가 되었습니다.
REEDER란 ‘사육자’라는 뜻으로 국내에서는 황금알을 낳는 거위라고 합니다
한 견종에 대해 혈통적 체계를 깊이 인식하고 견종의 능력적 특징을 유지하면서
보다 나은 능력으로 개발 유지하게 하는 사람을 뜻합니다.
항상 신체 정신적으로 건강한 개체만을 선택번식 해야 하며 유전적 결함을 가지고 있거나 있다고 생각되는 
그 어떤 숫캐나 암캐는 번식,판매의 목적으로 이용 되지 않아야 합니다. 
스마트 브리더는 여러분의 반려동물과 함께 늘 가까이 있습니다.
여러분과 같이하는 SMART BREEDER만의 가족 문화를 경험하실 수 있습니다.
</p>
								</div>
							</section>

						<!-- Two -->
							<section id="two" class="spotlights">
								<section>
									<a href="generic.html" class="image">
										<img src="images/pic08.jpg" alt="" data-position="center center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>올바른 애견 문화 정착</h3>
											</header>
											<p>Nullam et orci eu lorem consequat tincidunt vivamus et sagittis magna sed nunc rhoncus condimentum sem. In efficitur ligula tate urna. Maecenas massa sed magna lacinia magna pellentesque lorem ipsum dolor. Nullam et orci eu lorem consequat tincidunt. Vivamus et sagittis tempus.</p>
											<ul class="actions">
												<li><a href="BoardListServlet" class="button">Learn more</a></li>
											</ul>
										</div>
									</div>
								</section>
								<section>
									<a href="generic.html" class="image">
										<img src="images/pic09.jpg" alt="" data-position="top center" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>견주가 원하는 자견 배출</h3>
											</header>
											<p>주변 가까이에 살고 있는 가정견을 확인하고 원하는 가정견과의 교배가 이루어질 수 있도록 하며 그로 인해 순수 혈통을 보존 가능하고 견주가 원하는 자견을 배출할 수 있도록 합니다.</p>
											<ul class="actions">
												<li><a href="PetSearchServlet" class="button">Learn more</a></li>
											</ul>
										</div>
									</div>
								</section>
								<section>
									<a href="generic.html" class="image">
										<img src="images/pic10.jpg" alt="" data-position="25% 25%" />
									</a>
									<div class="content">
										<div class="inner">
											<header class="major">
												<h3>하나의 커뮤니케이션 공간 제공</h3>
											</header>
											<p>후기글 또는 문의글을 통해 하나의 커뮤니케이션 공간을 만듦으로써 반려견에 대한 정보 공유를 가능하도록 합니다.</p>
											<ul class="actions">
												<li><a href="BoardListServlet" class="button">Learn more</a></li>
											</ul>
										</div>
									</div>
								</section>
							</section>

						<!-- Three -->
							<section id="three">
								<div class="inner">
									<header class="major">
										<h2>Greeting</h2>
									</header>
									<p>반려견은 언제나 가족의 행복만을 바라며 산다는 사실을 아시나요? 가족의 웃음이 담긴 사진속에서, 여행을 떠나는 여러분의 옆자리에서,자녀를 위한 정서적인 친구로서, 누군가의 연인 누군가의 막내 역할로서 일상의 작은 감동이 만드는 반려동물이 바로 여러분과 함께 숨쉬고 있습니다. 마음을 나누는 행복한 동반자로서 SMART BREEDER는 언제나 함께 하겠습니다. 사랑과 신뢰로 성장하는 SMART BREEDER가 되도록, 더 좋은 애견문화를 위해 항상 노력하겠습니다. SMART BREEDER는 보호자와 반려견이 항상 행복하기를 바랍니다.</p>
									<ul class="actions">
										<li><a href="index.jsp" class="button next">Get Started</a></li>
									</ul>
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