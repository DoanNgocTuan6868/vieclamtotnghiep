package com.example.vieclam247.controller.client;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.vieclam247.model.Apply;
import com.example.vieclam247.model.Job;
import com.example.vieclam247.model.User;
import com.example.vieclam247.model.dto.JobCriteriaDTO;
import com.example.vieclam247.service.JobService;
import com.example.vieclam247.service.UserService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class JobPageController {
    private final JobService jobService;
    private final UserService userService;
    
   
    public JobPageController(JobService jobService, UserService userService) {
        this.jobService = jobService;
        this.userService = userService;
    }
   @GetMapping("/job")
    public String getPageJob(Model model, JobCriteriaDTO jobCriteriaDTO,HttpServletRequest request) {
        int page = 1;
        try {
            if (jobCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(jobCriteriaDTO.getPage().get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
        }
        // phân số lượng trang
        PageRequest pageable = PageRequest.of(page - 1, 10);
        String status = "Đăng bài";

        Page<Job> prs = this.jobService.fetchJobWithSpec(pageable, jobCriteriaDTO,status);
        List<Job> listjob = prs.getContent().size() > 0 ? prs.getContent():new ArrayList<Job>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            // remove page
            qs = qs.replace("page=" + page, "");
        }

        model.addAttribute("listjob", listjob);
        // lây so trong hiện tại truyên sang view
        model.addAttribute("curentPage", page);
        // lấy tông số trang
        model.addAttribute("totalPages", prs.getTotalPages());

        model.addAttribute("queryString", qs);
        return "/client/job/show";
    }



    @GetMapping("/job/chitiet/{id}")
    public String getPageJobDetail(Model model, @PathVariable long id) {
        Job job = this.jobService.getJobById(id);
        long idcompany = job.getUser().getId();
        User company =this.userService.getUserById(idcompany);
        long viewup = job.getView() + 1;
         List<Job> jobs = jobService.getTop6JobsByStatus("Đăng bài");
        job.setView(viewup);
        model.addAttribute("job", job);
        model.addAttribute("applyNew", new Apply());
        model.addAttribute("company", company);
        model.addAttribute("listJob", jobs);
        return "/client/job/chitietJob";
    }
    
}
