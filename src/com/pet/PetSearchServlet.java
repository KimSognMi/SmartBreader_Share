package com.pet;

import java.io.IOException;
import java.util.ArrayList;
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
import com.dto.MemberPageDTO;
import com.dto.PageDTO;
import com.dto.PetDTO;
import com.exception.CommonException;
import com.service.BoardService;
import com.service.MemberService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/PetSearchServlet")
public class PetSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 나중에 필터로 설정하기
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("login");
		PetDTO petdto = (PetDTO)session.getAttribute("List");
		System.out.println("petdto"+"-->"+petdto);
		String target = "";
		String title = "";
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		// 수철 : 검색 사용시 searchId input tag name 쓰면 동작하게될 부분
		String searchid = request.getParameter("searchId");
		System.out.println("=========================="+searchid);
		

		if (dto != null) {
			//수철 : 사용자 정보 마지막 표시될 정보 기준 userid
			String userid=dto.getUserid();
			System.out.println("=========================="+userid);
			MemberService service = new MemberService();
			target = "nearmedog.jsp";
			//String userid = dto.getUserid();
			//MemberService service = new MemberService();
			try {
				MemberDTO searchhome = null;
				MemberDTO myhome = service.nearmedog(userid);
				// 수철 : 사용자 기준 정보 토대로 주소의 6자리까지 잘라서 해당 기준으로 검색하여 맵에 표시
				String keyword = myhome.getAddr1().substring(0,6);
				System.out.println(keyword);
				list = (ArrayList<MemberDTO>) service.memberListByCity(keyword);
				
				if(list.size()>0){
					System.out.println("주변 사용자 수 : " + list.size());
					request.setAttribute("nearmedoglist", list);
				}
				if(searchid !=null && searchid.trim().length()!=0){
					searchhome = service.nearmedog(searchid);
				}
				System.out.println(">>>>>>" + searchhome);
				request.setAttribute("nearmedog", myhome);
				request.setAttribute("nearmeSdog", searchhome);
			} catch (CommonException e) {
				String link = "LoginFormServlet";
				target = "error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
			}
			RequestDispatcher dis = request.getRequestDispatcher(target);
			dis.forward(request, response);
		}else{
			//수철: 로그인 정보 없을 때에 페이지 이동할 부분 추가 하도록
			System.out.println("로그인 정보 없을 때에 페이지 이동할 부분 추가 하도록");
			String link = "LoginFormServlet";
			target = "error.jsp";
			request.setAttribute("title", title);
			request.setAttribute("link", link);
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