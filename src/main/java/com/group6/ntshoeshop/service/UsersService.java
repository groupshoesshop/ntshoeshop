
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.UsersEntity;
import com.group6.ntshoeshop.repository.UserRepository;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttributes;


@Service
@SessionAttributes("user")
public class UsersService {
    
    @Autowired
    private UserRepository userRepo;
    
    public boolean checkLogin(String email, String password, HttpSession httpSession){
    
        UsersEntity user = userRepo.findByEmailAndPassword(email, password);
            if(user == null){
                return false;
            }else{
                httpSession.setAttribute("user", user);
                return true;
            }
    }
}
