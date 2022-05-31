package com.tranminhvuong.darklock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;

@Controller
public class BlogPageController {
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@RequestMapping(value = { "/blog"}, method = RequestMethod.GET)
	public String blogPage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classProducts", classProductRepo.findAll());
		model.addAttribute("brands", brandRepo.findAll());
		return "front-end/blog_page";
	}

}
