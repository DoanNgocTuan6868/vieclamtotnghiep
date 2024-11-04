package com.example.vieclam247.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.Apply;
@Repository
public interface ApplyRepository extends JpaRepository<Apply,Long>{
    
}
