<!-- -----롯통 멘토
---한국정보기술연구원
전화해서 교육과정 상담와하하하하하하핳 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- -----롯통 멘토
---한국정보기술연구원
전화해서 교육과정 상담와하하하하하하핳 -->

<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 10px;
	top: 10px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 380px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(20, 20, 20, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 5px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}

#dog {
	color: #fff;
	width: 200px;
	font-size: 70%;
}
</style>
<head>
<title>Near Me Dog</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>

<body>

	<!-- Wrapper 오마이갓-->
	<div id="wrapper"> 

		<!-- Header -->
		<header id="header" class="alt">
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
			<c:if test="${login.userid =='adminkongju@naver.com'}">관리자계정
				<ul class="links">
					<li><a href="index.jsp">HOME</a></li>
					<li><a href="about.jsp">ABOUT US</a></li>
					<li><a href="BoardListServlet2">BOARD</a></li>
					<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
					<li><a href="PetSearchServlet">NEAR ME DOG</a></li>
				</ul>
				<ul class="actions vertical">
					<li><a href="MemberListServlet" class="button special fit">Manage
							Member</a></li>
					<li><a href="LogOutServlet" class="button fit">Log Out</a></li>
				</ul>



			</c:if>

			<c:if test="${login.userid!='adminkongju@naver.com'}">
				<c:if test="${!empty sessionScope.list}">
					<c:if test="${sessionScope.list.size()!=0}">
						<ul class="links">
							<li><a href="index.jsp">HOME</a></li>
							<li><a href="about.jsp">ABOUT US</a></li>

							<li><a href="BoardListServlet">BOARD</a></li>
							<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
							<li><a href="PetSearchServlet">NEAR ME DOG</a></li>

						</ul>
						<ul class="actions vertical">
							<li><a href="MyPetListServlet?userid=${login.userid}"
								class="button fit">My PET Page</a></li>
							<li><a href="MyPageServlet" class="button special fit">MyPage</a></li>
							<li><a href="LogOutServlet" class="button fit">Log Out</a></li>
						</ul>

					</c:if>
				</c:if>


				<c:if
					test="${sessionScope.list.size()==0 or empty sessionScope.list}">

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

		</nav>
		<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style4">
			<div class="inner">
				<span class="image"> <img src="images/jj.jpg" alt="" />
				</span>
				<header class="major">
					<h1>Near Me Dog</h1>
				</header>
				<div class="content">
					<p>반려견의 짝을 찾아보세요</p>
					<ul class="actions">
						<li><a href="#five" class="button next scrolly">Get
								Started</a></li>
					</ul>
				</div>
			</div>
		</section>


		<!-- Main -->
		<div id="main" class="alt">

			<!-- One -->
			<section id="five">
				<div class="inner">
					<header class="major">
						<h1>Near Me Dog</h1>
						${nearmedoglist}

					</header>

					<!-- Content -->
					<h2 id="content">근처 반려견을 검색하세요</h2>

					<div class="4u 12u$(small)">
						<input type="radio" id="demo-priority-low" name="demo-priority"
							checked> <label for="demo-priority-low">남</label>
					</div>
					<div class="4u 12u$(small)">
						<input type="radio" id="demo-priority-normal" name="demo-priority">
						<label for="demo-priority-normal">여</label>
					</div>
					<div id="selectdog">
						<select id="dog">
							<option>말티즈</option>
							<option>슈나우저</option>
							<option>푸들</option>
							<option>토이푸들</option>
							<option>차우차우</option>
							<option>달마시안</option>
							<option>그레이하운드</option>
							<option>콜리</option>
							<option>셰퍼드</option>
							<option>세인트버나드</option>
							<option>그레이트데인</option>
							<option>기타</option>
						</select>
					</div>

					<div class="field2">
						<input type="hidden" name="addr1" id="addrpet1" size="40"
							class="form-control" placeholder="도로명주소"
							value="${nearmedog.addr1}"> <br> <span
							style="line-height: 10%;"></span> <input type="hidden"
							class="form-control" name="addrpet2" id="addr2" size="40"
							placeholder="상세주소" value="${nearmedog.addr2}">
					</div>
					<input type="button" value="찾기" id="find">
					<p style="margin-top: -12px"></p>
					<div id="map" style="width: 100%; height: 350px;"></div>



					<hr class="major" />

					<script type="text/javascript"
						src="//apis.daum.net/maps/maps3.js?apikey=0ffb9996bae71cc689478ff216dc130f&libraries=services"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							level : 4
						// 지도의 확대 레벨a
						};
						// 지도를 생성합니다    
						var map = new daum.maps.Map(mapContainer, mapOption);

						// 주소-좌표 변환 객체를 생성합니다
						var geocoder = new daum.maps.services.Geocoder();
						// 주소로 좌표를 검색합니다
						//수철 : 나의 주변의 사람들 좌표 찍기
						<c:forEach items="${nearmedoglist}" var="item2">
						geocoder
								.addr2coord(
										'${item2.addr1}',
										function(status, result) {

											// 정상적으로 검색이 완료됐으면 
											if (status === daum.maps.services.Status.OK) {

												var coords = new daum.maps.LatLng(
														result.addr[0].lat,
														result.addr[0].lng);

												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new daum.maps.Marker(
														{
															//map : map,
															position : coords,
															clickable : true
														});
												marker.setMap(map);
												var iwContent = '<div id="marker" style="color:#000;width:150px;text-align:center;padding:6px 0;"><a href="#">주변사람들</a></div>', iwRemoveable = true;
												// 인포윈도우로 장소에 대한 설명을 표시합니다
												var infowindow = new daum.maps.InfoWindow(
														{
															content : iwContent,
															removable : iwRemoveable
														});
												daum.maps.event
														.addListener(
																marker,
																'click',
																function() {
																	var child = window
																			.open(
																					"PetDetailServlet?userid="
																							+ "${item2.userid}",
																					"childName",
																					"width=400,height=800, resizable=no");

																});
											}
										});
						</c:forEach>
						//수철 : 마지막으로 내가 사는곳 좌표 찍고 해당주소를 센터로 고정
						geocoder
								.addr2coord(
										'${nearmedog.addr1}',
										function(status, result) {

											// 정상적으로 검색이 완료됐으면 
											if (status === daum.maps.services.Status.OK) {

												var coords = new daum.maps.LatLng(
														result.addr[0].lat,
														result.addr[0].lng);

												// 결과값으로 받은 위치를 마커로 표시합니다
												var marker = new daum.maps.Marker(
														{
															map : map,
															position : coords
														});

												// 인포윈도우로 장소에 대한 설명을 표시합니다
												var infowindow = new daum.maps.InfoWindow(
														{
															content : '<div style="color:#000;width:150px;text-align:center;padding:6px 0;">나는 여기 살아요</div>'
														});
												infowindow.open(map, marker);

												// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
												map.setCenter(coords);
											}
										});
					</script>
					<br>



					 <div class="field2">
						<div class="table-wrapper">
							<table border="1">
								<thead>
									<tr>
										<th>아이디</th>
										<th>kkc</th>
										<th>펫 이름</th>
										<th>나이</th>
										<th>성별</th>
										<th>종류</th>
										<th>주소</th>
									</tr>
								</thead>

								<tr>
								<tbody>
									<c:set var="ppp" value="${nearmedoglist}" />

									<c:forEach var="xxx" items="${ppp}" varStatus="status">

										<tr>
											<td>${xxx.userid}</td>
											<td><%-- <a href="BoardRetrieveServlet?num=${xxx.num}"> --%><%-- [${xxx.boardCategory}] --%>${xxx.p_kkcnumber}</td>
											<td>${xxx.p_name}</td>
											<td>${xxx.p_age}</td>
											<td>${xxx.p_gender}</td>
											<td>${xxx.p_type}</td>
											<td>${xxx.addr1}</td>

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

			</section>
		</div>
</body>
</html>