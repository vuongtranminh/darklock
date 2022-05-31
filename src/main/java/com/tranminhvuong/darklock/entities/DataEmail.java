package com.tranminhvuong.darklock.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "tbl_data_email")
public class DataEmail extends BaseEntity {

	@Column(name = "email", nullable = false)
	private String email;

}
