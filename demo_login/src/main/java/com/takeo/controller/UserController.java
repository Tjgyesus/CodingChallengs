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



}
