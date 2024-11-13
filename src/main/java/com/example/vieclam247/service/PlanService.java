package com.example.vieclam247.service;

import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.example.vieclam247.model.OderPlan;
import com.example.vieclam247.model.Plan;
import com.example.vieclam247.repository.PlanOderRepository;
import com.example.vieclam247.repository.PlanRepository;

@Service
public class PlanService {
    private final PlanRepository planRepository;
    private final PlanOderRepository planOderRepository;

   

     public PlanService(PlanRepository planRepository, PlanOderRepository planOderRepository) {
        this.planRepository = planRepository;
        this.planOderRepository = planOderRepository;
    }

    public Plan getPlanByName(String name){
        return this.planRepository.findByName(name);
    }

    public List<Plan> getPlanAllTop(){
        return this.planRepository.findTop3(PageRequest.of(0, 3));
    }
    

    public OderPlan handSaveOderPlan(OderPlan oderPlan){
        OderPlan oderPlanNew = this.planOderRepository.save(oderPlan);
        System.out.println(oderPlanNew);
        return oderPlanNew;
    }

    public List<OderPlan> getOrderPhan(){
        return this.planOderRepository.findAll();
    }
}
