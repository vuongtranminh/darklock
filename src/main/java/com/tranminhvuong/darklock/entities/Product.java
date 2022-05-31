package com.tranminhvuong.darklock.entities;

import java.math.BigDecimal;
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
@Table(name = "tbl_products")
public class Product extends BaseEntity{
	
	@Column(name = "highlight", nullable = false)
	private Integer highlight;
	
	@Column(name = "new_product", nullable = false)
	private Integer newProduct;

	@Column(name = "product_name", nullable = false)
	private String productName;
	
	@Column(name = "avatar_first", nullable = false)
	private String avatarFirst;
	
	@Column(name = "avatar_second", nullable = false)
	private String avatarSecond;
	
	@Column(name = "price", precision = 13, scale = 2, nullable = false)
	private BigDecimal price;
	
	@Column(name = "sale_price", precision = 13, scale = 2, nullable = false)
	private BigDecimal salePrice;
	
	@Lob
	@Column(name = "short_description", columnDefinition = "LONGTEXT", nullable = false)
	private String shortDescription;
	
	@Lob
	@Column(name = "overview", columnDefinition = "LONGTEXT", nullable = false)
	private String overview;
	
	@Lob
	@Column(name = "solution", columnDefinition = "LONGTEXT", nullable = false)
	private String solution;
	
	@Column(name = "avatar_cart", nullable = false)
	private String avatarCart;
	
	@Column(name = "model", nullable = false)
	private String model;
	
	@Column(name = "sale_percent", nullable = false)
	private Integer salePercent;
	
	@Column(name = "seo", nullable = true)
	private String seo;
	
	@Column(name = "total", nullable = false)
	private Integer total;
	
	@Column(name = "order_quantity", nullable = false)
	private Integer orderQuantity;
	
	@Column(name = "delivered_quantity", nullable = false)
	private Integer deliveredQuantity;
	
	@Column(name = "inventory_quantity", nullable = false)
	private Integer inventoryQuantity;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "tbl_brand_id")
	private Brand brand;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
	private List<ProductImages> listProductImages =  new ArrayList<ProductImages>();
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
	private List<Size> listSizes =  new ArrayList<Size>();
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
	private List<SaleorderProducts> listSaleOrderProducts =  new ArrayList<SaleorderProducts>();
	
	public void addProductImages(ProductImages productImages) {
		listProductImages.add(productImages);
		productImages.setProduct(this);
	}
	
	public void removeProductImages(ProductImages productImages) {
		listProductImages.remove(productImages);
		productImages.setProduct(null);
	}
	
	public void addSize(Size size) {
		listSizes.add(size);
		size.setProduct(this);
	}
	
	public void removeSize(Size size) {
		listSizes.remove(size);
		size.setProduct(null);
	}
	
	public void addSaleOrderProduct(SaleorderProducts saleorderProducts) {
		listSaleOrderProducts.add(saleorderProducts);
		saleorderProducts.setProduct(this);
	}
	
	public void removeSaleOrderProduct(SaleorderProducts saleorderProducts) {
		listSaleOrderProducts.remove(saleorderProducts);
		saleorderProducts.setProduct(null);
	}
	
}
