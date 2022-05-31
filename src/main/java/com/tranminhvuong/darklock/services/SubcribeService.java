package com.tranminhvuong.darklock.services;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tranminhvuong.darklock.entities.DataEmail;
import com.tranminhvuong.darklock.repositories.SubcribeRepo;

@Service
public class SubcribeService {

	@Autowired
	private SubcribeRepo subcribeRepo;
	
	Calendar cal = Calendar.getInstance();
	
	public boolean checkSubcribe(DataEmail dataEmail) {
		List<DataEmail> listDataEmail = new ArrayList<DataEmail>();
		listDataEmail = subcribeRepo.findAll();
		for(DataEmail checkEmail : listDataEmail) {
			if(!dataEmail.getEmail().trim().isEmpty() && dataEmail.getEmail().equalsIgnoreCase(checkEmail.getEmail())) {
				return true;
			}
		}
		return false;
	}
	
	@Transactional(rollbackOn = Exception.class)
	public String saveSubcribeEmail(DataEmail dataEmail) throws Exception{
		try {
			if(dataEmail.getEmail().trim().isEmpty()) {
				return "Vui lòng nhập email của bạn";
			}
			else if(checkSubcribe(dataEmail)) {
				return "Bạn đã subcribe rồi";
			}
			else {
				dataEmail.setCreatedDate(cal.getTime());
				subcribeRepo.save(dataEmail);
				return "Subcribe thành công!";
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw e;
		}
	}	
}
