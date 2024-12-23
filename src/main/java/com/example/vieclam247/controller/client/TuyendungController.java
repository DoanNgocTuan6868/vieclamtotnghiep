package com.example.vieclam247.controller.client;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.vieclam247.model.Apply;
import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
import com.example.vieclam247.service.ApplyService;
import com.example.vieclam247.service.JobService;

import com.example.vieclam247.service.UploadService;
import com.example.vieclam247.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;


@Controller
public class TuyendungController {
    private final UserService userService;
    private final JobService jobService;
    private final UploadService uploadService;
    private final ApplyService applyService;

  
    public TuyendungController(UserService userService, JobService jobService, UploadService uploadService,
            ApplyService applyService) {
        this.userService = userService;
        this.jobService = jobService;
        this.uploadService = uploadService;
        this.applyService = applyService;
    }

    // tt tài khoản tuyển dụng
    @GetMapping("/tuyendung/profile")
    public String getProfile(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");

        User user = this.userService.getUserById(idUser);
        model.addAttribute("userTD", user);
        return "/client/tuyendung/profile";
    }

    @PostMapping("/tuyendung/profileUpdate")
    public String postProfileUp(Model model,
            @ModelAttribute("userTD") @Valid User userUp,
            BindingResult UserBindingResult,
            HttpServletRequest request,
            @RequestParam("imgavatar") MultipartFile file,
            RedirectAttributes redirectAttributes) {
        // validate
        if (UserBindingResult.hasErrors()) {
            return "/client/tuyendung/profile";
        }
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        User currenUser = this.userService.getUserById(idUser);
        if(!file.isEmpty()){
            String avatar = this.uploadService.handeSaveUploadFile(file, "avatar");
            currenUser.setAvatar(avatar);
        }
        
        currenUser.setAddRess(userUp.getAddRess());
        currenUser.setFullName(userUp.getFullName());
        currenUser.setPhone(userUp.getPhone());
        currenUser.setDateOfBirth(userUp.getDateOfBirth());
        currenUser.setCompany(userUp.getCompany());
        currenUser.setDescCompany(userUp.getDescCompany());
        currenUser.setDesclongcpn(userUp.getDesclongcpn());
        this.userService.updateUser(currenUser);
        redirectAttributes.addFlashAttribute("message", "Cập nhật thành công!");

        return "redirect:/tuyendung/profile";
    }

    // đăng việc làm
    @GetMapping("/tuyendung/dangvieclam")
    public String getPageCreatJob(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        User user = this.userService.getUserById(idUser);
        model.addAttribute("user", user);
        model.addAttribute("jobnew", new Job());
        return "/client/tuyendung/dangvieclam";
    }

    @PostMapping("/tuyendung/taobaidang")
    public String postCreateJob(Model model,
            @ModelAttribute("jobnew") @Valid Job jobnew,
            BindingResult jobBindingResult,
            HttpServletRequest request,
            @RequestParam("imglogo") MultipartFile file,
            RedirectAttributes redirectAttributes) {
        if (jobBindingResult.hasErrors()) {
            return "/client/tuyendung/dangvieclam";
        }
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        User user = this.userService.getUserById(idUser);

        long numPost = user.getNumPost();
        if (numPost < 1) {
            redirectAttributes.addFlashAttribute("errorMessage",
                    "Bạn hết số lượt đăng phải nâng cấp gói dịch vụ để tiếp tục dịch vụ.");
            return "redirect:/dichvu";
        }
        if (numPost >= 1) {
            numPost = numPost - 1;
        }
        user.setNumPost(numPost);
        this.userService.handlSaveUser(user);
        // format thoi dan dateline
        String dateStr = jobnew.getDateline();
        DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate date = LocalDate.parse(dateStr, inputFormatter);
        String dateline = date.format(outputFormatter);
        // lấy thời gian
        LocalDateTime currentTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        String formattedDate = currentTime.format(formatter);
        // lay thonhg tin file anh
        String logo = this.uploadService.handeSaveUploadFile(file, "company");
        jobnew.setLogo(logo);
        jobnew.setStatus("Chờ duyệt");
        jobnew.setView(1);
        jobnew.setPostingtime(formattedDate);
        jobnew.setDateline(dateline);
        jobnew.setUser(user);
        this.jobService.handSaveJob(jobnew);
        redirectAttributes.addFlashAttribute("message", "Tạo bài tuyển dụng thành công!");
        return "redirect:/tuyendung/dschoduyetbaidang";
    }

    // danh sách chờ phê duyệt bài đăng
    @GetMapping("/tuyendung/dschoduyetbaidang")
    public String getDsChoPDuyet(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        User user = this.userService.getUserById(idUser);

        List<Job> listjob = this.jobService.getlistJobByUserAndStatus(user, "Chờ duyệt");
        model.addAttribute("listjob", listjob);
        return "/client/tuyendung/dschoduyetbaidang";
    }

    @GetMapping("/tuyendung/updateJob/{id}")
    public String getUpbaidangtd(Model model, @PathVariable long id) {
        Job job = this.jobService.getJobById(id);
        model.addAttribute("jobup", job);
        return "/client/tuyendung/updateJob";
    }

    @PostMapping("/tuyendung/suabaidang")
    public String postSuabaidangchotd(Model model,
            @ModelAttribute("jobup") @Valid Job jobup,
            BindingResult jobupBindingResult,
            HttpServletRequest request,
            @RequestParam("imglogo") MultipartFile file,
            RedirectAttributes redirectAttributes) {
                if (jobupBindingResult.hasErrors()) {
                    return "/client/tuyendung/updatejob";
                }
                Job currenJob = this.jobService.getJobById(jobup.getId());
                if (currenJob != null) {
                    if(!file.isEmpty()){
                        String logo = this.uploadService.handeSaveUploadFile(file, "company");
                        currenJob.setLogo(logo);
                    }
                    currenJob.setTitle(jobup.getTitle());
                    currenJob.setJobPosition(jobup.getJobPosition());
                    currenJob.setInductry(jobup.getInductry());
                    currenJob.setQuantity(jobup.getQuantity());
                    currenJob.setWorkingForm(jobup.getWorkingForm());
                    currenJob.setSalary(jobup.getSalary());
                    currenJob.setExperience(jobup.getExperience());
                    currenJob.setDegree(jobup.getDegree());
                    currenJob.setYearOld(jobup.getYearOld());
                    currenJob.setArea(jobup.getArea());
                    currenJob.setAddress(jobup.getAddress());
                    currenJob.setDateline(jobup.getDateline());
                    currenJob.setContentjob(jobup.getContentjob());
                    currenJob.setProbation(jobup.getProbation());
                    this.jobService.handSaveJob(currenJob);
                    redirectAttributes.addFlashAttribute("message", "Cập nhật thành công!");
                }
              

        return "redirect:/tuyendung/dschoduyetbaidang";
    }
    @GetMapping("/tuyendung/xoabai/{id}")
    public String deleteJob(Model model, @PathVariable long id, RedirectAttributes redirectAttributes) {
        this.jobService.deleteJobById(id);
        redirectAttributes.addFlashAttribute("message", "Xóa bài thành công!");
        return "redirect:/tuyendung/dschoduyetbaidang";
    }
    // dsanh ứng viên
    @GetMapping("/tuyendung/dsungvien")
    public String getdsungvienall(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        List<String> statuses = Arrays.asList("Đang duyệt", "Chờ duyệt");
        List<Apply> applies = applyService.getAppliesByUserIdAndStatuses2(idUser, statuses);
        model.addAttribute("applies", applies);
    
        return "/client/tuyendung/dsungvienall";
    }
    @GetMapping("/tuyendung/loaiungvien/{id}")
    public String getloaiungvien(Model model, @PathVariable long id, RedirectAttributes redirectAttributes) {
        Apply apply = this.applyService.getApplyById(id);

        LocalDateTime currentTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        String formattedDate = currentTime.format(formatter);
        apply.setTimefeedback(formattedDate);
        apply.setStatus("Từ chối hồ sơ");
        apply.setFeedback("Cảm ơn bạn đã quan tâm vị trí công việc bên chúng mình,"
                + "rất tiếc bạn không đủ điều kiện cho vị trí công việc");
        this.applyService.handSaveApply(apply);
        redirectAttributes.addFlashAttribute("message", "Đã từ chối ứng viên");

        return "redirect:/tuyendung/dsungvien";
    }
    @GetMapping("/tuyendung/pheduyet/{id}")
    public String getMethodName(Model model, @PathVariable long id, RedirectAttributes redirectAttributes) {
        Apply apply = this.applyService.getApplyById(id);

        LocalDateTime currentTime = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        String formattedDate = currentTime.format(formatter);
        apply.setTimefeedback(formattedDate);
        apply.setStatus("Đã Phê duyệt");
        apply.setFeedback("Cảm ơn bạn đã quan tâm vị trí công việc bên chúng mình,"
                + "Chúc mừng bạn đã trúng tuyển hay liên hệ sdt 09999999");
        this.applyService.handSaveApply(apply);
        redirectAttributes.addFlashAttribute("message", "Phê duyệt ứng viên");

        return "redirect:/tuyendung/dsungvien";
    }
    @GetMapping("/tuyendung/ketquahoso")
    public String gethosouv(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long idUser = (long) session.getAttribute("id");
        List<String> statuses = Arrays.asList("Đã Phê duyệt", "Từ chối hồ sơ");
        List<Apply> applies = applyService.getAppliesByUserIdAndStatuses2(idUser, statuses);
        model.addAttribute("applies", applies);
    
        return "/client/tuyendung/ketquahoso";
    }
    
    
    
    

}
