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
		//세션에 로그인 흔적이 있는지 확인
		MemberDTO member = (MemberDTO)session.getAttribute("login");
		RequestService requestService = new RequestService();
		//member null 이란? 로그인이 안된 상황
		if(member == null){
			//로그인 페이지로 리다이렉트
			response.sendRedirect("LoginFormServlet");
			return;
		}
		//신청 후 바로 세션에 있는 갑으로 신청 현황 확인 하면 그냥 수행
		//List<RequestPetDTO> xxx = (List<RequestPetDTO>) session.getAttribute("requestlist");
		String title = "";
		String target = "";
//		System.out.println("이게뭐야8PetListServlet    " + xxx); ///// 두번찍힘
		//만약에 세션에 관련 리스트가 없다면
		//if (xxx == null) {
			// 신청된 현황 가져오기
			List<RequestPetDTO> requestList = (List<RequestPetDTO>) requestService.requestlist2(member.getUserid());
			List<RequestPetDTO> answerList = (List<RequestPetDTO>) requestService.answer(member.getUserid());
			//DB에도 존재하지 않으면
			if(requestList ==null){
				title = "신청현황 보기 실패 해당 사용자의 신청현황이 존재하지 않습니다.";
				String link = "LoginFormServlet";
				target = "error.jsp";
				request.setAttribute("title", title);
				request.setAttribute("link", link);
			} else {
				//DB존재하면 리스트 가지고 뿌리기.
				target = "n_dogrequestcurrent.jsp";
				request.setAttribute("requestlist", requestList);
				request.setAttribute("answerList", answerList);
			}
		//} else {
			//실질적으로 원래는 DB에서 가져와서 뿌려주는게 맞아 SESSION 굳이 필요없다면
			//target = "n_dogrequestcurrent.jsp";
			//request.setAttribute("requestlist", xxx);

		//}

		RequestDispatcher dis = request.getRequestDispatcher(target);
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
