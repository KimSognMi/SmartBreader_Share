
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

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<a href="index.jsp" class="logo"><strong>Forty</strong> <span>by
					HTML5 UP</span></a>
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
				<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
				<li><a href="nearmedog.jsp">NEAR ME DOG</a></li>
				<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="joinform.jsp" class="button special fit">JOIN</a></li>
				<li><a href="loginform.jsp" class="button fit">LogIn</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="links">
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="about.jsp">ABOUT US</a></li>
				<li><a href="generic.jsp">BOARD</a></li>
				<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
				<li><a href="nearmedog.jsp">NEAR ME DOG</a></li>
				<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
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
					<h5>주소</h5>
				</div>
				<div class="field half2">
					<input type="text" class="form-control" id="postpet1" name="post1"
						placeholder="post1" readonly="" value="${nearmedog.post1}">
				</div>

				<div class="field halfs">-</div>
				<div class="field half">
					<input type="tel" class="form-control" id="postpet2" name="post2"
						placeholder="post2" readonly="" value="${nearmedog.post2}">
				</div>
				<br>
				<div class="field2">
					<input type="text" name="addr1" id="addrpet1" size="40" readonly=""
						class="form-control" placeholder="도로명주소" value="${nearmedog.addr1}">
					<br> <span style="line-height: 10%;"></span> <input
						type="text" class="form-control" name="addrpet2" id="addr2" size="40"
						placeholder="상세주소" value="${nearmedog.addr2}">
				</div>
				<div class="map_wrap">
		<div id="map"
			style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
		<div class="hAddr">
			<span class="title">지도중심기준 행정동 주소정보</span> <span id="centerAddr"></span>
		</div>
	</div>

	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=0ffb9996bae71cc689478ff216dc130f&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 1
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		var marker = new daum.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
		infowindow = new daum.maps.InfoWindow({
			zindex : 1
		}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

		// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);

		// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
		daum.maps.event
				.addListener(
						map,
						'click',
						function(mouseEvent) {
							searchDetailAddrFromCoords(
									mouseEvent.latLng,
									function(status, result) {
										if (status === daum.maps.services.Status.OK) {
											var detailAddr = !!result[0].roadAddress.name ? '<div>도로명주소 : '
													+ result[0].roadAddress.name
													+ '</div>'
													: '';
											detailAddr += '<div>지번 주소 : '
													+ result[0].jibunAddress.name
													+ '</div>';

											var content = '<div class="bAddr">'
													+ '<span class="title">법정동 주소정보</span>'
													+ detailAddr + '</div>';

											// 마커를 클릭한 위치에 표시합니다 
											marker
													.setPosition(mouseEvent.latLng);
											marker.setMap(map);

											// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
											infowindow.setContent(content);
											infowindow.open(map, marker);
										}
									});
						});

		// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'idle', function() {
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		});

		function searchAddrFromCoords(coords, callback) {
			// 좌표로 행정동 주소 정보를 요청합니다
			geocoder.coord2addr(coords, callback);
		}

		function searchDetailAddrFromCoords(coords, callback) {
			// 좌표로 법정동 상세 주소 정보를 요청합니다
			geocoder.coord2detailaddr(coords, callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
		function displayCenterInfo(status, result) {
			if (status === daum.maps.services.Status.OK) {
				var infoDiv = document.getElementById('centerAddr');
				infoDiv.innerHTML = result[0].fullName;
			}
		}
	</script>

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