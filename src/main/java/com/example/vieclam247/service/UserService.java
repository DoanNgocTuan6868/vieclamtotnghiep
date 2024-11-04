package com.example.vieclam247.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.vieclam247.model.Plan;
import com.example.vieclam247.model.Role;
import com.example.vieclam247.model.User;
import com.example.vieclam247.model.dto.RegisterDTO;
import com.example.vieclam247.repository.PlanRepository;
import com.example.vieclam247.repository.RoleRepository;
import com.example.vieclam247.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PlanRepository planRepository;
    


    public UserService(UserRepository userRepository, RoleRepository roleRepository, PlanRepository planRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.planRepository = planRepository;
    }
    public User handlSaveUser(User user) {
        User userNew = this.userRepository.save(user);
        System.out.println(userNew);
        return userNew;
    }
    public List<User>getListUser(){
        return this.userRepository.findAll();

    }
    public Role getRoleByName(String name){
        return this.roleRepository.findByName(name);
    }
    public Plan getPlanById(long id){
        return this.planRepository.findById(id);
    }
    public User getUserById(long id){
        return this.userRepository.findById(id);
    }
    public void deleteUser(long id){
        this.userRepository.deleteById(id);
    }
    // plan
    public List<Plan> getAllPlan(){
        return this.planRepository.findAll();
    }
    // save plan
    public Plan handSavePlan(Plan plan){
        Plan plannew = this.planRepository.save(plan);
        System.out.println(plannew);
        return plannew;

    }
    // delete

    public void deletePlan(long id){
        this.planRepository.deleteById(id);
    }
    /// đăng ký tk
    // convert registerDTO -> user
    public User registerDTOtoUser(RegisterDTO registerDTO){
        User user = new User();
        user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        user.setPhone(registerDTO.getPhone());
        user.setAddRess(registerDTO.getAddRess());
        return user;
    }
    public boolean checkEmailExist(String email){
        return this.userRepository.existsByEmail(email);
    }

    public User getUserByEmail(String email){
        return this.userRepository.findByEmail(email);
    }

    public List<User> getListUserByRole(Role role){
        return this.userRepository.findByRole(role);
    }


}
