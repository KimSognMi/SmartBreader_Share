<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
<head>
<title>SMART BREADER</title>

<script type="text/javascript" src="assets/js/jquery-3.1.0.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=" utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />

<link rel="stylesheet" href="assets/css/main.css" />

<link rel="stylesheet" href="assets/css/joinstyle.css" media="screen"
	title="no title" charset="utf-8">
	
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
					
					<form action="PetAddServlet" method="post" enctype="multipart/form-data">
					
				<!-- 	<form action="UploadServlet" method="post" > -->
					<div class="field2">
					<h5>회원코드</h5>
							<input type="text" class="form-control" name="m_num" id="m_num" readonly="readonly" value="${login.m_num}">
					</div>
					<div class="field2">
					<h5>kkc 등록번호</h5>
							<input type="text" class="form-control" name="p_kkcnumber" id="p_kkcnumber" placeholder="입력해 주세요">
					</div>
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
							<input type="radio" id="m" name="p_gender" checked>
                              	<label for="m">남(♂)</label>
															</div>
			             <div class="field halfs">
							
							<input type="radio" id="w" name="p_gender">
						<label for="w">여(♀)</label>
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
		<textarea name="p_feature" id="p_feature" placeholder="특징을 입력 해 주세요" rows="5"></textarea>
		</div>
		
		<div class="field2">
		<h5>사진</h5>
		

 		<input type="file" name="theFile">
 		<!-- <input type="submit" value="upload"> -->

		</div>
		
		<br>
							 
		<center>
            <input type="submit" value="등록">
              &nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-warning">취소<i class="fa fa-times spaceLeft"></i></button>
            </center>
            <br>
			</form>		
			</div>
			</section>
		</div>

<script type="text/javascript">

   $(document).ready(function(){
	  
	   $("form").on("submit", function(event){
		    var p_kkcnumber = $("#p_kkcnumber").val();
		    if(p_kkcnumber == ''){
		    	alert("kkc 등록번호를 입력하세요");
		    	return false;
		    }else if($("#p_name").val() == ''){
		    	alert("이름을 입력하세요");
		    	return false;
		    }else if($("#p_age").val() == ''){
		    	alert("나이을 입력하세요");
		    	return false;
		    }else if($("#p_gender").val() == ''){
		    	alert("성별을 선택하세요");
		    	return false;
		    }else if($("#p_birth").val() == ''){
		    	alert("생일을 입력하세요");
		    	return false;
		    }else if($("#p_type").val() == ''){
		    	alert("종을 입력하세요");
		    	return false;
		    }else if($("#p_feature").val() == ''){
		    	alert("특징을 입력하세요");
		    	return false;
		    }else if($("#p_photo").val() == ''){
		    	alert("사진을 등록하세요");
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
</html>										</div>
															
															
															
													