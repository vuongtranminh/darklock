package com.tranminhvuong.darklock.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminIndexController {

	@RequestMapping(value = { "/admin/index"}, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		return "back-end/index";
	}
	
	@RequestMapping(value = { "/admin/hl-index"}, method = RequestMethod.GET)
	public String hlIndex(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		return "back-end/hl-index";
	}
}
