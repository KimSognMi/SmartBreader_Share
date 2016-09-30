package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.MemberDTO;
import com.dto.PetDTO;
import com.exception.CommonException;

public class PetService {

	// 회원등록
	public void addPet(PetDTO dto) throws CommonException {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.insert("pet.addPet", dto); 
			session.commit();

		} catch (Exception e) {
			e.printStackTrace();
			throw new CommonException("회원등록 실패");
		} finally {
			session.close();
		}

	}// end addMember

	
	//목록보기
			public List<PetDTO> list(String userid){
				List<PetDTO> list = null;
				SqlSession session = 
						MySqlSessionFactory.getSession();
				try{
				  list = session.selectList("pet.list",userid);
				}finally {
					session.close();
				}
				return list;
			}//end list()
			

	
}
