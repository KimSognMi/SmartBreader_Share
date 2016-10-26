package com.pet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.BoardDTO;
import com.dto.MemberPetPageDTO;
import com.dto.RequestDTO;
import com.dto.RequestPetDTO;
import com.service.BoardService;
import com.service.RequestService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/RequestPetServlet")
public class RequestPetServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("RequestPetServlet");
		request.setCharacterEncoding("UTF-8");
		
		String r_num = request.getParameter("r_num");
		String userid = request.getParameter("userid");
		String p_num = request.getParameter("p_num");
		String r_content = request.getParameter("r_content");
		String agree = request.getParameter("agree");
		
		
		
	
		System.out.println(r_num);
		System.out.println(userid);
		System.out.println(p_num);
		System.out.println(r_content);
		System.out.println(agree);

		
		RequestDTO dto = new RequestDTO();
		dto.setR_num(Integer.parseInt(r_num));
		dto.setP_num(Integer.parseInt(p_num));
		dto.setR_content(r_content);
		dto.setUserid(userid);
		dto.setAgree(agree);
		
		
		
		RequestService service = new RequestService();
		service.request(dto);
		
		System.out.println("과연과연"+dto);
		
		
		
		/*
		List<RequestPetDTO> dto2 = service.requestlist2(userid);
		
		request.setAttribute("request", dto2);
		
		System.out.println(dto2);*/
		
	/*	RequestService service = new RequestService();
		RequestPetDTO dto = new RequestPetDTO();
		
		
		
		service.requestlist2(dto.getUserid());
		System.out.println(dto);*/
		
		RequestDispatcher dis = request.getRequestDispatcher("n_dogrequestcurrent.jsp");
		dis.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
}
