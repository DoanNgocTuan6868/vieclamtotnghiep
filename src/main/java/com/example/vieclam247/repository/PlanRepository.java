package com.example.vieclam247.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.Plan;


@Repository
public interface PlanRepository extends JpaRepository<Plan,Long> {
    Plan findById(long id);
    @SuppressWarnings("null")
    List<Plan> findAll();
    Plan findByName(String name);
}
