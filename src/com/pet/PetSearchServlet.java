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

import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.dto.PageDTO;
import com.exception.CommonException;
import com.service.BoardService;
import com.service.MemberService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/PetSearchServlet")
public class PetSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 나중에 필터로 설정하기
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");

		String target = "";
		String title = "";
		if (dto != null) {
			
			MemberService service = new MemberService();
			List<MemberDTO> member = service.list();
			request.setAttribute("list", dto);
			System.out.println("============================================"+dto);
			
			target = "nearmedog.jsp";
			String userid = dto.getUserid();
			//MemberService service = new MemberService();
			try {
				MemberDTO searchhome = service.nearmedog(userid);
				System.out.println(">>>>>>" + searchhome);
				request.setAttribute("nearmedog", searchhome);
			} catch (CommonException e) {
				title = e.getMessage();
				String link = "LoginFormServlet";
				target = "error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
			}

			RequestDispatcher dis = request.getRequestDispatcher(target);
			dis.forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		
	}
}