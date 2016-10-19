package com.pet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.service.BoardService;
import com.service.PetService;
import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.dto.PageDTO;
import com.dto.PetDTO;
import com.exception.PetException;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/MyPetListServlet")
public class MyPetListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		//String userid = request.getParameter("userid");
		String p_num = request.getParameter("p_num");
		
		//System.out.println(userid);
		HttpSession session=request.getSession();
		MemberDTO mdto=(MemberDTO)session.getAttribute("login");
		PetService service = new PetService();
		List<PetDTO> dto = service.mlist(mdto.getUserid());
		request.setAttribute("mlist", dto);
		
		System.out.println("마이펫리스트"+dto);
		

		RequestDispatcher dis = 
				request.getRequestDispatcher("mypetlist.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





