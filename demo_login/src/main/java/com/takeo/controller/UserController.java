package com.takeo.controller;

import com.takeo.dto.UserDto;
import com.takeo.entity.User;
import com.takeo.service.UserServiceImpl;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Controller
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    @GetMapping("/login/{username}/{password}")
    public  ResponseEntity<User> login(@PathVariable String username, @PathVariable  String password){

         return new ResponseEntity<>(userService.login(username,password),HttpStatus.ACCEPTED);

    }
    @GetMapping("/fetchAll")
    public ResponseEntity<List<User>> getAllUsers(){
        return ResponseEntity.ok(userService.getAllUsers());
    }

    @PostMapping("/signup")
    public ResponseEntity<User> registerUser(@RequestBody @Valid UserDto userDto){
        return new ResponseEntity<>(userService.registerUser(userDto), HttpStatus.CREATED);
    }
    @GetMapping("login/{username}")
    public ResponseEntity<User> findByUsername(@PathVariable String username){
        return ResponseEntity.ok(userService.findByUsername(username));
    }



//    @GetMapping("/index")
//    public String home(){
//        return "index";
//    }
//    @GetMapping("/register")
//    public String showRegistrationForm(Model model){
//        UserDto user = new UserDto();
//        model.addAttribute("user", user);
//        return "register";
//    }
//
//    @PostMapping("/register/save")
//    public String registerUser(@Valid @ModelAttribute("user") UserDto userDto,
//                               BindingResult result,
//                               Model model){
//        User existingUser = userService.findByUsername(userDto.getUsername());
//
//        if(existingUser != null && existingUser.getUsername() != null && !existingUser.getUsername().isEmpty()){
//            result.rejectValue("username", null,
//                    "There is already an account registered with the same username");
//        }
//
//        if(result.hasErrors()){
//            model.addAttribute("user", userDto);
//            return "/register";
//        }
//
//        userService.registerUser(userDto);
//        return "redirect:/register?success";
//    }
//
//    @GetMapping("/login")
//    public String login(){
//        return "login";
//    }
//    @GetMapping("/welcome")
//    public String welcome() {
//        return "welcome";
//    }

}
