package com.tranminhvuong.darklock.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "tbl_brand")
public class Brand extends BaseEntity {

	@Column(name = "name", nullable = false)
	private String name;
	
	@Column(name = "logo", nullable = false)
	private String logo;
	
	@Column(name = "seo", nullable = true)
	private String seo;
	
	@Lob
	@Column(name = "shot_description", columnDefinition = "LONGTEXT", nullable = true)
	private String shotDescription;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="brand")
	private List<Product> listProducts = new ArrayList<Product>();
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "tbl_class_id")
	
	private ClassProduct classProduct;

	public void addProduct(Product product) {
		listProducts.add(product);
		product.setBrand(this);
	}
	
	public void removeProduct(Product product) {
		listProducts.remove(product);
		product.setBrand(null);
	}
	
}
