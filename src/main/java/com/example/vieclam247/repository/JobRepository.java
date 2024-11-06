package com.example.vieclam247.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
@Repository
public interface JobRepository extends JpaRepository<Job,Long>{
    List<Job> findByUserAndStatus(User user, String status);
    Job findById(long id);
    List<Job> findByStatus(String status);
}
