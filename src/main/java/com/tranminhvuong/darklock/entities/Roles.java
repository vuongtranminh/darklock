package com.tranminhvuong.darklock.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "tbl_roles")
public class Roles extends BaseEntity implements GrantedAuthority{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name = "name", nullable = false)
	private String name;
	
	@Column(name = "description", nullable = false)
	private String Description;
	
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "roles")
	private List<Users> users = new ArrayList<Users>();
	
	public void addUser(Users user) {
		users.add(user);
		user.getRoles().add(this);
	}
	
	public void removeUser(Users user) {
		users.remove(user);
		user.getRoles().remove(this);
	}

	@Override
	public String getAuthority() {
		return this.name;
	}
	
}
