package com.tranminhvuong.darklock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.dto.AjaxResponse;
import com.tranminhvuong.darklock.dto.Email;
import com.tranminhvuong.darklock.entities.Users;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.services.UserService;

import net.bytebuddy.utility.RandomString;

@Controller
public class LoginController {
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = { "/user/login"}, method = RequestMethod.GET)
	public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classProducts", classProductRepo.findAll());
		model.addAttribute("brands", brandRepo.findAll());
		return "front-end/login";
	}
	
	@RequestMapping(value = { "/getaccount" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> getAccount(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @RequestBody Users users) throws Exception {
		return ResponseEntity.ok(new AjaxResponse(200, userService.saveAccount(users)));
	}
	
	// forgot password
  
    @PostMapping("/forgot_password")
    public ResponseEntity<AjaxResponse> processForgotPassword(final HttpServletRequest request, final ModelMap model, @RequestBody Email email) {
    	String token = RandomString.make(30);
         System.out.println(email.getEmail());
        return ResponseEntity.ok(new AjaxResponse(200, userService.forgotPassword(email, token, request)));
    }
     
     
    @GetMapping("/reset_password")
    public String showResetPasswordForm(@Param(value = "token") String token, final ModelMap model) {
    	Users users = userService.getByResetPasswordToken(token);
        model.addAttribute("token", token);
         
        if (users == null) {
            model.addAttribute("message", "Invalid Token");
            return "front-end/message";
        }
         
        return "front-end/forgot_password";
    }
     
    @PostMapping("/reset_password")
    public String processResetPassword(final HttpServletRequest request, final ModelMap model) {
    	String token = request.getParameter("token");
        String password = request.getParameter("password");
         
        Users users = userService.getByResetPasswordToken(token);
        model.addAttribute("title", "Reset your password");
         
        if (users == null) {
            model.addAttribute("message", "Invalid Token");
            return "message";
        } else {           
            userService.updatePassword(users, password);
             
            model.addAttribute("message", "You have successfully changed your password.");
        }
         
        return "front-end/message";
    }
}
