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
import com.service.PetService;
import com.dto.BoardDTO;
import com.dto.PageDTO;
import com.dto.PetDTO;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/MyPetListServlet")
public class MyPetListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("userid");
		
		PetService service = new PetService();
		List<PetDTO> dto = service.mlist(userid);
		
		request.setAttribute("mlist", dto);
		System.out.println(dto);
		
		RequestDispatcher dis = 
				request.getRequestDispatcher("mypetlist.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}




