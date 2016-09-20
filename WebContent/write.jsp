<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="jquery-2.2.3.js"></script>
	<title>글쓰기</title>
	<style>
		h1
		{
			text-align:center;
		}
	</style>
	<script>
		$(document).on("ready",function(){
			$(".registerBtn").on("click",function(){
				/* 공백 입력 못하도록 유효성 검가 */
				if(""==$(".inputTitle").val())
				{
					$(".titleHelper").text("제목을 입력해주세요");
					$(".contentHelper").text("");
					$(".pwHelper").text("");
				}
				else if(""==$(".inputContent").val())
				{
					$(".titleHelper").text("");
					$(".contentHelper").text("내용을 입력해주세요");
					$(".pwHelper").text("");
				}
				else if(""==$(".inputPw").val())
				{
					$(".titleHelper").text("");
					$(".contentHelper").text("");
					$(".pwHelper").text("비밀번호를 입력해주세요");
				}
				else
				{
				$("form").submit();
				}
				
			});
			$(".cancelBtn").on("click",function(){
				/* 클릭시 여기로 이동 */
				var url="boardlist.jsp";
				$(location).attr("href",url);
			});
		});
	</script>
</head>
<body>
	<form action="BoardWriteServlet" method="post">
	<a href="BoardListServlet">목록보기</a>
		<div>
			<h1>게시글 등록</h1>
		</div>
		<br><br>
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-1">
				제목
			</div>
			<div class="col-md-5">
				<input class="form-control inputTitle" type="text" name="title">
			</div>
			<div class="col-md-3 titleHelper">
			</div>
		</div>
		<br>
		
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-1">
				내용
			</div>
			<div class="col-md-5">
				<textarea class="form-control inputContent" name="content" rows=20></textarea>
			</div>
			<div class="col-md-3 contentHelper">
			</div>
		</div>
		<br>
		
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-1">
				비밀번호
			</div>
			<div class="col-md-2">
				<input class="form-control inputPw" type="password" name="author">
			</div>
			<div class="col-md-3 pwHelper">
			</div>
			<div class="col-md-3">
			</div>
		</div>
		<br>
		
		<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-1">
			</div>
			<div class="col-md-2">
				<input class="btn btn-default registerBtn" type="button" value="등록">
				<input class="btn btn-default cancelBtn" type="button" value="취소">
			</div>
			<div class="col-md-3">
			</div>
			<div class="col-md-3">
			</div>
		</div>
	</form>
</body>
</html>