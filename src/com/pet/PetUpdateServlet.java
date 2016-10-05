package com.pet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.BoardService;
import com.dto.BoardDTO;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/PetUpdateServlet")
public class PetUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("PetUpdateServlet");
		String p_name = request.getParameter("p_name");
		String p_age = request.getParameter("p_age");
		String author = request.getParameter("p_gender");
		String content = request.getParameter("p_birth");
		
		
	
		
		
		response.sendRedirect("BoardListServlet");
	}//end doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





