package com.tranminhvuong.darklock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tranminhvuong.darklock.entities.ClassProduct;

@Repository
public interface ClassProductRepo extends JpaRepository<ClassProduct, Integer> {

}
