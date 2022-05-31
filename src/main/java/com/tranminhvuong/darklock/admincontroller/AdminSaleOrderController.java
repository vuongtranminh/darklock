package com.tranminhvuong.darklock.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tranminhvuong.darklock.entities.SaleOrder;
import com.tranminhvuong.darklock.repositories.SaleOrderRepo;

@Controller
public class AdminSaleOrderController {

	@Autowired
	private SaleOrderRepo saleOrderRepo;
	
	@RequestMapping(value = { "/admin/saleorder"}, method = RequestMethod.GET)
	public String saleOrderForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
	throws Exception{
		model.addAttribute("saleorders", saleOrderRepo.findAll());
		return "back-end/saleorder_table";
	}
	
	@RequestMapping(value = { "/admin/saleorder/detail/{id}"}, method = RequestMethod.GET)
	public String saleOrderDetail(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int saleorderId)
	throws Exception{
		model.addAttribute("saleorder", saleOrderRepo.getOne(saleorderId));
		return "back-end/saleorder_detail";
	}
	
	@RequestMapping(value = { "/admin/saleorder/confirm/{id}"}, method = RequestMethod.GET)
	public String saleOrderDetailConfirm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int saleorderId)
	throws Exception{
		SaleOrder saleOrder = new SaleOrder();
		saleOrder = saleOrderRepo.getOne(saleorderId);
		saleOrder.setOrderStatus(1);
		saleOrderRepo.save(saleOrder);
		model.addAttribute("saleorder", saleOrderRepo.getOne(saleorderId));
		return "back-end/common/html/update_saleorder";
	}
	
	@RequestMapping(value = { "/admin/saleorder/delivery/{id}"}, method = RequestMethod.GET)
	public String saleOrderDetailDelivery(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response, @PathVariable("id") int saleorderId)
	throws Exception{
		SaleOrder saleOrder = new SaleOrder();
		saleOrder = saleOrderRepo.getOne(saleorderId);
		saleOrder.setOrderStatus(2);
		saleOrderRepo.save(saleOrder);
		model.addAttribute("saleorder", saleOrderRepo.getOne(saleorderId));
		return "back-end/common/html/update_saleorder";
	}
}
