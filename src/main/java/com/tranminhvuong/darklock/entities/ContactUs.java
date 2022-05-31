package com.tranminhvuong.darklock.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "tbl_contact")
public class ContactUs extends BaseEntity {

	@Column(name = "name", nullable = true)
	private String name;
	
	@Column(name = "email", nullable = false)
	private String email;
	
	@Column(name = "phone_number", nullable = true)
	private String phoneNumber;
	
	@Column(name = "title", nullable = true)
	private String title;
	
	@Lob
	@Column(name = "message", columnDefinition = "LONGTEXT", nullable = true)
	private String message;
	
}
