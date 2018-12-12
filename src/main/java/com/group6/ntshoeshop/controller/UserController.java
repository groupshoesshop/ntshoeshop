
package com.group6.ntshoeshop.controller;

import com.group6.ntshoeshop.entites.OrderDetailsEntity;
import com.group6.ntshoeshop.entites.OrdersEntity;
import com.group6.ntshoeshop.entites.UserRoleEntity;
import com.group6.ntshoeshop.entites.UsersEntity;
import com.group6.ntshoeshop.model.CartItem;
import com.group6.ntshoeshop.repository.OrderRepository;
import com.group6.ntshoeshop.repository.UserRepository;
import com.group6.ntshoeshop.repository.UserRoleRepository;
import com.group6.ntshoeshop.service.OrderDetailsService;
import com.group6.ntshoeshop.service.UsersService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UserController {
    
    @Autowired
    UsersService usersService;
    
    @Autowired
    UserRepository userRepo;
    @Autowired
    OrderRepository orderRepo;
    @Autowired
    OrderDetailsService orderDetailsService;
    @Autowired
    UserRoleRepository userRoleRepo;
    
    @GetMapping
    public String ProfileUser( HttpSession httpSession, Model model){
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
        if(null == httpSession.getAttribute("user")){
            return ("redirect:/");
        }else{
        return ("/userprofile");
        }
        
    }
    
     @PostMapping
    public String UpdateProfile (@RequestParam int userId, @RequestParam String name, @RequestParam String birthday, @RequestParam String address, 
                                 @RequestParam String phonenumber, @RequestParam String email, @RequestParam String password,
                                  @RequestParam String newPassword,@RequestParam String repPassword,HttpSession httpSession, Model model ){
        
        UsersEntity user = userRepo.findOne(userId);
        if(user.getPassword().equals(password)){
            if(repPassword.equals(newPassword)){
                user.setName(name);
                user.setBirthday(birthday);
                user.setAddress(address);
                user.setPhonenumber(phonenumber);
                user.setEmail(email);
                user.setPassword(newPassword);
                userRepo.save(user);
                UsersEntity sessionUser = (UsersEntity) httpSession.getAttribute("user");
                sessionUser.setName(name);
                sessionUser.setBirthday(birthday);
                sessionUser.setAddress(address);
                sessionUser.setPhonenumber(phonenumber);
                sessionUser.setEmail(email);
                sessionUser.setPassword(newPassword);
                httpSession.removeAttribute("user");
                httpSession.setAttribute("user", sessionUser);
                return "redirect:/";
            }else{
                model.addAttribute("repPassword", "Mật khẩu nhập vào không trùng khớp, vui lòng kiểm tra lại!");
                return "userprofile";
            }
        
        }else{
            model.addAttribute("password", "Mật khẩu bạn vừa nhập không đúng, vui lòng kiểm tra lại");
            return "userprofile";
        }
        
    }
    @GetMapping("/login")
    public String LoginForm(){
        
        return "login";
    }
    
    @PostMapping("/login")
    public String Login(@RequestParam String email,@RequestParam String password, HttpSession httpSession, Model model){
        boolean CheckLogin = usersService.checkLogin(email, password, httpSession);
        if(CheckLogin == true){
            
            return "redirect:/";
        }else{
            model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng, vui lòng kiểm tra lại");
            return "login";
        }
        
    } 
    @GetMapping("/register")
    public String Default(){
        
        return "register";
    }
    
    @PostMapping("/register")
    public String Register(@RequestParam String name, @RequestParam String address,
             @RequestParam String phonenumber, @RequestParam String birthday,
              @RequestParam String email, @RequestParam String password, Model model){
        UsersEntity findByEmail = userRepo.findByEmail(email);
        if(findByEmail != null){
            model.addAttribute("errorEmail", "Email này đã tồn tại!");
            UsersEntity user = new UsersEntity();
            user.setName(name);
            user.setAddress(address);
            user.setBirthday(birthday);
            user.setPhonenumber(phonenumber);
            user.setEmail(email);
            user.setPassword(password);
            model.addAttribute("user", user);
            return "register";
        }else{
            UsersEntity user = new UsersEntity();
            UserRoleEntity role = userRoleRepo.findOne(1);
            user.setName(name);
            user.setAddress(address);
            user.setBirthday(birthday);
            user.setPhonenumber(phonenumber);
            user.setEmail(email);
            user.setPassword(password);
            user.setUserRoles(role);
            userRepo.save(user);
            return "redirect:/login";
        }
  
    }
    @GetMapping("/logout")
    public String Logout (HttpSession httpSession, SessionStatus status){
        status.isComplete();
        httpSession.removeAttribute("user");
        
        return "redirect:/";
    }
    
   
    @GetMapping("/order-manager")
    public String OrderManager(Model model, HttpSession httpSession){
        UsersEntity user = (UsersEntity) httpSession.getAttribute("user");
        String customerName = user.getName();
        String email = user.getEmail();
        List<OrdersEntity> listorder = orderRepo.findByCustomerNameAndEmailOrderByOrderIdDesc(customerName, email);
        List<OrderDetailsEntity> listOrderDetails = new ArrayList<OrderDetailsEntity>();
        for (int i = 0; i < listorder.size(); i++) {
            OrdersEntity order = listorder.get(i);
           List<OrderDetailsEntity> orderDetails = orderDetailsService.getListOrderDetailsManager(order);
            for (OrderDetailsEntity orderDetail : orderDetails) {
                listOrderDetails.add(orderDetail);
            }
        }
        
        List<CartItem> listCartItems = (List<CartItem>) httpSession.getAttribute("cartItem");
        if(null == listCartItems){
            model.addAttribute("quantityItem", "0");
        }else{
            model.addAttribute("quantityItem", listCartItems.size());
        }
      
        model.addAttribute("ordermanager", listOrderDetails);
        return "ordermanager";
    }
}
