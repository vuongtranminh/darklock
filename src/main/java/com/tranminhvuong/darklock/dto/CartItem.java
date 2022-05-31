package com.tranminhvuong.darklock.dto;

import java.math.BigDecimal;

public class CartItem {

	private int productId;
	private String productName;
	private String productImage;
	private String productModel;
	private int quantity;
	private BigDecimal price;
	private BigDecimal subTotalPrice;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getProductModel() {
		return productModel;
	}

	public void setProductModel(String productModel) {
		this.productModel = productModel;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getSubTotalPrice() {
		return subTotalPrice;
	}

	public void setSubTotalPrice(BigDecimal subTotalPrice) {
		this.subTotalPrice = subTotalPrice;
	}

	@Override
	public String toString() {
		return "CartItem [productId=" + productId + ", productName=" + productName + ", productImage=" + productImage
				+ ", productModel=" + productModel + ", quantity=" + quantity + ", price=" + price + ", subTotalPrice="
				+ subTotalPrice + "]";
	}

	
}
