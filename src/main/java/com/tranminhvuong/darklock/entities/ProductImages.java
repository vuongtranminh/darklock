package com.tranminhvuong.darklock.entities;

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
@Table(name = "tbl_product_images")
public class ProductImages extends BaseEntity {

	@Column(name = "title", nullable = true)
	private String title;
	
	@Column(name = "path", nullable = false)
	private String path;
	
	@Column(name = "seo", nullable = true)
	private String seo;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "tbl_products_id")
	
	private Product product;

}
