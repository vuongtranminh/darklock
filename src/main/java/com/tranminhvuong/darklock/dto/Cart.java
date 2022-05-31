package com.tranminhvuong.darklock.dto;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Cart {

	private BigDecimal totalPrice;
	private int total;
	private List<CartItem> listCartItems = new ArrayList<CartItem>();

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<CartItem> getListCartItems() {
		return listCartItems;
	}

	public void setListCartItems(List<CartItem> listCartItems) {
		this.listCartItems = listCartItems;
	}

}
