<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE HTML>
<!--
	Forty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
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

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 400px;
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
</style>
<head>
<title>Near Me Now</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

	<!-- Wrapper -->
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
			${sessionScope.list}
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


				<%--  ${sessionScope.list.size()}  --%>
 			${empty sessionScope.list}
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
					<h1>Near Me Now</h1>
				</header>
				<div class="content">
					<p>근처의 편의시설을 찾아보세요</p>
					<ul class="actions">
						<li><a href="#four" class="button next scrolly">Get
								Started</a></li>
					</ul>
				</div>
			</div>
		</section>
		<!-- Main -->
		<div id="main" class="alt">

			<!-- One -->
			<section id="four">
				<div class="inner">
					<header class="major">
						<h1>Near Me Now</h1>
					</header>

					<!-- Content -->
					<h2 id="content">편의시설을 검색하세요</h2>
					<div class="map_wrap">
						<div id="map"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

						<div id="menu_wrap" class="bg_white">
							<div class="option">
								<div>
									<form name="selecttype"
										onsubmit="searchPlaces(); return false;">
										<input type="button" id="keyword1" value="애견샵"
											onclick="searchPlaces(this)"> <input type="button"
											id="keyword2" value="동물병원" onclick="searchPlaces(this)">
										<input type="button" id="keyword3" value="동물공원"
											onclick="searchPlaces(this)"> <input type="button"
											id="keyword4" value="동물테마파크" onclick="searchPlaces(this)">
										<!-- 키워드 : <input type="text" id="keyword"  size="15"> 
                    <button type="submit">검색하기</button>  -->
									</form>
								</div>
							</div>
							<hr>
							<ul id="placesList"></ul>
							<div id="pagination"></div>
						</div>
					</div>

					<hr class="major" />


					<script type="text/javascript"
						src="//apis.daum.net/maps/maps3.js?apikey=&libraries=services"></script>
					<script>
						// 마커를 담을 배열입니다
						var markers = [];

						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = {
							center : new daum.maps.LatLng(37.566826,
									126.9786567), // 지도의 중심좌표
							level : 5
						// 지도의 확대 레벨
						};

						// 지도를 생성합니다    
						var map = new daum.maps.Map(mapContainer, mapOption);
						if (navigator.geolocation) {

							// GeoLocation을 이용해서 접속 위치를 얻어옵니다
							navigator.geolocation
									.getCurrentPosition(function(position) {

										var lat = position.coords.latitude, // 위도
										lon = position.coords.longitude; // 경도

										var locPosition = new daum.maps.LatLng(
												lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
										message = '<div style="color:#000000;padding:5px;">현재 위치!</div>'; // 인포윈도우에 표시될 내용입니다

										// 마커와 인포윈도우를 표시합니다
										displayMarker(locPosition, message);

									});

						} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

							var locPosition = new daum.maps.LatLng(33.450701,
									126.570667), message = 'geolocation을 사용할수 없어요..'

							displayMarker(locPosition, message);
						}

						// 지도에 마커와 인포윈도우를 표시하는 함수입니다
						function displayMarker(locPosition, message) {

							// 마커를 생성합니다
							var marker = new daum.maps.Marker({
								map : map,
								position : locPosition
							});

							var iwContent = message, // 인포윈도우에 표시할 내용
							iwRemoveable = true;

							// 인포윈도우를 생성합니다
							var infowindow = new daum.maps.InfoWindow({
								content : iwContent,
								removable : iwRemoveable
							});

							// 인포윈도우를 마커위에 표시합니다 
							infowindow.open(map, marker);

							// 지도 중심좌표를 접속위치로 변경합니다
							map.setCenter(locPosition);
						}

						// 장소 검색 객체를 생성합니다
						var ps = new daum.maps.services.Places();

						// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
						var infowindow = new daum.maps.InfoWindow({
							zIndex : 1
						});

						// 키워드로 장소를 검색합니다
						//searchPlaces();

						// 키워드 검색을 요청하는 함수입니다
						function searchPlaces(f) {

							var keyword1 = document.getElementById('keyword1').value;
							var keyword2 = document.getElementById('keyword2').value;
							var keyword3 = document.getElementById('keyword3').value;
							var keyword4 = document.getElementById('keyword4').value;
							var keyword = "";
							if (f.value == "애견샵") {
								ps.keywordSearch(keyword1, placesSearchCB);
								console.log("애견샵 나와라 얍");
							} else if (f.value == "동물병원") {
								ps.keywordSearch(keyword2, placesSearchCB);
								console.log("동물병원 나와라 얍");
							} else if (f.value == "동물공원") {
								ps.keywordSearch(keyword3, placesSearchCB);
								console.log("동물공원 나와라 얍");
							} else if (f.value == "동물테마파크") {
								ps.keywordSearch(keyword4, placesSearchCB);
								console.log("테마파크 나와라 얍");
							}
						}

						// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
						function placesSearchCB(status, data, pagination) {
							if (status === daum.maps.services.Status.OK) {

								// 정상적으로 검색이 완료됐으면
								// 검색 목록과 마커를 표출합니다
								displayPlaces(data.places);

								// 페이지 번호를 표출합니다
								displayPagination(pagination);

							} else if (status === daum.maps.services.Status.ZERO_RESULT) {

								alert('검색 결과가 존재하지 않습니다.');
								return;

							} else if (status === daum.maps.services.Status.ERROR) {

								alert('검색 결과 중 오류가 발생했습니다.');
								return;

							}
						}

						// 검색 결과 목록과 마커를 표출하는 함수입니다
						function displayPlaces(places) {

							var listEl = document.getElementById('placesList'), menuEl = document
									.getElementById('menu_wrap'), fragment = document
									.createDocumentFragment(), bounds = new daum.maps.LatLngBounds(), listStr = '';

							// 검색 결과 목록에 추가된 항목들을 제거합니다
							removeAllChildNods(listEl);

							// 지도에 표시되고 있는 마커를 제거합니다
							removeMarker();

							for (var i = 0; i < places.length; i++) {

								// 마커를 생성하고 지도에 표시합니다
								var placePosition = new daum.maps.LatLng(
										places[i].latitude, places[i].longitude), marker = addMarker(
										placePosition, i), itemEl = getListItem(
										i, places[i], marker); // 검색 결과 항목 Element를 생성합니다

								// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
								// LatLngBounds 객체에 좌표를 추가합니다
								bounds.extend(placePosition);

								// 마커와 검색결과 항목에 mouseover 했을때
								// 해당 장소에 인포윈도우에 장소명을 표시합니다
								// mouseout 했을 때는 인포윈도우를 닫습니다
								(function(marker, title) {
									daum.maps.event
											.addListener(marker, 'mouseover',
													function() {
														displayInfowindow(
																marker, title);
													});

									daum.maps.event.addListener(marker,
											'mouseout', function() {
												infowindow.close();
											});

									itemEl.onmouseover = function() {
										displayInfowindow(marker, title);
									};

									itemEl.onmouseout = function() {
										infowindow.close();
									};
								})(marker, places[i].title);

								fragment.appendChild(itemEl);
							}

							// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
							listEl.appendChild(fragment);
							menuEl.scrollTop = 0;

							// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
							map.setBounds(bounds);
						}

						// 검색결과 항목을 Element로 반환하는 함수입니다
						function getListItem(index, places) {

							var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
									+ (index + 1)
									+ '"></span>'
									+ '<div class="info">'
									+ '   <h5>'
									+ places.title + '</h5>';

							if (places.newAddress) {
								itemStr += '    <span>' + places.newAddress
										+ '</span>'
										+ '   <span class="jibun gray">'
										+ places.address + '</span>';
							} else {
								itemStr += '    <span>' + places.address
										+ '</span>';
							}

							itemStr += '  <span class="tel">' + places.phone
									+ '</span>' + '</div>';

							el.innerHTML = itemStr;
							el.className = 'item';

							return el;
						}

						// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
						function addMarker(position, idx, title) {
							var imageSrc = 'http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
							imageSize = new daum.maps.Size(36, 37), // 마커 이미지의 크기
							imgOptions = {
								spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
								spriteOrigin : new daum.maps.Point(0,
										(idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
								offset : new daum.maps.Point(13, 37)
							// 마커 좌표에 일치시킬 이미지 내에서의 좌표
							}, markerImage = new daum.maps.MarkerImage(
									imageSrc, imageSize, imgOptions), marker = new daum.maps.Marker(
									{
										position : position, // 마커의 위치
										image : markerImage
									});

							marker.setMap(map); // 지도 위에 마커를 표출합니다
							markers.push(marker); // 배열에 생성된 마커를 추가합니다

							return marker;
						}

						// 지도 위에 표시되고 있는 마커를 모두 제거합니다
						function removeMarker() {
							for (var i = 0; i < markers.length; i++) {
								markers[i].setMap(null);
							}
							markers = [];
						}

						// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
						function displayPagination(pagination) {
							var paginationEl = document
									.getElementById('pagination'), fragment = document
									.createDocumentFragment(), i;

							// 기존에 추가된 페이지번호를 삭제합니다
							while (paginationEl.hasChildNodes()) {
								paginationEl
										.removeChild(paginationEl.lastChild);
							}

							for (i = 1; i <= pagination.last; i++) {
								var el = document.createElement('a');
								el.href = "#";
								el.innerHTML = i;

								if (i === pagination.current) {
									el.className = 'on';
								} else {
									el.onclick = (function(i) {
										return function() {
											pagination.gotoPage(i);
										}
									})(i);
								}

								fragment.appendChild(el);
							}
							paginationEl.appendChild(fragment);
						}

						// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
						// 인포윈도우에 장소명을 표시합니다
						function displayInfowindow(marker, title) {
							var content = '<div style="color:#000000;padding:5px;z-index:1;">'
									+ title + '</div>';

							infowindow.setContent(content);
							infowindow.open(map, marker);
						}

						// 검색결과 목록의 자식 Element를 제거하는 함수입니다
						function removeAllChildNods(el) {
							while (el.hasChildNodes()) {
								el.removeChild(el.lastChild);
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