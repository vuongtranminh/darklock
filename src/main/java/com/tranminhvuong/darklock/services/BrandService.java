package com.tranminhvuong.darklock.services;

import java.io.File;
import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.tranminhvuong.darklock.Utilities;
import com.tranminhvuong.darklock.dto.BrandSearch;
import com.tranminhvuong.darklock.entities.Brand;
import com.tranminhvuong.darklock.repositories.BrandRepo;
import com.tranminhvuong.darklock.taglibs.PaginationTaglib;

@Service
public class BrandService implements Constants{

	@Autowired
	private BrandRepo brandRepo;
	
	Calendar cal = Calendar.getInstance();
	
	@PersistenceContext
	EntityManager entityManager;
	
	public List<Brand> search(BrandSearch brandSearch){
		String jpql = "SELECT b FROM Brand b where 1=1"; // 1=1 là true ( câu lệnh giả để where and)
	
		if(!StringUtils.isEmpty(brandSearch.getSeo())) { // string utils duoc import o springframwork ho tro
			jpql = jpql + " AND b.seo = '" + brandSearch.getSeo() + "'";
		}
		
		if(!StringUtils.isEmpty(brandSearch.getBrandSeo())) {
			jpql = jpql + " AND b.categories.seo = '" + brandSearch.getBrandSeo() + "'";
		}
		
		Query query = entityManager.createQuery(jpql, Brand.class); //query dc import o javax
		// paging
		if (brandSearch.getOffset() != null) {
			brandSearch.setCount(query.getResultList().size());
			
			query.setFirstResult(brandSearch.getOffset());
			query.setMaxResults(PaginationTaglib.MAX);
		}
		
		return query.getResultList();
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
	
	public void delete(int id) {
		try {
			Brand brandIdDB = brandRepo.findById(id).get();
			String logoPath = ROOT_UPLOAD_PATH + brandIdDB.getLogo();
			new File(logoPath).delete();
			brandRepo.deleteById(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	@Transactional(rollbackOn = Exception.class) // luu
	public void saveBrandOrUpdateBrand(Brand brand, MultipartFile logoBrand) throws Exception {
		try {
			
			// truong hop la chinh sua
			if(brand.getId() != null && brand.getId() > 0) {
				Brand brandIdDB = brandRepo.findById(brand.getId()).get();
				
				// neu upload lai anh thi phai xoa anh cu di
				if(!isEmptyUploadFile(logoBrand)) {
					String logoPath = ROOT_UPLOAD_PATH + brandIdDB.getLogo();
					new File(logoPath).delete();
				}
			}
			
			// kiem tra neu nguoi dung co upload file.
			if (!isEmptyUploadFile(logoBrand)) {
				String logoPath = "/brand/logo/" + logoBrand.getOriginalFilename();
				logoBrand.transferTo(new File(ROOT_UPLOAD_PATH + logoPath));
				brand.setLogo(logoPath);
			}
			
			brand.setCreatedDate(cal.getTime());
			brand.setSeo(Utilities.seo(brand.getName() + "-" + System.currentTimeMillis())); // cộng theo giây trong ngày 2 sản phẩm trùng tên
			brandRepo.save(brand);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
	
}
