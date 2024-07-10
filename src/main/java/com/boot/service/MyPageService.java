package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.dto.MyPageDTO;

public interface MyPageService {
	public ArrayList<MyPageDTO> list();
	public MyPageDTO contentView(HashMap<String, String> param);
	public void modify(HashMap<String, String> param);
	public void delete(HashMap<String, String> param);
}
