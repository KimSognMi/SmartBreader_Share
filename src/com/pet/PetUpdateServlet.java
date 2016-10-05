package com.pet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.BoardService;
import com.service.CommentService;
import com.service.PetService;
import com.dto.BoardDTO;
import com.dto.CommentDTO;
import com.dto.PetDTO;
import com.exception.PetException;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/PetUpdateServlet")
public class PetUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("PetUpdateServlet");
		String p_num = request.getParameter("p_num");
		String p_name = request.getParameter("p_name");
		String p_age = request.getParameter("p_age");
		String p_gender = request.getParameter("p_gender");
		String p_birth = request.getParameter("p_birth");
		String p_type = request.getParameter("p_type");
		String p_photo = request.getParameter("p_photo");
		String p_feature = request.getParameter("p_feature");
		
		System.out.println(p_num);
		System.out.println(p_name);
		System.out.println(p_age);
		System.out.println(p_gender);
		System.out.println(p_birth);
		System.out.println(p_type);
		System.out.println(p_photo);
		System.out.println(p_feature);
		
		
		PetDTO dto = new PetDTO();
		dto.setP_num(Integer.parseInt(p_num));
		dto.setP_age(Integer.parseInt(p_age));
		dto.setP_birth(p_birth);
		dto.setP_gender(p_gender);
		dto.setP_name(p_name);
		dto.setP_type(p_type);
		dto.setP_photo(p_photo);
		dto.setP_feature(p_feature);
		
		
		PetService service = new PetService();
		try {
			service.update(dto);
		} catch (PetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		response.sendRedirect("BoardListServlet");
	}//end doGet

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}





