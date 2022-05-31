package com.tranminhvuong.darklock.entities;

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
@Table(name = "tbl_class")
public class ClassProduct extends BaseEntity {

	@Column(name = "name", nullable = false)
	private String name;
	
	@Lob
	@Column(name = "short_description", columnDefinition = "LONGTEXT", nullable = true)
	private String shortDescription;
	
	@Column(name = "seo", nullable = true)
	private String seo;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="classProduct")
	private List<Brand> listBrands = new ArrayList<Brand>();
	
	public void addBrand(Brand brand) {
		listBrands.add(brand);
		brand.setClassProduct(this);
	}
	
	public void removeBrand(Brand brand) {
		listBrands.remove(brand);
		brand.setClassProduct(null);
	}
	
}
