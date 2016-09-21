<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dto.MemberDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="com.dto.MemberDTO"%>
<!DOCTYPE HTML>


<html>
<head>
<title>Landing - Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
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
				<li><a href="memberform.jsp" class="button special fit">Join</a></li>
				<li><a href="loginform.jsp" class="button fit">LogIn</a></li>
			</ul>

			<ul class="links">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="about.jsp">ABOUT US</a></li>
				<li><a href="board.jsp">BOARD</a></li>
				<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
				<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="mypage.jsp" class="button special fit">MyPage</a></li>
				<li><a href="LogOutServlet" class="button fit">LogOut</a></li>
			</ul>


		</nav>

		<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style4">
			<div class="inner">
				<span class="image"> <img src="images/rr.jpg" alt="" />
				</span>
				<header class="major">
					<h1>Welcome</h1>
				</header>
				<div class="content">
					<p>Please login.</p>
				</div>
			</div>
		</section>

		<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="jquery-2.2.3.js"></script>
<title>글쓰기</title>
<style>
h1 {
	text-align: center;
}
</style>
<script>
	$(document).on("ready", function() {
		$(".registerBtn").on("click", function() {
			/* 공백 입력 못하도록 유효성 검가 */
			if ("" == $(".inputTitle").val()) {
				$(".titleHelper").text("제목을 입력해주세요");
				$(".contentHelper").text("");
				$(".pwHelper").text("");
			} else if ("" == $(".inputContent").val()) {
				$(".titleHelper").text("");
				$(".contentHelper").text("내용을 입력해주세요");
				$(".pwHelper").text("");
			} else if ("" == $(".inputPw").val()) {
				$(".titleHelper").text("");
				$(".contentHelper").text("");
				$(".pwHelper").text("비밀번호를 입력해주세요");
			} else {
				$("form").submit();
			}

		});
		$(".cancelBtn").on("click", function() {
			/* 클릭시 여기로 이동 */
			var url = "boardlist.jsp";
			$(location).attr("href", url);
		});
	});

	function updateBoard(f) {
		f.action = "BoardUpdateServlet";
	}
	function deleteBoard(f) {
		f.action = "BoardDeleteServlet";
	}
</script>
		</head>
		<body>
			<form method="get" name="myForm">

				<a href="BoardListServlet">목록보기</a> <input type="hidden" name="num"
					value="${retrieve.num}">
				글번호:${retrieve.num}&nbsp;작성일:${retrieve.writeday}
				&nbsp;조회수:${retrieve.readcnt}<br>
				<div>
					<h1>게시글 내용</h1>

				</div>
				<br> <br>
				<div class="field2">
					<div class="col-md-3"></div>
					<div class="col-md-1">제목</div>
					<div class="col-md-5">
						<c:if test="${sessionScope.login == null}"> 
						<input class="form-control inputTitle" type="text" name="title"
								value="${retrieve.title}" readonly="readonly">
						</c:if>
						<c:if test="${sessionScope.login != null}">
						<input class="form-control inputTitle" type="text" name="title"
								value="${retrieve.title}">
						</c:if>
					</div>
					<div class="col-md-3 titleHelper"></div>
				</div>
				<br>

				<div class="field2">
					<div class="col-md-3"></div>
					<div class="col-md-1">내용</div>
					<div class="col-md-5">

						<textarea class="form-control inputContent" name="content" rows=20>${retrieve.content}</textarea>
					</div>
					<div class="col-md-3 contentHelper"></div>
				</div>
				<br>

				<div class="field2">
					<div class="col-md-3"></div>
					<div class="col-md-1">비밀번호</div>
					<div class="col-md-2">
						<input class="form-control inputPw" type="password" name="author">
					</div>
					<div class="col-md-3 pwHelper"></div>
					<div class="col-md-3"></div>
				</div>
				<br>
				<c:if test="${sessionScope.login != null}"> { 
				<div class="field2">
						<div class="col-md-3"></div>
						<div class="col-md-1"></div>
						<ul class="actions">
							<button onclick="updateBoard(myForm)">수정</button>
							<button class="special" onclick="deleteBoard(myForm)">삭제</button>

						</ul>

						<div class="col-md-3"></div>
						<div class="col-md-3"></div>
					</div>
				</c:if>
			</form>
		</body>
</html>