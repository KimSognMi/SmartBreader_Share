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

import com.dto.PetDTO;
import com.exception.CommonException;
import com.exception.PetException;
import com.service.BoardService;
import com.service.MemberService;
import com.service.PetService;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/PetDeleteServlet")
public class PetDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("PetDeleteServlet");
		String p_num = request.getParameter("p_num");
		String userid = request.getParameter("userid");
		
		System.out.println("p_num" + p_num);
		System.out.println("userid" + userid);
		PetService service = new PetService();
		
		 
		try {
			
			HttpSession session=request.getSession();
			service.delete(p_num);
			List<PetDTO> p_dto=service.list(userid); 
			session.setAttribute("list",p_dto);
			//session.removeAttribute("list");
		} catch (PetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//ㅊㄷ
		response.sendRedirect("MyPetListServlet?userid="+userid);
		
/*request.setCharacterEncoding("UTF-8");
		
		String userid = request.getParameter("userid");
		String p_num = request.getParameter("p_num");

		PetService service =
	    		new PetService();
	    String title="";
	    String target="";
	    try {
			service.delete(p_num);
			target = "MyPetListServlet?userid=" + userid;
			request.setAttribute("delete", "정상적으로 삭제되었습니다.");
			
	        HttpSession session = request.getSession();
	        session.invalidate();
			
			
		} catch (PetException e) {
			title= e.getMessage();
			String link="MemberFormServlet";
			target="error.jsp"; 
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}
		
		RequestDispatcher dis =
				request.getRequestDispatcher(target);
		dis.forward(request, response);*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
