<%@page import="com.dto.MemberDTO"%>
<%@page import="com.dto.PageDTO"%>
<%@page import="com.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>

<html>
<head>
<title>SMART BREADER</title>
<meta http-equiv="Content-Type" content="text/html; charset=" utf-8" />
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


			<%
				MemberDTO dto = (MemberDTO) session.getAttribute("login");
			%>
			<%
				if (dto == null) {
			%>
			<ul class="links">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="about.jsp">ABOUT US</a></li>
				<li><a href="BoardListServlet">BOARD</a></li>
				<li><a href="elements.jsp">NEAR ME NOW</a></li>
				<li><a href="elements.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="memberform.jsp" class="button special fit">Join</a></li>
				<li><a href="loginform.jsp" class="button fit">Log In</a></li>
			</ul>
			<%
				} else {
			%>

			<ul class="links">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="about.jsp">ABOUT US</a></li>
				<li><a href="BoardListServlet">BOARD</a></li>
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
		<section id="banner" class="style3">
			<div class="inner">
				<span class="image"> <img src="images/ff.jpg" alt="" />
				</span>
				<header class="major">
					<h1>Board</h1>
				</header>
				<div class="content">
					<p>
						Lorem ipsum dolor sit amet nullam consequat<br /> sed veroeros.
						tempus adipiscing nulla.
					</p>
				</div>
			</div>
		</section>


		<!-- Table -->
		<div id="main">

			<h3>게시판 시작</h3>

			<h4>Default</h4>

			<%
				MemberDTO memberDTO = (MemberDTO) session.getAttribute("login");
				if (memberDTO == null) {
			%>

			<a href="BoardWriteUIServlet">글쓰기 화면</a>

			<%
				}
			%>
			<div class="table-wrapper">
				<table>


					<thead>
						<tr>
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<%-- <tr>
						<%
							PageDTO pageDTO = (PageDTO) request.getAttribute("page");

							List<BoardDTO> list = pageDTO.getList();

							for (BoardDTO dto2 : list) {
								int num = dto2.getNum();
								String title = dto2.getTitle();
								String author = dto2.getAuthor();
								String writday = dto2.getWriteday();
								int readcnt = dto2.getReadcnt();
						%>
					</tr>
					<tr>
						<td><%=num%></td>
						<td><%=title%></td>
						<td><%=author%></td>
						<td><%=writday%></td>
						<td><%=readcnt%></td>
					</tr>
					<%
						} //end for
					%> --%>

						<tr>
							<c:set var="ppp" value="${page}" />
							<c:set var="aaa" value="${page}" />

							<c:forEach var="xxx" items="${ppp.list}" varStatus="status">
						</tr>
						<tr>
							<td>${xxx.num}</td>
							<td><a href="BoardRetrieveServlet?num=${xxx.num}">${xxx.title}</td>
							<td>${xxx.author}</td>
							<td>${xxx.writeday}</td>
							<td>${xxx.readcnt}</td>

						</tr>
						</c:forEach>
					</tbody>

				</table>
			</div>

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