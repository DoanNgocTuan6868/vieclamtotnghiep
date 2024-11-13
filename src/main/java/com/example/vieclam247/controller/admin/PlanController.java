package com.example.vieclam247.controller.admin;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.vieclam247.model.OderPlan;
import com.example.vieclam247.model.Plan;
import com.example.vieclam247.service.PlanService;
import com.example.vieclam247.service.UserService;
import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.PostMapping;







@Controller
public class PlanController {
    private final UserService userService;
    private final PlanService planService;
    
    public PlanController(UserService userService, PlanService planService) {
        this.userService = userService;
        this.planService = planService;
    }

    @GetMapping("/admin/plan")
    public String getPlanPageAdmin(Model model) {
        List<Plan> listPlan = this.userService.getAllPlan();
        model.addAttribute("listPlan", listPlan);
        return "/admin/plan/show";
    }
    @GetMapping("/admin/plan/creat")
    public String getPagePlanNew(Model model) {
        model.addAttribute("plannew", new Plan());
        return "/admin/plan/creat";
    }
    @PostMapping("/admin/plan/creat")
    public String postMethodName(Model model,
            @ModelAttribute("plannew") @Valid Plan planNew,
            BindingResult newPlanBindingResult) {
        if(newPlanBindingResult.hasErrors()){
            return "/admin/plan/creat";
        }
        System.out.println("run hear : " + planNew);
        this.userService.handSavePlan(planNew);
        return "redirect:/admin/plan";
    }
     @GetMapping("/admin/plan/update/{id}")
    public String getPageUpdarePlan(Model model,@PathVariable long id) {
        Plan plan = this.userService.getPlanById(id);
        model.addAttribute("plan", plan);
        return "/admin/plan/update";
    }

    @PostMapping("/admin/plan/update")
    public String postUpdatePlan(Model model,
    @ModelAttribute("plan") @Valid Plan planUp,
    BindingResult newPlanBindingResult) {

        if(newPlanBindingResult.hasErrors()){
            return "/admin/plan/update";
        }

        Plan curenPl = this.userService.getPlanById(planUp.getId());
        curenPl.setName(planUp.getName());
        curenPl.setPrice(planUp.getPrice());
        curenPl.setLevel(planUp.getLevel());
        curenPl.setDescription(planUp.getDescription());
        curenPl.setDetail(planUp.getDetail());

        this.userService.handSavePlan(curenPl);
        return "redirect:/admin/plan";
    }
    // xóa

    @GetMapping("/admin/plan/delete/{id}")
    public String deletePlan(Model model, @PathVariable long id) {
        this.userService.deletePlan(id);
        return "redirect:/admin/plan";
    }
    @GetMapping("/admin/planOrder")
    public String getPlanOrderAdmin(Model model) {
        List<OderPlan> oderPlans = this.planService.getOrderPhan();
        model.addAttribute("listOrder", oderPlans);
        return "/admin/plan/showOder";
    }
    

    
    
    
   
    

    
    
    
}
