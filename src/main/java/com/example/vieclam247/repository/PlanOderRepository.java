package com.example.vieclam247.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.OderPlan;

@Repository
public interface PlanOderRepository extends JpaRepository<OderPlan,Long> {
    @SuppressWarnings("null")
    public List<OderPlan> findAll();
    
}
