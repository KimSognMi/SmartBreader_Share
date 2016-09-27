package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.config.MySqlSessionFactory;
import com.dto.CommentDTO;
import com.dto.CommentPageDTO;

public class CommentService {

	// 삭제하기
	public void delete(String commentNum) {

		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.delete("codelete", Integer.parseInt(commentNum));
			session.commit();
		} finally {
			session.close();
		}
	}// end delete

	// 수정하기
	public void update(CommentDTO dto) {

		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.update("coupdate", dto);
			session.commit();
		} finally {
			session.close();
		}
	}// end updated

	public CommentPageDTO page(int curPage) {
		CommentPageDTO dto = new CommentPageDTO();
		List<CommentDTO> colist = null;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			// new RowBounds(시작, 갯수))
			int count = dto.getPerPage();
			int skip = (curPage - 1) * count;
			colist = session.selectList("colist", null, new RowBounds(skip, count));

		} finally {
			session.close();
		}

		// 3가지 저장
		dto.setList(colist);
		dto.setCurPage(curPage);
		dto.setTotalRecord(totalCount());
		return dto;
	}// end list()

	public int totalCount() {
		int count = 0;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			count = session.selectOne("cototalCount");
		} finally {
			session.close();
		}
		return count;
	}// end totalCount

	// 글쓰기
	public void write(CommentDTO dto) {
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			int n = session.insert("cowrite", dto);
			session.commit();
		} finally {
			session.close();
		}
	}// end write

	// 목록보기
	public List<CommentDTO> colist() {
		List<CommentDTO> colist = null;
		SqlSession session = MySqlSessionFactory.getSession();
		try {
			colist = session.selectList("colist");
		} finally {
			session.close();
		}
		return colist;
	}// end list()

	// 글자세히 보기
	public CommentDTO retrieve(String commentNum) {

		SqlSession session = MySqlSessionFactory.getSession();
		CommentDTO dto = null;
		try {
			dto = session.selectOne("coretrieve", Integer.parseInt(commentNum));
		} finally {
			session.close();
		}
		return dto;
	}// end

}// end
