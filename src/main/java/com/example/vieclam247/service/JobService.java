package com.example.vieclam247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
import com.example.vieclam247.repository.JobRepository;

@Service


public class JobService {
    private final JobRepository jobRepository;

    public JobService(JobRepository jobRepository) {
        this.jobRepository = jobRepository;
    }
    public Job handSaveJob(Job job){
        Job jobnew = this.jobRepository.save(job);
        System.out.println(jobnew);
        return jobnew;
    }
    public List<Job> getlistJobByUserAndStatus(User user, String status){
        return this.jobRepository.findByUserAndStatus(user, status);
    }
    public Job getJobById(long id){
        return this.jobRepository.findById(id);
    }
    public void deleteJobById(long id){
        this.jobRepository.deleteById(id);
    }
    public List<Job> getListJobByStatus(String status){
        return this.jobRepository.findByStatus(status);
    }
}