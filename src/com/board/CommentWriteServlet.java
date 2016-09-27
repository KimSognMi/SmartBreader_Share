package com.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.CommentService;

import com.dto.CommentDTO;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/CommentWriteServlet")
public class CommentWriteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String commentParentName = request.getParameter("commentParentName");
		String commentParentPassword = request.getParameter("commentParentPassword");
		String commentParentText = request.getParameter("commentParentText");
		
	
		System.out.println(commentParentName);
		System.out.println(commentParentPassword);
		System.out.println(commentParentText);

		CommentDTO dto = new CommentDTO();
		
		dto.setCommentParentName(commentParentName);
		dto.setCommentParentPassword(Integer.parseInt(commentParentPassword));
		dto.setCommentParentText(commentParentText);

		CommentService service = new CommentService();
		service.write(dto);

		System.out.println(dto);

		// 화면 ( list.jsp로 보내면 안됨. )
		response.sendRedirect("CommentListServlet");

	}// end doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
