<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<!DOCTYPE HTML>

<html>
<head>
<title>SMART BREADER</title>


<style type="text/css">

   .blue{
     color:blue;
   }
   .red{
     color:red;
   }
</style>

<script type="text/javascript" src="assets/js/jquery-3.1.0.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=" utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="assets/css/main.css" />

<link rel="stylesheet" href="assets/css/joinstyle.css" media="screen"
	title="no title" charset="utf-8">
	
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="assets/js/daum.js"></script>
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
				<li><a href="BoardListServlet">BOARD</a></li>
				<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
				<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="MyPageServlet" class="button special fit">MY PAGE</a></li>
				<li><a href="index.jsp" class="button fit">Log Out</a></li>
			</ul>
		</nav>

		<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style4">
			<div class="inner">
				<span class="image"> <img src="images/rr.jpg" alt="" />
				</span>
				<header class="major">
					<h1>MY PAGE</h1>
				</header>
				<div class="content">
					<p>
						Lorem ipsum dolor sit amet nullam consequat<br /> sed veroeros.
						tempus adipiscing nulla.
					</p>
				</div>		
					<ul class="actions">
						<li><a href="#three" class="button next scrolly">수정!</a></li>
					</ul>
			
			</div>
		</section>

		<!-- Main -->

		<div id="main">
			<section id="three">
				<!-- <article class="container"> -->
				<div class="col-md-6 col-md-offset-3">
				<form name="myform">
						<div class="field2">
							<!-- <label for="username">이름</label> -->
							<h5>이름 </h5>
							 <input type="text"
								class="form-control" id="username" name="username" value="${mypage.username}" readonly>
						</div>
						<div class="field2">
							<!-- <label for="InputEmail">이메일 주소(ID)</label> -->
							<h5>이메일 주소(ID)</h5>
							 <input type="email"
								class="form-control"name="userid" id="userid" value="${mypage.userid}" readonly>
						</div>
 
						<div class="field2 ">
							<!-- <label for="InputPassword1">비밀번호</label> -->
							<h5>비밀번호 </h5>
							 <input type="password"
								class="form-control" name="passwd" id="passwd" value="${mypage.passwd}">
						</div>
						<div class="field2 ">
							<!-- <label for="InputPassword2">비밀번호 확인</label> -->
							<h5>비밀번호 확인 &nbsp;&nbsp; <span id="result2"></span></h5>
							 <input
								type="password" class="form-control" name="passwd2" id="passwd2"
								placeholder="비밀번호 확인">
							<p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
						</div> 


                          <div class="field3">
							<!-- <label for="InputPhone">휴대폰 번호</label> -->
							<h5>휴대폰 번호</h5>
							<input type="tel"
								class="form-control" name="phone" id="phone" value="${mypage.phone}" >
							</div>
							
		
							  <div class="field3" >
							 <!-- <label for="InputAddress">주소</label> -->
							 <h5>주소</h5>
							 </div>
							  <div class="field half2">
	<input type="text" class="form-control" id="post1" name="post1" value="${mypage.post1}" readonly=""></div>
	 <div class="field half">
	- <input type="tel" class="form-control" id="post2" name="post2" value="${mypage.post2}" readonly=""></div>
	
		
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기">
	<br>
	<div class="field2">
	<input type="text" name="addr1" id="addr1" size="40" readonly="" class="form-control"
		placeholder="도로명주소" value="${mypage.addr1}">
	<br>
	<span style="line-height: 10%;"></span>
	<input type="text" class="form-control" name="addr2" id="addr2" size="40" placeholder="지번주소" value="${mypage.addr2}">
	</div>
							
							
						 <div class="form-group text-center">
						
							<button onclick="memberUpdate(myform)"> <!-- type="submit" class="btn btn-info" -->
								수정완료<i class="fa fa-check spaceLeft"></i>
							</button>
							<!-- type="submit" class="btn btn-warning" -->
							<button  onclick="memberDelete(myform)">탈퇴<i class="fa fa-times spaceLeft"></i></button>
						
						</div>
						
					</form>
			</div>

			</section>
		</div>

<script type="text/javascript">


   function memberUpdate(f){
	   f.action="MemberUpdateServlet";
   }

   function memberDelete(f){
	   f.action="MemberDeleteServlet";
   }
   
   $(document).ready(function(){
	   
	   $("#passwd2").on("keyup", function(event){
			 $("#result2").removeClass();
			   var p = $("#passwd").val();
			   var p2 = $("#passwd2").val();
			   if(p == p2){
				   $("#result2").text("일치").addClass("blue");
			   }else{
				   $("#result2").text("불일치").addClass("red");
			   }
		   }); 
		   
	   
	   
		   $("form").on("submit", function(event){
			   
			    var userid = $("#userid").val();
			    if(userid == ''){
			    	alert("아이디를 입력하세요");
			    	return false;
			    }else if($("#passwd").val() == ''){
			    	alert("비밀번호를 입력하세요");
			    	return false;
			    }else if($("#username").val() == ''){
			    	alert("이름을 입력하세요");
			    	return false;
			    }else if($("#phone").val() == ''){
			    	alert("전화번호를 입력하세요");
			    	return false;
			    }else if($("#post1").val() == ''){
			    	alert("우편번호를 입력하세요");
			    	return false;
			    }else if($("#post2").val() == ''){
			    	alert("우편번호를 입력하세요");
			    	return false;
			    }else if($("#addr2").val() == ''){
			    	alert("주소를 입력하세요");
			    	return false;
			    }else if($("#addr1").val() == ''){
			    	alert("주소를 입력하세요");
			    	return false;
			    }else{
			    	//성공
			    	//alert("회원가입을 환영합니다");
			    }
			   
		   });
		   
	   });
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
	
	<script src="assets/js/main.js"></script>




</body>
</html>