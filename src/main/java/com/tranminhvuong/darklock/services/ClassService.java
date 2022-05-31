package com.tranminhvuong.darklock.services;

import java.util.Calendar;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.tranminhvuong.darklock.Utilities;
import com.tranminhvuong.darklock.dto.ClassSearch;
import com.tranminhvuong.darklock.entities.ClassProduct;
import com.tranminhvuong.darklock.repositories.ClassProductRepo;
import com.tranminhvuong.darklock.taglibs.PaginationTaglib;

@Service
public class ClassService{

	@Autowired
	private ClassProductRepo classProductRepo;
	
	Calendar cal = Calendar.getInstance();	
	
	@PersistenceContext
	EntityManager entityManager;
	
	public List<ClassProduct> search(ClassSearch classSearch){
		String jpql = "SELECT c FROM ClassProduct c where 1=1"; // 1=1 là true ( câu lệnh giả để where and)
	
		if(!StringUtils.isEmpty(classSearch.getSeo())) { // string utils duoc import o springframwork ho tro
			jpql = jpql + " AND c.seo = '" + classSearch.getSeo() + "'";
		}
		
		if(!StringUtils.isEmpty(classSearch.getClassSeo())) {
			jpql = jpql + " AND c.categories.seo = '" + classSearch.getClassSeo() + "'";
		}
		
		Query query = entityManager.createQuery(jpql, ClassProduct.class); //query dc import o javax
		// paging
		if (classSearch.getOffset() != null) {
			classSearch.setCount(query.getResultList().size());
			
			query.setFirstResult(classSearch.getOffset());
			query.setMaxResults(PaginationTaglib.MAX);
		}
		
		return query.getResultList();
	}
	
	public void delete(int id) {
		try {
			classProductRepo.deleteById(id);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	@Transactional(rollbackOn = Exception.class)
	public void saveClassOrUpdateClass(ClassProduct classProduct) throws Exception{
		try {
			classProduct.setCreatedDate(cal.getTime());
			classProduct.setSeo(Utilities.seo(classProduct.getName() + "-" + System.currentTimeMillis()));
			classProductRepo.save(classProduct);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}
	}
}
