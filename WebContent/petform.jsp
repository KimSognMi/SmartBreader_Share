<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<li><a href="board.jsp">BOARD</a></li>
				<li><a href="nearmenow.jsp">NEAR ME NOW</a></li>
				<li><a href="nearmenow.jsp">ONLINE SHOP</a></li>
			</ul>
			<ul class="actions vertical">
				<li><a href="petform.jsp" class="button fit">My PET</a></li>
				<li><a href="MyPageServlet" class="button special fit">MY PAGE</a></li>
				<li><a href="index.jsp" class="button fit">Log Out</a></li>
			</ul>
		</nav>

		<!-- Banner -->
		<!-- Note: The "styleN" class below should match that of the header element. -->
		<section id="banner" class="style2">
			<div class="inner">
				<span class="image"> <img src="images/dd.jpg" alt="" />
				</span>
				<header class="major">
					<h1>MY PET</h1>
				</header>
				<div class="content">
					<p>
						Lorem ipsum dolor sit amet nullam consequat<br /> sed veroeros.
						tempus adipiscing nulla.
					</p>
					<ul class="actions">
						<li><a href="#two" class="button next scrolly">JOIN US!</a></li>
					</ul>
				</div>
			</div>
		</section>

		<!-- Main -->

		<div id="main">
			<section id="two">
				<!-- <article class="container"> -->
				<div class="col-md-6 col-md-offset-3">
					
					<form action="" >
						<div class="field2">
							<!-- <label for="username">이름</label>  -->
								<h5>이름</h5>
							<input type="text" class="form-control" name="p_name" id="p_name" placeholder="이름을 입력해 주세요">
						</div>
						<br>
						<div class="field half2">
								<h5>나이</h5>
							 <input type="text"
								class="form-control" name="p_age" id="p_age" placeholder="나이">
						</div>

						<div class="row uniform">
							<div class="field2_1">

							<h5>성별</h5>
							 <br>
							 <div class="field half">
							<input type="radio" id="demo-priority-low" name="demo-priority" checked>
                              	<label for="demo-priority-low">남(♂)</label>
															</div>
			             <div class="field halfs">
							
							<input type="radio" id="demo-priority-normal" name="demo-priority">
						<label for="demo-priority-normal">여(♀)</label>
					</div></div></div>
						
							
							
							
							
							
						<div class="field3 ">
							<!-- <label for="passwd2">비밀번호 확인</label> -->
							<h5>생일</span></h5>
							 <input
								type="text" class="form-control" name="p_birth" id="p_birth"
								placeholder="생일">
							
						</div>


                          <div class="field3">
						<!-- 	<label for="InputPhone">휴대폰 번호</label> -->
							<h5>종</h5>
							<input type="text"
								class="form-control" id="p_type" name="p_type"  placeholder="종">
							</div>
							
		
		<div class="field2">
		<h5>특징</h5>
		<textarea name="demo-message" id="demo-message" placeholder="특징을 입력 해 주세요" rows="5"></textarea>
		</div>
		
		<div class="field2">
		<h5>사진</h5>
		
		</div>
		
		
							 <div class="field3" >
						<!-- 	 <label for="InputAddress">주소</label> -->
							 <h5>주소</h5>
							 </div>
							  <div class="field half2">
	<input type="text" class="form-control" id="post1" name="post1"  placeholder="post1" readonly=""></div>
	
		 <div class="field halfs">-</div>
	 <div class="field half">
	<input type="tel" class="form-control" id="post2" name="post2" placeholder="post2" readonly=""></div>
	 <div class="field half">
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기"></div>
	<br>
	<div class="field2">
	<input type="text" name="addr1" id="addr1" size="40" readonly="" class="form-control"
		placeholder="도로명주소" value="${login.addr1}">
	<br>
	<span style="line-height: 10%;"></span>
	<input type="text" class="form-control" name="addr2" id="addr2" size="40" placeholder="상세주소" value="${login.addr2}">
	</div>
		<br>
		<center>
						  <div class="form-group text-center">
              <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
              &nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
            </center>
            <br>
			</form>		
			</div>
			</section>
		</div>

<script type="text/javascript">

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
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
<!--   <script src="js/bootstrap.min.js"></script> -->

 

</body>
</html>										</div>
															
															
															
													