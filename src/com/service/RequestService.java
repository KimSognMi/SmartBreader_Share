package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.BoardDTO;
import com.dto.RequestDTO;

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
