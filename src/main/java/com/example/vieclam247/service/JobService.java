package com.example.vieclam247.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.JobSave;
import com.example.vieclam247.model.User;
import com.example.vieclam247.model.dto.JobCriteriaDTO;
import com.example.vieclam247.repository.JobRepository;
import com.example.vieclam247.repository.JobSaveRepository;
import com.example.vieclam247.service.specification.JobSpecs;

@Service


public class JobService {
    private final JobRepository jobRepository;
    private final JobSaveRepository jobSaveRepository;

   
    public JobService(JobRepository jobRepository, JobSaveRepository jobSaveRepository) {
        this.jobRepository = jobRepository;
        this.jobSaveRepository = jobSaveRepository;
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
    public List<Job> getTop6JobsByStatus(String status) {
        // Tạo Pageable để giới hạn kết quả trả về là 6 bản ghi
        Pageable pageable = PageRequest.of(0, 8);
        return jobRepository.findByStatus(status, pageable);
    }
    public List<Job> getTop10JobsByInductryAndStatus(String inductry, String status) {
        // Tạo Pageable để giới hạn kết quả trả về là 10 bản ghi
        Pageable pageable = PageRequest.of(0, 10);
        return jobRepository.findByInductryAndStatus(inductry, status, pageable);
    }
    public Page<Job> fetchJobWithSpec(Pageable pageable,JobCriteriaDTO jobCriteriaDTO,String status){
        if( jobCriteriaDTO.getName() == null
            && jobCriteriaDTO.getArea() == null
            && jobCriteriaDTO.getWorkingForm() == null
            && jobCriteriaDTO.getSalary() == null
            && jobCriteriaDTO.getExperience() == null
            && jobCriteriaDTO.getInductry() == null){
                return this.jobRepository.findByStatusOrderByViewDesc(status, pageable);
            }
        // Thiết lập `Specification` với điều kiện `status = "Đăng bài"`
        Specification<Job> combinedSpec = Specification.where((root, query, criteriaBuilder) ->
            criteriaBuilder.equal(root.get("status"), "Đăng bài")
        );

        // Áp dụng các tiêu chí từ `JobCriteriaDTO`
        if (jobCriteriaDTO.getName() != null && jobCriteriaDTO.getName().isPresent()) {
            combinedSpec = combinedSpec.and(JobSpecs.TitleLike(jobCriteriaDTO.getName().get()));
        }
        if (jobCriteriaDTO.getInductry() != null && jobCriteriaDTO.getInductry().isPresent()) {
            combinedSpec = combinedSpec.and(JobSpecs.matchListInductry(jobCriteriaDTO.getInductry().get()));
        }
        if (jobCriteriaDTO.getArea() != null && jobCriteriaDTO.getArea().isPresent()) {
            combinedSpec = combinedSpec.and(JobSpecs.matchListArea(jobCriteriaDTO.getArea().get()));
        }
        if (jobCriteriaDTO.getWorkingForm() != null && jobCriteriaDTO.getWorkingForm().isPresent()) {
            combinedSpec = combinedSpec.and(JobSpecs.matchListWorkingForm(jobCriteriaDTO.getWorkingForm().get()));
        }
        if (jobCriteriaDTO.getSalary() != null && jobCriteriaDTO.getSalary().isPresent()) {
            combinedSpec = combinedSpec.and(JobSpecs.matchListSalary(jobCriteriaDTO.getSalary().get()));
        }
        if (jobCriteriaDTO.getExperience() != null && jobCriteriaDTO.getExperience().isPresent()) {
            combinedSpec = combinedSpec.and(JobSpecs.matchListexperience(jobCriteriaDTO.getExperience().get()));
        }

        // Sử dụng phương thức findAll với Specification và sắp xếp theo `view` giảm dần
        return jobRepository.findAll(combinedSpec, PageRequest.of(pageable.getPageNumber(), pageable.getPageSize(), Sort.by(Sort.Direction.DESC, "view")));
    }

    public JobSave getJobLikeByUserAndJob(User user, Job job){
        return this.jobSaveRepository.findByUserAndJob(user, job);
    }
    public JobSave handSaveJobLike(JobSave joblikenew){
        JobSave jobLike = this.jobSaveRepository.save(joblikenew);
        System.out.println(jobLike);
        return jobLike;
    }
    public Page<JobSave> getJobLikeByUser(User user,Pageable pageable){
        return this.jobSaveRepository.findByUser(user, pageable);
    }
    public void deleteJoblikeById(long id){
        this.jobSaveRepository.deleteById(id);
    }

}
