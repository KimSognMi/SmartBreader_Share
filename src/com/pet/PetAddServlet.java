package com.pet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;
import com.dto.PetDTO;
import com.exception.CommonException;
import com.service.MemberService;
import com.service.PetService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/PetAddServlet")
public class PetAddServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//나중에 필터로 설정하기
		request.setCharacterEncoding("UTF-8");
		
		String m_num = request.getParameter("m_num");
		String p_kkcnumber = request.getParameter("p_kkcnumber");
		String p_name = request.getParameter("p_name");
		String p_age = request.getParameter("p_age");
		String p_gender = request.getParameter("p_gender");
		String p_birth = request.getParameter("p_birth");
		String p_type = request.getParameter("p_type");
		String p_photo = request.getParameter("p_photo");
		String p_feature = request.getParameter("p_feature");
	
		
		
		PetDTO dto =new PetDTO();
		dto.setM_num(Integer.parseInt(m_num));
		dto.setP_kkcnumber(p_kkcnumber);
		dto.setP_name(p_name);
		dto.setP_age(Integer.parseInt(p_age));
		dto.setP_gender(p_gender);
		dto.setP_birth(p_birth);
		dto.setP_type(p_type);
		dto.setP_feature(p_feature);
		dto.setP_photo(p_photo);
		
	    PetService service = new PetService();
	    String title="";
	    String target="";
	    try {
			service.addPet(dto);
			target = "index.jsp";
			request.setAttribute("result", "success");
		} catch (CommonException e) {
			title= e.getMessage();
			String link="PetFormServlet";
			target="error.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		
		RequestDispatcher dis =
				request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
