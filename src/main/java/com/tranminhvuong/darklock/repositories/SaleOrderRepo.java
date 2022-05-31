package com.tranminhvuong.darklock.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tranminhvuong.darklock.entities.SaleOrder;

@Repository
public interface SaleOrderRepo extends JpaRepository<SaleOrder, Integer>{

}
