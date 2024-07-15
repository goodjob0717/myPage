package com.boot.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.dto.CorpMyPageDTO;
import com.boot.dto.MyPageDTO;

public interface CorpMyPageService {
	public ArrayList<CorpMyPageDTO> list();
	public ArrayList<CorpMyPageDTO> list_corp();
	public void modify(HashMap<String, String> param);
	public void delete(HashMap<String, String> param);
}
