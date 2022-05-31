package com.tranminhvuong.darklock.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.dto.ProductSearch;
import com.tranminhvuong.darklock.entities.Product;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.repositories.ProductRepo;
import com.tranminhvuong.darklock.services.ProductService;

@Controller
public class CategoryPageController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductRepo productRepo;
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@RequestMapping(value = { "/danhmuc"}, method = RequestMethod.GET)
	public String categoryPage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classProducts", classProductRepo.findAll());
		model.addAttribute("brands", brandRepo.findAll());
        ProductSearch productSearch = new ProductSearch();
		productSearch.buildPaging(request);
		List<Product> listProduct = productService.search(productSearch);
		model.addAttribute("listProduct", listProduct);
		model.addAttribute("productSearch", productSearch);
		return "front-end/category_page";
	}
	
	@RequestMapping(value = { "/danhmuc/search-all" }, method = RequestMethod.GET)
	public String searchProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @Param("searchText") String searchText)
			throws Exception {
		ProductSearch productSearch = new ProductSearch();
		productSearch.setSearchText(request.getParameter("searchText"));
		productSearch.buildPaging(request);
		List<Product> listProduct = productService.search(productSearch);

		model.addAttribute("listProduct", listProduct);
		model.addAttribute("productSearch", productSearch);
		return "front-end/category_page";
	}
	
	@RequestMapping(value = { "/danhmuc/{minPrice}/{maxPrice}" }, method = RequestMethod.GET)
	public String filterPriceProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("minPrice") String minPrice, @PathVariable("maxPrice") String maxPrice)
			throws Exception {
		
		  ProductSearch productSearch = new ProductSearch();
		  productSearch.setMinPrice(minPrice);
		  productSearch.setMaxPrice(maxPrice);
		  productSearch.buildPaging(request);
		  List<Product> listProduct = productService.search(productSearch);
		  
		  model.addAttribute("listProduct", listProduct);
		  model.addAttribute("productSearch", productSearch);
		 
		return "front-end/common/html/product";
	}
	
}
