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


		<div id="main">
			<!-- Table -->

			<section id="three" class="style3">
				<div class="inner">

					<h2 id="content">회원리스트 </h2>
					<div class="content">

						<p>
						<h3>Text</h3>

						<!-- <a href="BoardWriteUIServlet">글쓰기 화면</a> -->


						<div class="table-wrapper">


							<table border="1">



								<tr>
									<th>번호</th>
									<th>이름</th>
									<th>아이디</th>

								</tr>

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

										<c:forEach var="xxx" items="${ppp.list}" varStatus="status">
									</tr>
									<%-- <input type="hidden" name="passwd" value="${mypage.passwd}"> --%>

									<tr>
										<td>${xxx.m_num}</td>
										<td>${xxx.username}</td>
										<td>${xxx.userid}</td>


									</tr>


									</c:forEach>

									<%-- <tr>
										<td colspan="5">
											<%
												PageDTO pageDTO = (PageDTO) request.getAttribute("page");
												int curPage = pageDTO.getCurPage();
												int perPage = pageDTO.getPerPage();
												int totalRecord = pageDTO.getTotalRecord();

												int totalCount = totalRecord / perPage;
												if (totalRecord % perPage != 0)
													totalCount++;

												for (int i = 1; i <= totalCount; i++) {

													if (curPage == i) {
														out.print(i + "&nbsp;");
													} else {
														out.print("<a href='BoardListServlet?curPage=" + i + "'>" + i + "</a>&nbsp;");
													}

												}
											%>




										</td>
									</tr> --%>

								</tbody>


							</table>
						</div>

						<!-- <tr>


							<form action="BoardSearchServlet" method="get">

								<ul class="actions">
									<li><div class="field half">
										<div class="6u 12u$(medium)">
											<div class="select-wrapper">
												<select name="searchName">
													<option value="title">제목</option>
													<option value="author">작성자</option>
												</select>
											</div>
										</div>
									</div></li>

									<li><div class="field half">
										<div class="input-txt">
											<input type="text" name="searchValue">
										</div>
									</div></li>
									<li><div class="field half">
										<button>검색</button>
									</div></li>
								</ul>
							</form>

						</tr> -->
					</div>
					</p>

				</div>



			</section>

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