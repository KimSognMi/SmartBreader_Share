package com.pet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.RequestDTO;
import com.service.RequestService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/RequestPetServlet")
public class RequestPetServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		
		String userid=  request.getParameter("userid");
		String p_num = request.getParameter("p_num");
		String r_content  = request.getParameter("r_content");
		
		System.out.println(userid);
		System.out.println(p_num);
		System.out.println(r_content);
		
		RequestService service = new RequestService();
		RequestDTO dto = new RequestDTO();
		
		dto.setUserid(userid);
		dto.setP_num(Integer.parseInt(p_num));
		dto.setR_content(r_content);
		
		service.request(dto);
		
		RequestDispatcher dis = request.getRequestDispatcher("n_dogrequestcurrent.jsp");
		dis.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
}
