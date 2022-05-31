package com.tranminhvuong.darklock.admincontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tranminhvuong.darklock.dto.BrandSearch;
import com.tranminhvuong.darklock.entities.Brand;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.services.BrandService;

@Controller
public class AdminBrandController {
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@RequestMapping(value = { "/postbrand"}, method = RequestMethod.POST)
	public String inputBrand(final ModelMap model, @RequestParam("logoBrand") MultipartFile logoBrand, final HttpServletRequest request, final HttpServletResponse response, @ModelAttribute("brand") Brand brand)
	throws Exception{
		System.out.println(logoBrand.getOriginalFilename());
		brandService.saveBrandOrUpdateBrand(brand, logoBrand);
		return "redirect:/admin/brand";
	}
	
	@RequestMapping(value = { "/admin/edit/brand/{id}" }, method = RequestMethod.GET)
	public String editBrand(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int brandId)
			throws Exception {
		model.addAttribute("brand", brandRepo.findById(brandId).get());
		return "back-end/brand_form";
	}
	
	@RequestMapping(value = { "/admin/delete/brand/{id}" }, method = RequestMethod.GET)
	public String deleteBrand(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int brandId)
			throws Exception {
		brandService.delete(brandId);
		System.out.println("Xóa thành công");
		return "redirect:/admin/brand";
	}
	
	@RequestMapping(value = { "/admin/brand"}, method = RequestMethod.GET)
	public String brandTable(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("brands", brandRepo.findAll());
		return "back-end/brand_table";
	}
	
	@RequestMapping(value = { "/admin/add/brand"}, method = RequestMethod.GET)
	public String brandForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("brand", new Brand());
		return "back-end/brand_form";
	}
	
}
