package com.tranminhvuong.darklock.entities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "tbl_saleorder")
public class SaleOrder extends BaseEntity {
	@Column(name = "code", nullable = false)
	private String code;

	@Column(name = "user_id", nullable = true)
	private Integer userId;

	@Column(name = "total", precision = 13, scale = 2, nullable = false)
	private BigDecimal total;

	@Column(name = "customer_name", nullable = false)
	private String customerName;

	@Column(name = "customer_address", nullable = false)
	private String customerAddress;

	@Column(name = "seo", nullable = true)
	private String seo;

	@Column(name = "customer_phone", nullable = false)
	private String customerPhone;

	@Column(name = "customer_email", nullable = false)
	private String customerEmail;

	@Column(name = "customer_post_code", nullable = false)
	private String customerPostCode;

	@Column(name = "customer_country", nullable = false)
	private String customerCountry;

	@Column(name = "customer_region_or_state", nullable = false)
	private String customerRegionOrState;

	@Lob
	@Column(name = "customer_comments_delivery", columnDefinition = "LONGTEXT", nullable = true)
	private String customerCommentsDelivery;

	@Lob
	@Column(name = "customer_comments_payment", columnDefinition = "LONGTEXT", nullable = true)
	private String customerCommentsPayment;

	@Column(name = "order_status", nullable = false)
	private Integer orderStatus;

	@OneToMany(mappedBy = "saleOrder", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<SaleorderProducts> listSaleOrderProducts = new ArrayList<SaleorderProducts>();

	public void addSaleOrderProducts(SaleorderProducts saleOrderProducts) {
		listSaleOrderProducts.add(saleOrderProducts);
		saleOrderProducts.setSaleOrder(this);
	}

	public void removeSaleOrderProducts(SaleorderProducts saleOrderProducts) {
		listSaleOrderProducts.remove(saleOrderProducts);
		saleOrderProducts.setSaleOrder(null);
	}

}
