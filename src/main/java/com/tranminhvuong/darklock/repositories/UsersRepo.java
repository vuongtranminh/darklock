package com.tranminhvuong.darklock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.tranminhvuong.darklock.entities.Users;

@Repository
public interface UsersRepo extends JpaRepository<Users, Integer>{

	@Query("SELECT c FROM Users c WHERE c.email = ?1")
    public Users findByEmail(String email); 
     
    public Users findByResetPasswordToken(String token);
	
}
