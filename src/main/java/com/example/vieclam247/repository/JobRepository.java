package com.example.vieclam247.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
@Repository
public interface JobRepository extends JpaRepository<Job,Long> ,JpaSpecificationExecutor<Job>{
    List<Job> findByUserAndStatus(User user, String status);
    Job findById(long id);
    List<Job> findByStatus(String status);
    // Tìm các Job theo trạng thái và giới hạn 6 bản ghi đầu tiên
    List<Job> findByStatus(String status, Pageable pageable);
    // Tìm các Job theo industry và status, giới hạn kết quả trả về
    List<Job> findByInductryAndStatus(String inductry, String status, Pageable pageable);
    @SuppressWarnings("null")
    Page<Job> findAll(Specification<Job> spe,Pageable page);
    @Query("SELECT j FROM Job j WHERE j.status = :status ORDER BY j.view DESC")
    Page<Job> findByStatusOrderByViewDesc(@Param("status") String status, Pageable pageable);
}
