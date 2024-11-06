package com.example.vieclam247.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
import com.example.vieclam247.service.JobService;
import com.example.vieclam247.service.UserService;


@Controller
public class TuyendungadminController {
    private final UserService userService;
    private final JobService jobService;
    

    public TuyendungadminController(UserService userService, JobService jobService) {
        this.userService = userService;
        this.jobService = jobService;
    }


    @GetMapping("/admin/tuyendung/baichoduyet")
    public String getMethodName(Model model) {
        List<Job> listjob = this.jobService.getListJobByStatus("Chờ duyệt");
        model.addAttribute("listjob", listjob);
        return "/admin/tuyendung/dschoduyetbaidang";
    }
    @GetMapping("/admin/tuyendung/dangbai/{id}")
    public String getchoduyetbaidang(Model model,@PathVariable long id,RedirectAttributes redirectAttributes) {
        Job currenJob = this.jobService.getJobById(id);
        
        long idTD = currenJob.getUser().getId();
        User TD = this.userService.getUserById(idTD);
        // long sumJobnew = TD.getSumjob() + 1;
        // TD.setSumjob(sumJobnew);
        this.userService.handlSaveUser(TD);

        currenJob.setStatus("Đăng bài");
        this.jobService.handSaveJob(currenJob);
        redirectAttributes.addFlashAttribute("message", "Đăng bài thành công!");
        return "redirect:/admin/tuyendung/baichoduyet";
    }
    @GetMapping("/admin/tuyendung/delete/{id}")
    public String deleteJob(Model model, @PathVariable long id, RedirectAttributes redirectAttributes) {
        this.jobService.deleteJobById(id);
        redirectAttributes.addFlashAttribute("message", "Xóa bài thành công!");
        return "redirect:/admin/tuyendung/baichoduyet";
    }
    @GetMapping("/admin/tuyendung/baituyendung")
    public String getAdminbaidang(Model model) {
        List<Job> listjob = this.jobService.getListJobByStatus("Đăng bài");
        model.addAttribute("listjob", listjob);
        return "/admin/tuyendung/baidangduyet";
    }
    
    
}
