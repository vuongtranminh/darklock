package com.tranminhvuong.darklock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.dto.ProductSearch;
import com.tranminhvuong.darklock.entities.Product;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.services.ProductService;

@Controller
public class ProductDetailPageController {
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "/product/{seo}"}, method = RequestMethod.GET)
	public String productDetailPage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("seo") String productSeo)
	throws Exception{
		model.addAttribute("classProducts", classProductRepo.findAll());
		model.addAttribute("brands", brandRepo.findAll());
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSeo(productSeo);
		Product product = productService.search(productSearch).get(0);// lấy cái đầu tiên là get(0)
		model.addAttribute("product" ,product);
		return "front-end/product_detail_page";
	}
	
}
