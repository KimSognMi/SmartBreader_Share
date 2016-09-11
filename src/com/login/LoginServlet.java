package com.login;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dto.MemberDTO;
import com.exception.CommonException;
import com.service.MemberService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		
		HashMap<String, String> map= new HashMap<>();
		map.put("m_id", m_id);
		map.put("m_pw", m_pw);
		
		MemberService service = new MemberService();
		  String title="";
		    String target="";
		try {
			MemberDTO dto = service.login(map);
			if(dto==null){
				title= "아이디 또는 비밀번호 불일치";
				String link="LoginFormServlet";
				target="error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
			}else{
				HttpSession session=request.getSession();
				session.setAttribute("login", dto);
				target="home.jsp";
			}
			
		} catch (CommonException e) {
			title= e.getMessage();
			String link="LognFormServlet";
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
