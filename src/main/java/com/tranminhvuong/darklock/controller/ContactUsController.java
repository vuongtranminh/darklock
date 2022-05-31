package com.tranminhvuong.darklock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.dto.AjaxResponse;
import com.tranminhvuong.darklock.entities.ContactUs;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.services.ContactUsService;

@Controller
public class ContactUsController {
	
	@Autowired
	private ContactUsService contactUsService;
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private BrandRepo brandRepo;

	@RequestMapping(value = { "/contact"}, method = RequestMethod.GET)
	public String contactUs(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classProducts", classProductRepo.findAll());
		model.addAttribute("brands", brandRepo.findAll());
		return "front-end/contact_us";
	}
	
	@RequestMapping(value = { "/getcontact" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> getContact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @RequestBody ContactUs contactUs) throws Exception {
		return ResponseEntity.ok(new AjaxResponse(200, contactUsService.saveContact(contactUs)));
	}
}
