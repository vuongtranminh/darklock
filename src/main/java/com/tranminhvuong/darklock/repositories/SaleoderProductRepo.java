package com.tranminhvuong.darklock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tranminhvuong.darklock.entities.SaleorderProducts;

@Repository
public interface SaleoderProductRepo extends JpaRepository<SaleorderProducts, Integer>{

}
