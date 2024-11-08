package com.example.vieclam247.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.Apply;
import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
@Repository
public interface ApplyRepository extends JpaRepository<Apply,Long>{
    @SuppressWarnings("null")
    List<Apply> findAll();
    
    List<Apply> findByUser_IdAndStatusOrStatus(Long userId, String status1, String status2);

    Apply findById(long id);

    List<Apply> findByUser_Id(long id);
    Apply findByUserAndJob(User user,Job job);
    
    // Tìm các Apply theo userId của Job và trạng thái
    List<Apply> findByJob_User_IdAndStatusIn(Long userId, List<String> statuses);


}
