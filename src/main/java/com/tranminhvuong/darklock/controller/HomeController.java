package com.tranminhvuong.darklock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;

@Controller
public class HomeController{
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@GetMapping(value = { "/", "/trangchu", "/index", "/home"})
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classProducts", classProductRepo.findAll());
		model.addAttribute("brands", brandRepo.findAll());
		return "front-end/index";
	}

}
