package com.tranminhvuong.darklock.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.entities.ClassProduct;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.services.ClassService;

@Controller
public class AdminClassController {
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private ClassService classService;
	
	@RequestMapping(value = { "/postclass"}, method = RequestMethod.POST)
	public String inputClass(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @ModelAttribute("classproduct") ClassProduct classProduct)
	throws Exception{
		classService.saveClassOrUpdateClass(classProduct);
		System.out.println("Lấy input thành công");
		return "redirect:/admin/class";
	}
	
	@RequestMapping(value = { "/admin/edit/class/{id}" }, method = RequestMethod.GET)
	public String editClass(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int classId)
			throws Exception {
		model.addAttribute("classproduct", classProductRepo.findById(classId).get());
		System.out.println("Sửa thành công");
		return "back-end/class_form";
	}
	
	@RequestMapping(value = { "/admin/delete/class/{id}" }, method = RequestMethod.GET)
	public String deleteProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int classId)
			throws Exception {
		classService.delete(classId);
		System.out.println("Xóa thành công");
		return "redirect:/admin/class";
	}
	
	@RequestMapping(value = { "/admin/class"}, method = RequestMethod.GET)
	public String classTable(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classes", classProductRepo.findAll());
		return "back-end/class_table";
	}
	
	@RequestMapping(value = { "/admin/add/class"}, method = RequestMethod.GET)
	public String classForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classproduct", new ClassProduct());
		return "back-end/class_form";
	}
}
