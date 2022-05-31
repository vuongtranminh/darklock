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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tranminhvuong.darklock.entities.Product;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.repositories.ProductRepo;
import com.tranminhvuong.darklock.services.ProductService;

@Controller
public class AdminProductController {
	
	@Autowired
	private ProductRepo productRepo;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@Autowired
	private ClassProductRepo classProductRepo;

//	@RequestMapping(value = { "/inputproduct"}, method = RequestMethod.GET)
//	public String getinputProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//	throws Exception{
//		model.addAttribute("brands", brandRepo.findAll());
//		model.addAttribute("classes", classProductRepo.findAll());
//		model.addAttribute("product", new Product());
//		return "back-end/input_product";
//	}
//	
//	@RequestMapping(value = { "/listproduct"}, method = RequestMethod.GET)
//	public String getListProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//	throws Exception{
//		ProductSearch productSearch = new ProductSearch();
//		productSearch.buildPaging(request);
//		List<Product> listProduct = productService.search(productSearch);
//		model.addAttribute("listProduct", listProduct);
//		model.addAttribute("productSearch", productSearch);
//		return "back-end/list_product";
//	}
	
	@RequestMapping(value = { "/postproduct"}, method = RequestMethod.POST)
	public String getListProduct(final ModelMap model, 
			@RequestParam("avatarProductFirst") MultipartFile avatarFirst, 
			@RequestParam("avatarProductSecond") MultipartFile avatarSecond, 
			@RequestParam("avatarProductCart") MultipartFile avatarCart, 
			final HttpServletRequest request, final HttpServletResponse response, @ModelAttribute("product") Product product)
	throws Exception{
			productService.saveProductOrUpdateProduct(product, avatarFirst, avatarSecond, avatarCart);
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = { "admin/edit/product/{id}" }, method = RequestMethod.GET)
	public String editProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int productId)
			throws Exception {
		model.addAttribute("product", productRepo.findById(productId).get());
		model.addAttribute("brands", brandRepo.findAll());
		model.addAttribute("classes", classProductRepo.findAll());
		System.out.println("Sửa thành công");
		return "back-end/product_form";
	}
	
	@RequestMapping(value = { "admin/delete/product/{id}" }, method = RequestMethod.GET)
	public String deleteProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int productId)
			throws Exception {
		productService.delete(productId);
		System.out.println("Xóa thành công");
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = { "/admin/product"}, method = RequestMethod.GET)
	public String productTable(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("listProduct", productRepo.findAll());
		return "back-end/product_table";
	}
	
	@RequestMapping(value = { "/admin/add/product"}, method = RequestMethod.GET)
	public String productForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("brands", brandRepo.findAll());
		model.addAttribute("classes", classProductRepo.findAll());
		model.addAttribute("product", new Product());
		return "back-end/product_form";
	}
}
