package com.tranminhvuong.darklock.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "tbl_size")
public class Size extends BaseEntity{

	@Column(name = "name", nullable = false)
	private String name;
	
	@Lob
	@Column(name = "short_description", nullable = false, columnDefinition = "LONGTEXT")
	private String shortDescription;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "tbl_products_id")
	private Product product;
}
