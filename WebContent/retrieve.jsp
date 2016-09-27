<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.dto.MemberDTO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

			<c:if test="${sessionScope.login == null}">
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

			</c:if>
			
			<c:if test="${sessionScope.login != null}">
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
			</c:if>

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
	function writeBoard(f) {
		f.action = "CommentWriteServlet";
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
				

				<br><div class="field2">
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
						<input class="form-control inputPw" type="password" name="readcnt">
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
		<!-- 좌우측의 공간 확보 -->
	<div class="container">
		<hr />
		<div class="row">
			<div class="col-md-10">
		
				<table class="table table-condensed">
					<thead>


						<tr>
							<c:set var="ppp" value="${page}" />

							<c:forEach var="xxx" items="${ppp.list}" varStatus="status">
						</tr>
						<tr id="r1" name="commentParentCode">
							<td colspan=2>${xxx.commentNum}<strong>${xxx.commentParentName}</strong>

								${xxx.commentParentPassword} ${xxx.commentwriteday}<a
								href="CommentRetrieveServlet?commentNum=${xxx.commentNum}"
								style="cursor: pointer;">수정</a> | <a
								href="CommentDeleteServlet?commentNum=${xxx.commentNum}"
								style="cursor: pointer;">삭제</a>
						</tr>
						<tr>
							<td>${xxx.commentParentText}</td>
						</tr>
						<tr>
							<span id="result"></span>
						</tr>
						</c:forEach>
					</thead>
					<tbody>


					</tbody>


				</table>
				<table class="table table-condensed">
					<form method="post" name="myForm2">
					<input type="hidden" name="num" value="${retrieve.num}">
						<tr>
							<td><span class="form-inline" role="form">
									<p>

										<input type="text" id="commentParentName"
											name="commentParentName" class="form-control col-lg-2"
											data-rule-required="true" placeholder="이름" maxlength="10">


										<input type="password" id="commentParentPassword"
											name="commentParentPassword" class="form-control col-lg-2"
											data-rule-required="true" placeholder="패스워드" maxlength="10">
										
										<button onclick="writeBoard(myForm2)" id="commentParentSubmit"
											name="commentParentSubmit">확인</button>
									

									</p> <textarea id="commentParentText" name="commentParentText"
										class="form-control col-lg-12" style="width: 100%" rows="4"></textarea>

							</span></td>
						</tr>
					</form>
				</table>







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

