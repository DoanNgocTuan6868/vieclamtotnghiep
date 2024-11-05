package com.example.vieclam247.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.example.vieclam247.config.VNPayService;
import com.example.vieclam247.model.Plan;
import com.example.vieclam247.model.User;
import com.example.vieclam247.service.PlanService;
import com.example.vieclam247.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class DichVuController {
    private final PlanService planService;
    private final UserService userService;
    private final VNPayService vnPayService;
    public DichVuController(PlanService planService, UserService userService, VNPayService vnPayService) {
        this.planService = planService;
        this.userService = userService;
        this.vnPayService = vnPayService;
    }

    @GetMapping("/dichvu")
    public String getPageDichVu(Model model) {
        List<Plan> listplans = this.planService.getPlanAllTop();
        model.addAttribute("listplans", listplans);
        return "/client/dichvu/show";
    }
    
    @PostMapping("/dkdichvu")
    public String submidOrder(@RequestParam("id") long id, HttpServletRequest request){
        Plan plan = this.userService.getPlanById(id);

        int orderTotal = (int) plan.getPrice();
        String orderInfo = plan.getName();

        String baseUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort();
        String vnpayUrl = vnPayService.createOrder(orderTotal, orderInfo, baseUrl);
        return "redirect:" + vnpayUrl;
    }

     @GetMapping("/vnpay-payment")
    public String GetMapping(HttpServletRequest request, Model model){
        HttpSession session = request.getSession(false);
        Plan plan = this.planService.getPlanByName(request.getParameter("vnp_OrderInfo"));

        long numPost = 1;
        if(plan.getLevel() == 1){
            numPost = 5;
        }
        if(plan.getLevel() == 2){
            numPost = 10;
        }
        if(plan.getLevel() == 3){
            numPost = 20;
        }

        long idUser = (long) session.getAttribute("id");

        User user = this.userService.getUserById(idUser);
        user.setPlan(plan);
        user.setNumPost(numPost);

        this.userService.handlSaveUser(user);

        int paymentStatus =vnPayService.orderReturn(request);

        String orderInfo = request.getParameter("vnp_OrderInfo");
        String paymentTime = request.getParameter("vnp_PayDate");
        String transactionId = request.getParameter("vnp_TransactionNo");
        String totalPrice = request.getParameter("vnp_Amount");

        model.addAttribute("orderId", orderInfo);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("paymentTime", paymentTime);
        model.addAttribute("transactionId", transactionId);

        return paymentStatus == 1 ? "/client/dichvu/TTThanhcong" : "/client/dichvu/TTThatbai";
    }
    
}
