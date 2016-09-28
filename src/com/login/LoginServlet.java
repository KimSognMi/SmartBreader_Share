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
import com.dto.PetDTO;
import com.exception.CommonException;
import com.service.MemberService;
import com.service.PetService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String userid = request.getParameter("userid");
		String passwd = request.getParameter("passwd");
		
		String m_num=request.getParameter("m_num");
		String p_kkcnumber=request.getParameter("p_kkcnumber");
		
		HashMap<String, String> map= new HashMap<>();
		map.put("userid", userid);
		map.put("passwd", passwd);
		
		HashMap<String, String> p_map= new HashMap<>();
		p_map.put("m_num", m_num);
		p_map.put("p_kkcnumber", p_kkcnumber);
		
		MemberService service = new MemberService();
		PetService p_service=new PetService();
		
		  String title="";
		    String target="";
		try {
			MemberDTO dto = service.login(map);
			PetDTO p_dto=p_service.onPet(p_map);
			if(dto==null){
				title= "아이디 또는 비밀번호 불일치";
				String link="LoginFormServlet";
				target="error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
		
			}else{ //로그인 성공
				HttpSession session=request.getSession();
				if(p_dto==null){
			
				session.setAttribute("login", dto);
				target="index.jsp";
				}else{
					session.setAttribute("login", dto);
					target="index.jsp";
				session.setAttribute("onPet", p_dto);
				}
				/*	if(p_dto==null){
				title= "펫";
				String link="LoginFormServlet";
				target="error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
			}*/
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
