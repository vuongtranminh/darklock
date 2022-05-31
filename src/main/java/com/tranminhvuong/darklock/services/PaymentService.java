//package com.tranminhvuong.darklock.services;
//
//import java.util.Calendar;
//
//import javax.transaction.Transactional;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.tranminhvuong.darklock.entities.ContactUs;
//import com.tranminhvuong.darklock.entities.SaleOrder;
//import com.tranminhvuong.darklock.repositories.SaleOrderRepo;
//
//@Service
//public class PaymentService {
//	
//	@Autowired
//	private SaleOrderRepo saleOrderRepo;
//	
//Calendar cal = Calendar.getInstance();
//	
//	@Transactional(rollbackOn = Exception.class)
//	public String saveSaleOrder(SaleOrder saleOrder) throws Exception{
//		try {
//			if(saleOrder.getCustomerName().trim().isEmpty()) {
//				return "Vui lòng nhập họ tên";
//			} else {
//				if(saleOrder.getCustomerPhone().trim().isEmpty()) {
//					return "Vui lòng nhập số điện thoại";
//				} else {
//					if(saleOrder.getCustomerEmail().trim().isEmpty()) {
//						return "Vui lòng nhập email";
//					} else {
//						if(saleOrder.getCustomerAddress().trim().isEmpty()) {
//							return "Vui lòng nhập địa chỉ";
//						} else {
//							if(saleOrder.getMessage().trim().isEmpty()) {
//								return "Vui lòng nhập lời nhắn";
//							} else {
//								contactUs.setCreatedDate(cal.getTime());
//								contactUsRepo.save(contactUs);
//								return "Cảm ơn bạn đã góp ý!";
//							}
//						}
//					}
//				}
//			}	
//		} catch (Exception e) {
//			e.printStackTrace();
//			throw e;
//		}
//	}
//
//}
