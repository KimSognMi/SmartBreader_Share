package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.BoardDTO;
import com.dto.MemberDTO;
import com.dto.MemberPageDTO;
import com.dto.PageDTO;
import com.dto.PetDTO;
import com.exception.CommonException;

public class MemberService {

	
	
	
	public MemberPageDTO page(int curPage){
		MemberPageDTO dto = new MemberPageDTO();
		List<MemberDTO> list = null;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		   //new RowBounds(시작, 갯수))
		int count = dto.getPerPage();	
		int skip = (curPage-1)*count;
        list =
		session.selectList("member.memlist", null,
				new RowBounds(skip, count));
			
			
		}finally {
			session.close();
		}
		
		//3가지 저장
		dto.setList(list);
		dto.setCurPage(curPage);
		dto.setTotalRecord(totalCount());
		return dto;
	}//end list()
	
	
	public int totalCount(){
		int count = 0;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		 count = session.selectOne("member.totalCount");
		}finally {
			session.close();
		}
		return count;
	}//end totalCount
	
	// 회원등록
	public void addMember(MemberDTO dto) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.insert("member.addMember", dto);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원등록 실패");
		} finally {
			session.close();
		}

	}// end addMember

	// 로그인
	public MemberDTO login(HashMap<String, String> map) throws CommonException {
		MemberDTO dto = null;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			dto = session.selectOne("member.login", map);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("로그인 실패");
		} finally {
			session.close();
		}
		return dto;
	}

	
	

	
	
	
	

	public MemberDTO mypage(String userid) throws CommonException {
		MemberDTO dto = null;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			dto = session.selectOne("member.mypage", userid);
			System.out.println(dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("mypage 실패");
		} finally {
			session.close();
		}
		return dto;
	}

	// 회원 수정
	public void updateMember(MemberDTO dto) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("member.updateMember", dto);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원수정 실패");
		} finally {
			session.close();
		}

	}
	
		// 회원 삭제

	public void deleteMember(String userid) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.delete("member.deleteMember", userid);
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원삭제 실패");
		} finally {
			session.close();
		}

	}
	
	public MemberDTO nearmedog(String userid) throws CommonException {
		MemberDTO dto = null;
		SqlSession session = MySqlSessionFactory.getSession();
		
		try {
			dto = session.selectOne("member.nearmedog", userid);
			System.out.println("!!!!!!!"+dto);
		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("nearmedog 실패");
		} finally {
			session.close();
		}
		return dto;
	}//end nearmedog
	
	public List<MemberDTO> list() {
		List<MemberDTO> list = null;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			list = session.selectList("member.memlist");
		} finally {
			session.close();
		}
		return list;
	}// end list()
	
	
	
	public MemberPageDTO search(int curPage, HashMap<String, String> map) {
		MemberPageDTO dto = new MemberPageDTO();
		List<MemberDTO> list = null;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int count = dto.getPerPage();
			int skip = (curPage - 1) * count;
			list = session.selectList("member.search", map, new RowBounds(skip, count));
			for (MemberDTO memberDTO : list) {
				System.out.println(memberDTO);
			}
			} finally {
			session.close();
		}

		dto.setList(list);
		dto.setCurPage(curPage);
		dto.setTotalRecord(totalCount());
		return dto;
	}// end list()
}
