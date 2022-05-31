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
import com.tranminhvuong.darklock.entities.DataEmail;
import com.tranminhvuong.darklock.services.SubcribeService;

@Controller
public class SubcribeController {
	
	@Autowired
	private SubcribeService subcribeService;

	@RequestMapping(value = { "/getEmail" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> getEmail(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @RequestBody DataEmail dataEmail) throws Exception {
		return ResponseEntity.ok(new AjaxResponse(200, subcribeService.saveSubcribeEmail(dataEmail)));
	}
	
}
