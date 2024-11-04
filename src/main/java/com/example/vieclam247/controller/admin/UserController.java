package com.example.vieclam247.controller.admin;

import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.vieclam247.model.User;
import com.example.vieclam247.service.UploadService;
import com.example.vieclam247.service.UserService;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/admin/user")
    public String getUserAdmin(Model model) {
        List<User> users = this.userService.getListUser();
        model.addAttribute("listUser", users);

        return "/admin/user/show";
    }

    @GetMapping("/admin/user/creat")
    public String getCreateUser(Model model) {
        model.addAttribute("userNew", new User());
        return "/admin/user/creat";
    }

    @PostMapping("/admin/user/creat")
    public String postCreatUser(Model model,
            @ModelAttribute("userNew") @Valid User userNew,
            BindingResult newUserBindingResult,
            @RequestParam("fileImage") MultipartFile file) {

        if (newUserBindingResult.hasErrors()) {
            return "/admin/user/creat";
        }
        // lay thonhg tin file anh
        String avatar = this.uploadService.handeSaveUploadFile(file, "avatar");
        String handPassword = this.passwordEncoder.encode(userNew.getPassword());

        // set dữ liễu
        userNew.setAvatar(avatar);
        userNew.setPassword(handPassword);
        userNew.setPlan(this.userService.getPlanById(4));
        userNew.setRole(this.userService.getRoleByName(userNew.getRole().getName()));
        this.userService.handlSaveUser(userNew);

        return "redirect:/admin/user";
    }

    // sửa
    @GetMapping("/admin/user/update/{id}")
    public String getMethodName(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("user", user);
        return "/admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model,
            @ModelAttribute("user") @Valid User userUpdate,
            BindingResult upUserBindingResult,
            @RequestParam("fileImage") MultipartFile file) {
        if (upUserBindingResult.hasErrors()) {
            return "/admin/user/update";
        }
        User currentUser = this.userService.getUserById(userUpdate.getId());
        if (currentUser!=null) {
            if(!file.isEmpty()){
                String avatar = this.uploadService.handeSaveUploadFile(file, "avatar");
                currentUser.setAvatar(avatar);
            }
            // sét dữ liệu
            currentUser.setAddRess(userUpdate.getAddRess());
            currentUser.setFullName(userUpdate.getFullName());
            currentUser.setPhone(userUpdate.getPhone());
            currentUser.setEmail(userUpdate.getEmail());
            currentUser.setRole(this.userService.getRoleByName(userUpdate.getRole().getName()));
            this.userService.handlSaveUser(currentUser);
        }

        return "redirect:/admin/user";
    }
    @GetMapping("/admin/user/delete/{id}")
    public String deleteUser(Model model,@PathVariable long id) {
        this.userService.deleteUser(id);
        return "redirect:/admin/user";
    }
    

}
