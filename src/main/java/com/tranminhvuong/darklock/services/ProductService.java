package com.tranminhvuong.darklock.services;

import java.io.File;
import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.tranminhvuong.darklock.Utilities;
import com.tranminhvuong.darklock.dto.ProductSearch;
import com.tranminhvuong.darklock.entities.Product;
import com.tranminhvuong.darklock.repositories.ProductRepo;
import com.tranminhvuong.darklock.taglibs.PaginationTaglib;

@Service
public class ProductService implements Constants {

	@Autowired
	private ProductRepo productRepo;
	
	Calendar cal = Calendar.getInstance();
	
	int total = 0;
	
	@PersistenceContext
	EntityManager entityManager;
	
	public List<Product> search(ProductSearch productSearch){
		String jpql = "SELECT p FROM Product p where 1=1"; // 1=1 là true ( câu lệnh giả để where and)
	
		if(!StringUtils.isEmpty(productSearch.getSearchText())) {
			String st = "%"+ productSearch.getSearchText() + "%";
			jpql = jpql + " AND p.productName LIKE '"+st+"' ";
		}
		
		if(productSearch.getMinPrice() != null && productSearch.getMaxPrice() != null) {
			jpql = jpql + " AND p.salePrice BETWEEN '"+productSearch.getMinPrice()+"' AND '"+productSearch.getMaxPrice()+"'" ;
		}
		
		if(!StringUtils.isEmpty(productSearch.getSeo())) { // string utils duoc import o springframwork ho tro
			jpql = jpql + " AND p.seo = '" + productSearch.getSeo() + "'";
		}
		
		if(!StringUtils.isEmpty(productSearch.getProductSeo())) {
			jpql = jpql + " AND p.categories.seo = '" + productSearch.getProductSeo() + "'";
		}
		
		Query query = entityManager.createQuery(jpql, Product.class); //query dc import o javax
		// paging
		if (productSearch.getOffset() != null) {
			productSearch.setCount(query.getResultList().size());
			
			query.setFirstResult(productSearch.getOffset());
			query.setMaxResults(PaginationTaglib.MAX);
		}
		
		return query.getResultList();
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
	
	public void delete(int id) {
		try {
			Product productIdDB = productRepo.findById(id).get();
			String avatarFirstPath = ROOT_UPLOAD_PATH + productIdDB.getAvatarFirst();
			new File(avatarFirstPath).delete();
			String avatarSecondPath = ROOT_UPLOAD_PATH + productIdDB.getAvatarSecond();
			new File(avatarSecondPath).delete();
			String avatarCartPath = ROOT_UPLOAD_PATH + productIdDB.getAvatarCart();
			new File(avatarCartPath).delete();
			productRepo.deleteById(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	@Transactional(rollbackOn = Exception.class) // luu
	public void saveProductOrUpdateProduct(Product product, MultipartFile avatarFirst, MultipartFile avatarSecond, MultipartFile avatarCart) throws Exception {
		try {
			
			// truong hop la chinh sua
			if(product.getId() != null && product.getId() > 0) {
				Product productIdDB = productRepo.findById(product.getId()).get();
				// neu upload lai anh thi phai xoa anh cu di
				total = productIdDB.getTotal();
				if(!isEmptyUploadFile(avatarFirst)) {
					String avatarFirstPath = ROOT_UPLOAD_PATH + productIdDB.getAvatarFirst();
					new File(avatarFirstPath).delete();
				}
				if(!isEmptyUploadFile(avatarSecond)) {
					String avatarSecondPath = ROOT_UPLOAD_PATH + productIdDB.getAvatarSecond();
					new File(avatarSecondPath).delete();
				}
				if(!isEmptyUploadFile(avatarCart)) {
					String avatarCartPath = ROOT_UPLOAD_PATH + productIdDB.getAvatarCart();
					new File(avatarCartPath).delete();
				}
			}
			
			// kiem tra neu nguoi dung co upload file.
			if (!isEmptyUploadFile(avatarFirst)) {
				String avatarFirstPath = "/product/avatar-first/" + avatarFirst.getOriginalFilename();
				avatarFirst.transferTo(new File(ROOT_UPLOAD_PATH + avatarFirstPath));
				product.setAvatarFirst(avatarFirstPath);
			}
			if (!isEmptyUploadFile(avatarSecond)) {
				String avatarSecondPath = "/product/avatar-second/" + avatarSecond.getOriginalFilename();
				avatarSecond.transferTo(new File(ROOT_UPLOAD_PATH + avatarSecondPath));
				product.setAvatarSecond(avatarSecondPath);
			}
			if (!isEmptyUploadFile(avatarCart)) {
				String avatarCartPath = "/product/avatar-cart/" + avatarCart.getOriginalFilename();
				avatarCart.transferTo(new File(ROOT_UPLOAD_PATH + avatarCartPath));
				product.setAvatarCart(avatarCartPath);
			}
			
			double price = product.getPrice().intValueExact();
			double salePrice = product.getSalePrice().intValueExact();
			int salePercent = (int)(100 - ((salePrice/price)*100));
			
			total = total + product.getOrderQuantity();
			product.setTotal(total);
			product.setDeliveredQuantity(0);
			product.setInventoryQuantity(product.getOrderQuantity());
			product.setSalePercent(salePercent);
			product.setCreatedDate(cal.getTime());
			product.setSeo(Utilities.seo(product.getProductName() + "-" + System.currentTimeMillis())); // cộng theo giây trong ngày 2 sản phẩm trùng tên
			productRepo.save(product);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}
