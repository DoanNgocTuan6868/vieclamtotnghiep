package com.example.vieclam247.controller.client;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.vieclam247.model.User;
import com.example.vieclam247.model.dto.RegisterDTO;
import com.example.vieclam247.service.UserService;

import jakarta.validation.Valid;



@Controller
public class HomePageController {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    public HomePageController(UserService userService,PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        
    }

    @GetMapping("/")
    public String getMethodName() {
        return "/client/home/show";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new RegisterDTO());
        return "/client/auth/register";
    }
   @PostMapping("/register")
    public String postRegister(Model model,@ModelAttribute("registerUser") @Valid RegisterDTO registerDTO,
    BindingResult bindingResult) {

        //validate
        if(bindingResult.hasErrors()){
            return "/client/auth/register";
        }

        User user = this.userService.registerDTOtoUser(registerDTO);
        // ma hoa pass
        String hashPassword = this.passwordEncoder.encode(user.getPassword());
        // cap nhat lai thong tin vao doi tuong user
        String avatarNew = "creatAvatar.jpg";

        user.setAvatar(avatarNew);
        user.setPassword(hashPassword);
        user.setRole(this.userService.getRoleByName(registerDTO.getRoleName()));
        user.setPlan(this.userService.getPlanById(4));
        user.setNumPost(1);        
        System.out.println("run hear : " + user);
        this.userService.handlSaveUser(user);
        return "redirect:/login";

    }

    @GetMapping("/login")
    public String getLogin(Model model) {
        return "/client/auth/login";
    }
    
    @GetMapping("/error-page")
    public String getErrorPage(Model model) {
        return "/client/auth/error_page";
    }

}