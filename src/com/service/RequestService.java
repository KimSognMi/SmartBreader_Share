package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.BoardDTO;
import com.dto.PetDTO;
import com.dto.RequestDTO;
import com.dto.RequestPetDTO;

public class RequestService {

/*	
	
	//글자세히 보기
	public BoardDTO retrieve(String num){
		//조회수 증가
		readCnt(num);
		SqlSession session = 
				MySqlSessionFactory.getSession();
		BoardDTO dto = null;
		try{
		  dto = 
	 session.selectOne("myboard.retrieve", Integer.parseInt(num));
		}finally {
			session.close();
		}
		return dto;
	}//end 
	
	*/
	
	
	//
	public void request(RequestDTO dto){
		System.out.println("requestDTO"+dto);
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		 int n = session.insert("request.request", dto);
		 session.commit();
		}
		finally {
			session.close();
		}
	}//end write
	
	//목록보기
	public List<RequestDTO> requestlist(String userid){
		List<RequestDTO> list = null;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		  list = session.selectList("request.requestlist",userid);
		}finally {
			session.close();
		}
		return list;
	}//end list()
	
	
	public List<RequestPetDTO> requestlist2(String userid){
		
		List<RequestPetDTO> list = null;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		  list = session.selectList("request.requestlist2",userid);
		  session.commit();
		}finally {
		
			session.close();
			
		}
		System.out.println("requestlist2"+list);
		return list;
	}//end list()
	
	/*//목록보기
	public List<BoardDTO> list(){
		List<BoardDTO> list = null;
		SqlSession session = 
				MySqlSessionFactory.getSession();
		try{
		  list = session.selectList("myboard.list");
		}finally {
			session.close();
		}
		return list;
	}//end list()
*/	
	
}//end 
