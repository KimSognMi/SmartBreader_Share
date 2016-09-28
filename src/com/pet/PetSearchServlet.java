package com.pet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dto.MemberDTO;
import com.dto.PetDTO;
import com.exception.CommonException;
import com.service.MemberService;
import com.service.PetService;

/**
 * Servlet implementation class LognFormServlet
 */
@WebServlet("/PetSearchServlet")
public class PetSearchServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 나중에 필터로 설정하기
		request.setCharacterEncoding("UTF-8");
		MemberDTO dto = new MemberDTO();
		// request.setCharacterEncoding("UTF-8"); // multipart인 경우에는 무의미하다.

		String target = "";
		String title = "";
		if (dto != null) {
			target = "nearmedog.jsp";
			String userid = dto.getUserid();
			MemberService service = new MemberService();
			try {
				MemberDTO my = service.nearmedog(userid);
				System.out.println(">>>>>>" + my);
				request.setAttribute("nearmedog", my);
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