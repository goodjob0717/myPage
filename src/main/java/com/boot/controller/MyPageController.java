package com.boot.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.dto.MyPageDTO;
import com.boot.service.MyPageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MyPageController {
	@Autowired
	private MyPageService service;
	
	
	
//	@RequestMapping("/list")
	@RequestMapping("/myPage")
	public String list(Model model) {
		log.info("@# myPage");
		
		ArrayList<MyPageDTO> list1 = service.list1();
		model.addAttribute("list1", list1);

		ArrayList<MyPageDTO> list_cv = service.list_cv();
		model.addAttribute("list_cv", list_cv);

		ArrayList<MyPageDTO> list_apply = service.list_apply();
		model.addAttribute("list_apply", list_apply);
		
		
		
		return "myPage";
	}
	@RequestMapping("/modify")
//	public String modify(@RequestParam HashMap<String, String> param) {
	public String modify(@RequestParam HashMap<String, String> param) {
		log.info("@# modify");
		log.info("@# param=>"+param);
		
		service.modify(param);
		
		return "redirect:myPage";
	}
	@RequestMapping("/cancle")
	public String cancle(Model model) {
		log.info("@# cancle");
		
		ArrayList<MyPageDTO> list1 = service.list1();
		model.addAttribute("list", list1);
		
		return "redirect:myPage";
	}
	@RequestMapping("/resume")
	public String resume(Model model) {
		log.info("@# resume");
		
		ArrayList<MyPageDTO> list_cv = service.list_cv();
		model.addAttribute("list", list_cv);
		
		return "resume";
	}
	
	@RequestMapping("/resume_edit")
	public String resume_edit(Model model) {
		log.info("@# resume_edit");
		
		ArrayList<MyPageDTO> list1 = service.list1();
		model.addAttribute("list1", list1);
		
		return "resume_edit";
	}
	
	@RequestMapping("/delete")
//	public String delete(@RequestParam HashMap<String, String> param) {
	public String delete(@RequestParam HashMap<String, String> param) {
		log.info("@# delete");
		log.info("@# param=>"+param);
		log.info("@# cv_no=>"+param.get("cv_no"));
		
		service.delete(param);
		
		return "redirect:myPage";
	}
	
	
	@RequestMapping("/content_view")
	public String content_view(@RequestParam HashMap<String, String> param, Model model) {
		log.info("@# content_view");
		
		MyPageDTO dto = service.contentView(param);
		model.addAttribute("content_view", dto);		
		
		return "content_view";
	}
	
}











