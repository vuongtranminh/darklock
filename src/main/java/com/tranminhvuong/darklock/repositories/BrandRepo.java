package com.tranminhvuong.darklock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tranminhvuong.darklock.entities.Brand;

@Repository
public interface BrandRepo extends JpaRepository<Brand, Integer> {

}
