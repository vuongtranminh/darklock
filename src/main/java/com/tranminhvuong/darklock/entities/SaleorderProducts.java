package com.tranminhvuong.darklock.entities;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "tbl_saleorder_products")
public class SaleorderProducts extends BaseEntity{
	
	@Column(name = "quality", nullable = false)
	private Integer quality;
	
	@Column(name = "sub_total_price", nullable = false, precision = 13, scale = 2)
	private BigDecimal subTotalPrice;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "saleorder_id")
	
	private SaleOrder saleOrder;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "tbl_products_id")
	
	private Product product;
}
