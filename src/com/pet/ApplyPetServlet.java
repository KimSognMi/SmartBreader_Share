package com.pet;

import java.io.IOException;

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
import com.exception.PetException;
import com.service.MemberService;
import com.service.PetService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/ApplyPetServlet")
public class ApplyPetServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println();
		HttpSession session = request.getSession();
		MemberDTO dto = 
				(MemberDTO)session.getAttribute("login");
		String target="";
		String title="";
		
		String p_num = request.getParameter("p_num");
		
		System.out.println(p_num);
		if(dto!=null){
			target="applypet.jsp";
			
		
			PetService service = new PetService();
			try {
				PetDTO my = service.mypage(p_num);
				System.out.println(">>>>>>"+my);
				request.setAttribute("mydog", my);
			} catch (PetException e) {
				title= e.getMessage();
				String link="LoginFormServlet";
				target="error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
			}
			
		}else{
			target="LoginFormServlet";
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
