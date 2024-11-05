package com.example.vieclam247.service;

import java.util.List;

import org.springframework.data.domain.PageRequest;
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

    public List<Plan> getPlanAllTop(){
        return this.planRepository.findTop3(PageRequest.of(0, 3));
    }
    
}
