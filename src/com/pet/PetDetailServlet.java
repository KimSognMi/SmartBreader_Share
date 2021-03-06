package com.pet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.dto.PetDTO;
import com.exception.CommonException;
import com.service.MemberService;
import com.service.PetService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/PetDetailServlet")
public class PetDetailServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("PetDetailServlet");
		String userid = request.getParameter("userid");
		
		//String p_num = request.getParameter("p_num");
		PetService service = new PetService();
		PetDTO dto = service.petdetail(userid);
		if(dto == null){
			//해당 사용자 등록된 펫정보 없을때 띄울 부분 넣어!
			response.sendRedirect("/");
		} 
		System.out.println("!!!!!!!!!PetDetailServlet!!!!!!!!!!!!!!!11"+dto);
		request.setAttribute("petdetail", dto);
	
		RequestDispatcher dis = request.getRequestDispatcher("n_detaildog.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
