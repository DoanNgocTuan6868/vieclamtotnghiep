package com.example.vieclam247.controller.client;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.Plan;
import com.example.vieclam247.model.User;
import com.example.vieclam247.model.dto.RegisterDTO;
import com.example.vieclam247.service.JobService;
import com.example.vieclam247.service.PlanService;
import com.example.vieclam247.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;






@Controller
public class HomePageController {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final PlanService planService;
    private final JobService jobService;

  

    

    public HomePageController(UserService userService, PasswordEncoder passwordEncoder, PlanService planService,
            JobService jobService) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.planService = planService;
        this.jobService = jobService;
    }
//  xử lý trang home
    @GetMapping("/")
    public String getHomedv(Model model) {
        List<Job> jobs = jobService.getTop6JobsByStatus("Đăng bài");
        List<Plan> listplans = this.planService.getPlanAllTop();
        List<Job> ListJobInductry = this.jobService.getTop10JobsByInductryAndStatus("Công nghệ thông tin", "Đăng bài");
        model.addAttribute("listJob", jobs);
        model.addAttribute("listplans", listplans);
        model.addAttribute("ListJobInductry", ListJobInductry);

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
    
   
     // list job
    
   
    

}
