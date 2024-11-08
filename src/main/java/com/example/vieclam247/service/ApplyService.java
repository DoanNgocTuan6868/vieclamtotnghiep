package com.example.vieclam247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.vieclam247.model.Apply;
import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
import com.example.vieclam247.repository.ApplyRepository;

@Service
public class ApplyService {
    private final ApplyRepository applyRepository;

    public ApplyService(ApplyRepository applyRepository) {
        this.applyRepository = applyRepository;
    }
    
    public Apply getApplyByUserAndJob(User user,Job job){
        return this.applyRepository.findByUserAndJob(user, job);
    }

    public Apply getApplyById(long id){
        return this.applyRepository.findById(id);
    }

    public Apply handSaveApply(Apply apply){
        Apply applyNew = this.applyRepository.save(apply);
        System.out.println(applyNew);
        return applyNew;
    }
    public List<Apply> getAllbyUserId(long id){
        return this.applyRepository.findByUser_Id(id);
    }
    public void deleteApplyById(long id){
        this.applyRepository.deleteById(id);
    }
    public List<Apply> getAppliesByUserIdAndStatuses2(Long userId, List<String> statuses) {
        return applyRepository.findByJob_User_IdAndStatusIn(userId, statuses);
    }

}
