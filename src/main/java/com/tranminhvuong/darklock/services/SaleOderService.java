package com.tranminhvuong.darklock.services;

import java.math.BigDecimal;
import java.util.Calendar;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tranminhvuong.darklock.entities.SaleOrder;
import com.tranminhvuong.darklock.repositories.SaleOrderRepo;

@Service
public class SaleOderService {

	@Autowired
	private SaleOrderRepo saleOrderRepo;

	Calendar cal = Calendar.getInstance();

	public void delete(int id) {
		try {
			saleOrderRepo.deleteById(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	@Transactional(rollbackOn = Exception.class)
	public void saveSaleOrder(SaleOrder saleOrder, BigDecimal total, Integer userId) {
		try {
			saleOrder.setCode("ORDER-" + System.currentTimeMillis());
			saleOrder.setSeo("ORDER-" + System.currentTimeMillis());
			saleOrder.setCreatedDate(cal.getTime());
			saleOrder.setOrderStatus(0);
			saleOrder.setTotal(total);
			saleOrder.setUserId(userId);
			saleOrderRepo.save(saleOrder);
		} catch (Exception e) {
		}
	}
}
