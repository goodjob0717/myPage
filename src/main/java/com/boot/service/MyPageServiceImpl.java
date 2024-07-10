package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.dao.MyPageDAO;
import com.boot.dto.MyPageDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("MyPageService")
public class MyPageServiceImpl implements MyPageService{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<MyPageDTO> list() {
		log.info("@# MyPageServiceImpl list");
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		ArrayList<MyPageDTO> list=dao.list();
		
		return list;
	}


	@Override
	public MyPageDTO contentView(HashMap<String, String> param) {
		log.info("@# MyPageServiceImpl content_view");
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		MyPageDTO dto = dao.contentView(param);
		
		return dto;
	}

	@Override
	public void modify(HashMap<String, String> param) {
		log.info("@# MyPageServiceImpl modify");
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		dao.modify(param);
	}

	@Override
	public void delete(HashMap<String, String> param) {
		log.info("@# MyPageServiceImpl delete");
		log.info("@# param=>"+param);
		
		MyPageDAO dao = sqlSession.getMapper(MyPageDAO.class);
		
		dao.delete(param);
	}

}







