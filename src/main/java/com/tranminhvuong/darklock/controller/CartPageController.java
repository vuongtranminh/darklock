package com.tranminhvuong.darklock.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.dto.AjaxResponse;
import com.tranminhvuong.darklock.dto.Cart;
import com.tranminhvuong.darklock.dto.CartItem;
import com.tranminhvuong.darklock.entities.Product;
import com.tranminhvuong.darklock.entities.SaleOrder;
import com.tranminhvuong.darklock.entities.SaleorderProducts;
import com.tranminhvuong.darklock.entities.Users;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.repositories.ProductRepo;
import com.tranminhvuong.darklock.repositories.SaleOrderRepo;
import com.tranminhvuong.darklock.services.SaleOderService;

@Controller
public class CartPageController {

	@Autowired
	private ProductRepo productRepo;
	
	@Autowired
	private SaleOderService saleOderService;
	
	@Autowired
	private SaleOrderRepo saleOrderRepo;
	
	@Autowired
	private ClassProductRepo classProductRepo;
	
	@Autowired
	private BrandRepo brandRepo;
	
	@RequestMapping(value = { "/cart"}, method = RequestMethod.GET)
	public String cartPage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("classProducts", classProductRepo.findAll());
		model.addAttribute("brands", brandRepo.findAll());
		return "front-end/cart_page";
	}

	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		HttpSession httpSession = request.getSession();
		
		Cart cart = null;
		if (httpSession.getAttribute("cart") != null) {
			cart = (Cart) httpSession.getAttribute("cart");
		} else {
			cart = new Cart();
			httpSession.setAttribute("cart", cart);
		}
		
		List<CartItem> listCartItems = cart.getListCartItems();
		boolean isExists = false;
		
		for (CartItem item : listCartItems) { // nếu mặt hàng đã có sẽ cộng thêm số lượng
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				item.setQuantity(item.getQuantity() + cartItem.getQuantity());
				double totalPrice = item.getPrice().doubleValue() * item.getQuantity();
				BigDecimal subTotalPrice = new BigDecimal(totalPrice);
				item.setSubTotalPrice(subTotalPrice);
			}
		}

		if (!isExists) {
			Product productInDb = productRepo.getOne(cartItem.getProductId());
			cartItem.setProductName(productInDb.getProductName());
			cartItem.setPrice(productInDb.getSalePrice());
			cartItem.setProductImage(productInDb.getAvatarCart());
			cartItem.setProductModel(productInDb.getModel());
			cartItem.setSubTotalPrice(productInDb.getSalePrice());
			cart.getListCartItems().add(cartItem);
		}
		
		httpSession.setAttribute("cartItem", cartItem);
		httpSession.setAttribute("totalItem", getTotalItems(request));
		httpSession.setAttribute("totalPrice", new BigDecimal(getTotalPrice(request)));
		return ResponseEntity.ok(new AjaxResponse(200, getTotalItems(request)));
	}

	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}
		
		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> listCartItems = cart.getListCartItems();
		
		int total = 0;
		for (CartItem item : listCartItems) {
			total += item.getQuantity();
		}
		
		return total;
	}
	
	private double getTotalPrice(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();
		
		if(httpSession.getAttribute("cart") == null) {
			return 0;
		}
		
		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> listCartItems = cart.getListCartItems();
		
		double totalPrice = 0;
		for (CartItem item: listCartItems) {
			totalPrice += item.getSubTotalPrice().doubleValue();
		}
		return totalPrice;
	}
	
	@RequestMapping(value = { "/cart/edit" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> editCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		HttpSession httpSession = request.getSession();
		
		Cart cart = (Cart) httpSession.getAttribute("cart");
		
		List<CartItem> listCartItems = cart.getListCartItems();
		
		BigDecimal subTotalPrice = null;
		for (CartItem item : listCartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				item.setQuantity(cartItem.getQuantity());
				double totalPrice = item.getPrice().doubleValue() * item.getQuantity();
				subTotalPrice = new BigDecimal(totalPrice);
				item.setSubTotalPrice(subTotalPrice);
			}
		}
		httpSession.setAttribute("cartItem", cartItem);
		httpSession.setAttribute("totalItem", getTotalItems(request));
		httpSession.setAttribute("totalPrice", new BigDecimal(getTotalPrice(request)));
		return ResponseEntity.ok(new AjaxResponse(200, getTotalItems(request)));
	}
	
	@RequestMapping(value = { "/cart/remove" }, method = RequestMethod.POST)
	public ResponseEntity<AjaxResponse> removeCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		HttpSession httpSession = request.getSession();
		
		Cart cart = (Cart) httpSession.getAttribute("cart");
		
		List<CartItem> listCartItems = cart.getListCartItems();
		for (CartItem item : listCartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				listCartItems.remove(item);
				break;
			}
		}
		httpSession.setAttribute("totalItem", getTotalItems(request));
		httpSession.setAttribute("totalPrice", new BigDecimal(getTotalPrice(request)));
		return ResponseEntity.ok(new AjaxResponse(200, getTotalItems(request)));
	}
	
	@RequestMapping(value = { "/getcart" }, method = RequestMethod.GET)
	public String eidtProductCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		return "front-end/common/html/cart";
	}

	@RequestMapping(value = { "/cart/woocommerce" }, method = RequestMethod.GET)
	public String addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		return "front-end/common/html/woocommerce";
	}
	
	@RequestMapping(value = { "/cart/totalprice" }, method = RequestMethod.GET)
	public String totalPrice(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		return "front-end/common/html/totalprice";
	}
	
	// checkout product
	@RequestMapping(value = { "/cart/checkoutproduct" }, method = RequestMethod.GET)
	public String checkoutProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		return "front-end/common/html/checkoutproduct";
	}
	
	@RequestMapping(value = { "/checkout"}, method = RequestMethod.GET)
	public String checkOutPage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("saleOder", new SaleOrder());
		return "front-end/checkout_page";
	}
	
	@RequestMapping(value = { "/postcheckout"}, method = RequestMethod.POST)
	public String postCheckOutPage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @ModelAttribute("saleOder") SaleOrder saleOrder)
	throws Exception{
		HttpSession httpSession = request.getSession();
		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> listCartItems = cart.getListCartItems();
		
		int id = 0;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			id = ((Users) principal).getId();
		}
		for(CartItem item : listCartItems) {
			SaleorderProducts saleOrderProducts = new SaleorderProducts();
			saleOrderProducts.setProduct(productRepo.getOne(item.getProductId()));
			saleOrderProducts.setQuality(item.getQuantity());
			saleOrderProducts.setSubTotalPrice(item.getSubTotalPrice());
			saleOrder.addSaleOrderProducts(saleOrderProducts);
		}
		
		saleOderService.saveSaleOrder(saleOrder, new BigDecimal(getTotalPrice(request)), id);
		this.resetCart(request);
		return "redirect:/order";
	}
	
	private void resetCart(final HttpServletRequest request){
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("cart", new Cart());
		httpSession.setAttribute("totalItem", 0);
	}
	
	@RequestMapping(value = { "/order"}, method = RequestMethod.GET)
	public String blogPage(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		List<SaleOrder> listSaleOrders = new ArrayList<SaleOrder>();
		int id = 0;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			id = ((Users) principal).getId();
		}
		if(saleOrderRepo.findAll().size() != 0) {
			for(SaleOrder saleOrder : saleOrderRepo.findAll()) {
				if(saleOrder.getUserId() == id) {
					listSaleOrders.add(saleOrder);
				}
			}
		}
		model.addAttribute("listSaleOrders", listSaleOrders);
		return "front-end/order_status";
	}
	
	@RequestMapping(value = { "/delete/saleorder/{id}" }, method = RequestMethod.GET)
	public String deleteSaleOrder(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int saleorderId)
			throws Exception {
			saleOderService.delete(saleorderId);
			List<SaleOrder> listSaleOrders = new ArrayList<SaleOrder>();
			int id = 0;
			Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			if (principal instanceof UserDetails) {
				id = ((Users) principal).getId();
			}
			if(saleOrderRepo.findAll().size() != 0) {
				for(SaleOrder saleOrder : saleOrderRepo.findAll()) {
					if(saleOrder.getUserId() == id) {
						listSaleOrders.add(saleOrder);
					}
				}
			}
			
			model.addAttribute("listSaleOrders", listSaleOrders);
		return "front-end/common/html/orderstatus";
	}
}
