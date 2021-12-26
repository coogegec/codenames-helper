package com.project.codenames.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.codenames.model.CodenamesDAO;
import com.project.codenames.model.CodenamesDTO;

@Controller
public class CodenamesController {
	
	@Inject
	CodenamesDAO dao;
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@RequestMapping("insert.do")
	public String insert() {
		return "insert";
	}
	
	@RequestMapping("insertWord.do")
	public ModelAndView insertWord(@ModelAttribute CodenamesDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("insert");
		mav.addObject("newWord", dto.getWord());
		try {
			dao.insert(dto);
			mav.addObject("message", "success");
			return mav;
		} catch (Exception e) {
			mav.addObject("message", "failure");
			return mav;
		}		
	}
	
	@RequestMapping("setup.do")
	public String setup(Model model) {
		List<CodenamesDTO> list=dao.setup();
		model.addAttribute("list", list);
		return "setup";
	}
	
	@RequestMapping("team.do")
	public String team() {
		return "team";
	}
	
}