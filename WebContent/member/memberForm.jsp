<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- DAUM 주소 라이브러리 시작 -->
<style type="text/css">

   .blue{
     color:blue;
   }
   .red{
     color:red;
   }
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="js/daum.js"></script>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<!-- DAUM 주소 라이브러리 끝 -->    
<form action="MemberAddServlet" >
아이디<input type="text" name="m_id" id="m_id">
<span id="result"></span><br>
비밀번호<input type="password" name="m_pw" id="m_pw">
<span id="result2"></span><br>
비밀번호<input type="password" name="m_pw2" id="m_pw2"><br>
이름<input type="text" name="m_name" id="m_name"><br>
<!-- 다음주소 시작-->
	<input name="m_post1" id="m_post1" size="5" readonly=""> -
	<input name="m_post2" id="m_post2" size="5" readonly="">
	<input onclick="openDaumPostcode()" type="button" value="우편번호찾기">
	<br>
	<input name="m_addr1" id="m_addr1" size="40" readonly=""
		placeholder="도로명주소">
	<br>
	<span style="line-height: 10%;"><br></span>
	<input name="m_addr2" id="m_addr2" size="40" placeholder="지번주소">
<!-- 다음주소 끝 -->
      <br>
휴대폰<select name="m_phone1" id="m_phone1">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="017">017</option>
     </select>-
     <input type="text" name="m_phone2" id="m_phone2">-
     <input type="text" name="m_phone3" id="m_phone3"><br>

 <input type="submit" value="회원가입">
      <input type="reset" value="취소">
</form>

<script type="text/javascript">

   $(document).ready(function(){
	  
	   $("#m_pw2").on("keyup", function(event){
		 $("#result2").removeClass();
		   var p = $("#m_pw").val();
		   var p2 = $("#m_pw2").val();
		   if(p == p2){
			   $("#result2").text("일치").addClass("blue");
		   }else{
			   $("#result2").text("불일치").addClass("red");;
		   }
	   });
	   
	   
	   
	   
	   
	   
	   
	   // 아이디 중복체크 Ajax 연동
	   $("#m_id").on("keyup", function(event){
		   
		   //Ajax 연동 
		 //ajax통신
			jQuery.ajax({
				type:"GET",
				url:"idCheck.jsp",
				dataType:"text",
				data:{
					   userid:$("#m_id").val()
					},
				success:function(responseData,status,xhr){
					console.log(responseData);
					$("#result").text(responseData);
				},
				error:function(xhr,status,error){
					console.log("error");
				}
			});
	   });
	   
	   
	   
	   
	   
	   
	   
	   $("form").on("submit", function(event){
		   
		    var userid = $("#m_id").val();
		    if(userid == ''){
		    	alert("아이디를 입력하세요");
		    	return false;
		    }else if($("#m_pw").val() == ''){
		    	alert("비밀번호를 입력하세요");
		    	return false;
		    }else if($("#m_name").val() == ''){
		    	alert("이름을 입력하세요");
		    	return false;
		    }else if($("#m_post1").val() == ''){
		    	alert("우편번호를 입력하세요");
		    	return false;
		    }else if($("#m_post2").val() == ''){
		    	alert("우편번호를 입력하세요");
		    	return false;
		    }else if($("#m_addr1").val() == ''){
		    	alert("주소를 입력하세요");
		    	return false;
		    }else if($("#m_addr2").val() == ''){
		    	alert("주소를 입력하세요");
		    	return false;
		    }else if($("#m_phone1").val() == ''){
		    	alert("전화번호1 입력하세요");
		    	return false;
		    }else if($("#m_phone2").val() == ''){
		    	alert("전화번호2 입력하세요");
		    	return false;
		    }else if($("#phone3").val() == ''){
		    	alert("전화번호3 입력하세요");
		    	return false;
		    }else{
		    	//성공
		    	//alert("회원가입을 환영합니다");
		    }
		   
	   });
	   
   });
</script>











