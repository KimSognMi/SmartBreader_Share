package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.MemberService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/MemberAddServlet")
public class MemberAddServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//나중에 필터로 설정하기
		request.setCharacterEncoding("UTF-8");
		
		String m_id = request.getParameter("m_id");
		String m_num = request.getParameter("m_num");
		String m_gender = request.getParameter("m_gender");
		String m_age = request.getParameter("m_age");
		String m_pw = request.getParameter("m_pw");
		String m_name = request.getParameter("m_name");
		String m_post1 = request.getParameter("m_post1");
		String m_post2 = request.getParameter("m_post2");
		String m_addr1 = request.getParameter("m_addr1");
		String m_addr2 = request.getParameter("m_addr2");
		String m_phone1 = request.getParameter("m_phone1");
		String m_phone2 = request.getParameter("m_phone2");
		String m_phone3 = request.getParameter("m_phone3");
	
		
		
		MemberDTO dto =
			new MemberDTO();
		
		dto.setM_id(m_id);
		dto.setM_num(Integer.parseInt(m_num));
		dto.setM_name(m_name);
		dto.setM_gender(m_gender);
		dto.setM_age(m_age);
		dto.setM_pw(m_pw);
		dto.setM_post1(m_post1);
		dto.setM_post2(m_post2);
		dto.setM_addr1(m_addr1);
		dto.setM_addr2(m_addr2);
		dto.setM_phone1(m_phone1);
		dto.setM_phone2(m_phone2);
		dto.setM_phone3(m_phone3);
		
		
		
	    MemberService service =
	    		new MemberService();
	    String title="";
	    String target="";
	    try {
			service.addMember(dto);
			target = "home.jsp";
			request.setAttribute("result", "success");
		} catch (CommonException e) {
			title= e.getMessage();
			String link="MemberFormServlet";
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
