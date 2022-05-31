package com.tranminhvuong.darklock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tranminhvuong.darklock.entities.DataEmail;

@Repository
public interface SubcribeRepo extends JpaRepository<DataEmail, Integer>{

}
