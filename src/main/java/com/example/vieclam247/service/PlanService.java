package com.example.vieclam247.service;

import org.springframework.stereotype.Service;

import com.example.vieclam247.model.Plan;
import com.example.vieclam247.repository.PlanRepository;

@Service
public class PlanService {
    private final PlanRepository planRepository;

    public PlanService(PlanRepository planRepository) {
        this.planRepository = planRepository;
    }

     public Plan getPlanByName(String name){
        return this.planRepository.findByName(name);
    }
    
}
