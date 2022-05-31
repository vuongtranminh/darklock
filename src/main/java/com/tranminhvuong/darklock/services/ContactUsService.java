package com.tranminhvuong.darklock.services;

import java.util.Calendar;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tranminhvuong.darklock.entities.ContactUs;
import com.tranminhvuong.darklock.repositories.ContactUsRepo;

@Service
public class ContactUsService{

	@Autowired
	private ContactUsRepo contactUsRepo;
	
	Calendar cal = Calendar.getInstance();
	
	@Transactional(rollbackOn = Exception.class)
	public String saveContact(ContactUs contactUs) throws Exception{
		try {
			if(contactUs.getName().trim().isEmpty()) {
				return "Vui lòng nhập họ tên";
			} else {
				if(contactUs.getEmail().trim().isEmpty()) {
					return "Vui lòng nhập email";
				} else {
					if(contactUs.getPhoneNumber().trim().isEmpty()) {
						return "Vui lòng nhập số điện thoại";
					} else {
						if(contactUs.getTitle().trim().isEmpty()) {
							return "Vui lòng nhập tiêu đề";
						} else {
							if(contactUs.getMessage().trim().isEmpty()) {
								return "Vui lòng nhập lời nhắn";
							} else {
								contactUs.setCreatedDate(cal.getTime());
								contactUsRepo.save(contactUs);
								return "Cảm ơn bạn đã góp ý!";
							}
						}
					}
				}
			}	
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}
}
