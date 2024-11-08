package com.example.vieclam247.controller.client;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.vieclam247.model.Apply;
import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.JobSave;
import com.example.vieclam247.model.User;
import com.example.vieclam247.service.ApplyService;
import com.example.vieclam247.service.JobService;
import com.example.vieclam247.service.UploadService;
import com.example.vieclam247.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class UngvienController {
     private final JobService jobService;
     private final UploadService uploadService;
     private final UserService userService;
     private final ApplyService applyService;
        

    
    public UngvienController(JobService jobService, UploadService uploadService, UserService userService,
            ApplyService applyService) {
        this.jobService = jobService;
        this.uploadService = uploadService;
        this.userService = userService;
        this.applyService = applyService;
    }
    // tt tài khoản ứng viên
     @GetMapping("/ungvien/profile")
     public String getProfileUv(Model model,HttpServletRequest request) {
         HttpSession session = request.getSession(false);
         long idUser = (long) session.getAttribute("id");
 
         User user = this.userService.getUserById(idUser);
         model.addAttribute("userTD", user);
         return "/client/ungvien/profile";
     }
     @PostMapping("/ungvien/profileUpdate")
     public String postProfileUpUV(Model model,
             @ModelAttribute("userTD") @Valid User userUp,
             BindingResult UserBindingResult,
             HttpServletRequest request,
             RedirectAttributes redirectAttributes) {
                 // validate
         if (UserBindingResult.hasErrors()) {
             return "/client/ungvien/profile";
         }
         HttpSession session = request.getSession(false);
         long idUser = (long) session.getAttribute("id");
         User currenUser = this.userService.getUserById(idUser);
 
         currenUser.setAddRess(userUp.getAddRess());
         currenUser.setFullName(userUp.getFullName());
         currenUser.setPhone(userUp.getPhone());
         currenUser.setDateOfBirth(userUp.getDateOfBirth());
         this.userService.updateUser(currenUser);
         redirectAttributes.addFlashAttribute("message", "Cập nhật thành công!");
     
         return "redirect:/ungvien/profile";
     }

    @PostMapping("addJobSave/{id}")
    public String postJobSave(@PathVariable long id, HttpServletRequest request,
    RedirectAttributes redirectAttributes) {
        HttpSession session = request.getSession(false);
        long id_user = (long) session.getAttribute("id");
        User user = this.userService.getUserById(id_user);
        Job job = this.jobService.getJobById(id);
        JobSave jobSave = this.jobService.getJobLikeByUserAndJob(user, job);
        if(jobSave == null){
            JobSave jobsavenew = new JobSave();
            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
            String formattedDate = currentTime.format(formatter);
            jobsavenew.setTimeLike(formattedDate);
            jobsavenew.setUser(user);
            jobsavenew.setJob(job);
            this.jobService.handSaveJobLike(jobsavenew);
            redirectAttributes.addFlashAttribute("message", "Đã thêm việc làm vào mục việc làm yêu thích của bạn");

        }else {
            redirectAttributes.addFlashAttribute("message", "Việc làm đã tồn trong mục việc làm yêu thích");
        }

        return "redirect:/jobsavepage";

    }
    @GetMapping("/jobsavepage")
    public String getJobsavepage(Model model,
    @RequestParam("page") Optional<String> pageOptional,
    HttpServletRequest request,
    RedirectAttributes redirectAttributes) {
       int page = 1;
        try {
            if (pageOptional.isPresent()) {
                page = Integer.parseInt(pageOptional.get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
        }
        PageRequest pageable = PageRequest.of(page - 1, 5);

        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        User user = this.userService.getUserById(idUser);

        Page<JobSave> prs = this.jobService.getJobLikeByUser(user, pageable);
        if (prs != null && !prs.isEmpty()) {
            List<JobSave> listjob = prs.getContent();

            model.addAttribute("listjob", listjob);
            // lây so trong hiện tại truyên sang view
            model.addAttribute("curentPage", page);
            // lấy tông số trang
            model.addAttribute("totalPages", prs.getTotalPages());
        } else {
            model.addAttribute("listjob", Collections.emptyList());
            model.addAttribute("curentPage", 1);
            model.addAttribute("totalPages", 1);
        }




        return "/client/job/jobsavepage";
    }
    @GetMapping("/deletejobsave/{id}")
    public String deletejobsave(Model model, @PathVariable long id, RedirectAttributes redirectAttributes) {
        this.jobService.deleteJoblikeById(id);
        redirectAttributes.addFlashAttribute("message", "Xóa việc làm khỏi mục yêu thích thành công!");
        return "redirect:/jobsavepage";
       
    }
    @PostMapping("/nopcv/{id}")
    public String postNopdoncv(Model model,
            @PathVariable long id,
            @ModelAttribute("applyNew") Apply applynew,
            HttpServletRequest request,
            @RequestParam("fileCV") MultipartFile file,
            RedirectAttributes redirectAttributes) {
                HttpSession session = request.getSession(false);
                long id_user = (long) session.getAttribute("id");
                User user = this.userService.getUserById(id_user);
                Job job = this.jobService.getJobById(id);
                Apply apply = this.applyService.getApplyByUserAndJob(user, job);
                if (apply == null) {
                    if(!file.isEmpty()){
                        // lay thonhg tin file cv
                        String CV = this.uploadService.handeSaveUploadFileCV(file, "filecv");
                        user.setFilecv(CV);
                        this.userService.handlSaveUser(user);
                    }
                    
                    LocalDateTime currentTime = LocalDateTime.now();
                    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
                    String formattedDate = currentTime.format(formatter);
        
                    applynew.setTimeapply(formattedDate);
                    applynew.setStatus("Chờ duyệt");
                    applynew.setUser(user);
                    applynew.setJob(job);
        
                    this.applyService.handSaveApply(applynew);
                    redirectAttributes.addFlashAttribute("message", "Bạn đã nôp hồ sơ thành công!");
           
                }else {
                    redirectAttributes.addFlashAttribute("message", "Bạn đã ứng tuyển cho việc làm này trước đó!");
                }
        return "redirect:/job";
    }
    
    @GetMapping("/ungvien/dsungtuyen")
    public String getdsachungtuyen(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        List<Apply> listApply = this.applyService.getAllbyUserId(idUser);
        model.addAttribute("listApply", listApply);
        return "/client/ungvien/dsungtuyen";
    }
    @GetMapping("/ungvien/huynop/{id}")
    public String deleteHuynop(Model model, @PathVariable long id, RedirectAttributes redirectAttributes) {
        this.applyService.deleteApplyById(id);
        redirectAttributes.addFlashAttribute("message", "Hủy ứng tuyển thành công!");
        return "redirect:/ungvien/dsungtuyen";
    }
    
    
    

    
    
}
