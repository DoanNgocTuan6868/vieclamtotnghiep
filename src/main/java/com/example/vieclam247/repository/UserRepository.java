package com.example.vieclam247.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.vieclam247.model.Role;
import com.example.vieclam247.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findAll();
    User findById(long id);
    boolean existsByEmail(String email);

    User findByEmail(String email);

    List<User> findByRole(Role role);
}
