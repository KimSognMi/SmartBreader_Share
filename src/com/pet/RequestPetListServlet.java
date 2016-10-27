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

import com.dto.MemberDTO;
import com.dto.PetDTO;
import com.dto.RequestDTO;
import com.dto.RequestPetDTO;
import com.service.RequestService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/RequestPetListServlet")
public class RequestPetListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		List<RequestPetDTO> xxx  =
				(List<RequestPetDTO>)session.getAttribute("requestlist");
		 String title="";
		 String target="";
		 System.out.println("이게뭐야8"+xxx);
		if(xxx==null){
			title= "로그인 하세요";
			String link="LoginFormServlet";
			target="error.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
		}else{
			target="n_dogrequestcurrent.jsp";
	request.setAttribute("requestlist", xxx);
		    	
		}
		
		/*RequestDispatcher dis =
				request.getRequestDispatcher(target);
		dis.forward(request, response);
		RequestService service = new RequestService();
		RequestDTO dto = new RequestDTO();

		System.out.println(dto);
		List<RequestDTO> dtolist = service.requestlist(dto.getUserid());*/


		RequestDispatcher dis = request.getRequestDispatcher("n_dogrequestcurrent.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
