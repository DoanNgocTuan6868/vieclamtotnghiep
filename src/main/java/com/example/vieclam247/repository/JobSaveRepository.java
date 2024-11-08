package com.example.vieclam247.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.JobSave;
import com.example.vieclam247.model.User;

@Repository
public interface JobSaveRepository extends JpaRepository <JobSave,Long> {
    List<JobSave> findByUser(User user);
    
    JobSave findByUserAndJob(User user,Job job);

    Page<JobSave> findByUser(User user,Pageable pageable);

    
} 