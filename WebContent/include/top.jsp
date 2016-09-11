
<%@page import="com.dto.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
   MemberDTO dto = (MemberDTO)session.getAttribute("login");
%>
<%
  if(dto==null){
%>
 <ul>

	<li><a href="LoginFormServlet">Login</a></li>
	<li><a href="MemberFormServlet">Join</a>
</li>

	<li><a href="">About Us</a></li>
	<li><a href="BoardListServlet">Board</a></li>
	<li><a href="">Near Me Now</a></li>
	<li><a href="">Online Shop</a></li>
</ul>
<%
  }else{
%>
  <ul>
	<li><a href="LogOutServlet">Logout</a></li>
	<li><a href="">MyPet</a>
</li>

	<li><a href="">About Us</a></li>
	<li><a href="BoardListServlet">Board</a></li>
	<li><a href="">Near Me Now</a></li>
	<li><a href="">Online Shop</a></li>
</ul>
<%
  }//end if

 %>
 













