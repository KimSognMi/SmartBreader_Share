package com.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.CommentPageDTO;
import com.dto.MemberPageDTO;
import com.dto.PageDTO;
import com.service.CommentService;
import com.service.MemberService;



/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/MemberListServlet2")
public class MemberListServlet2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String curPage = request.getParameter("curPage");
		if(curPage == null){
			curPage = "1";
		}
		
		
		MemberService service = new MemberService();
		MemberPageDTO dto = 
				service.page(Integer.parseInt(curPage));
		
		request.setAttribute("page", dto);
		
		
		
		RequestDispatcher dis = 
				request.getRequestDispatcher("memberlist2.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





