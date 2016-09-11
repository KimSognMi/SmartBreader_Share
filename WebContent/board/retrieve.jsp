<%@page import="com.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript">

   function updateBoard(f){
	   f.action="BoardUpdateServlet";
   }
   function deleteBoard(f){
	   f.action="BoardDeleteServlet";
   }
</script>

<%-- <%
   BoardDTO dto = 
   (BoardDTO)request.getAttribute("retrieve");
   int num = dto.getNum();
   String title = dto.getTitle();
   String author = dto.getAuthor();
   String content = dto.getContent();
   String writeday = dto.getWriteday();
   int readcnt = dto.getReadcnt();
%> --%>
<form  method="get" name="myForm">
<input type="hidden" name="num" value="${retrieve.num }">
 글번호:${retrieve.num}&nbsp;작성일:${retrieve.writeday}
    &nbsp;조회수:${retrieve.readcnt}<br>
  제목<input type="text" name="title" value="${retrieve.title}"><br>
  작성자<input type="text" name="author" value="${retrieve.author}"><br>
  내용<textarea rows="10" cols="10" name="content">
   ${retrieve.content}
  </textarea>
  <button onclick="updateBoard(myForm)">수정</button>
  <button onclick="deleteBoard(myForm)">삭제</button>
</form>
<a href="BoardListServlet">목록보기</a>




