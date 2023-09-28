package com.takeo.service;


import com.takeo.dto.UserDto;
import com.takeo.entity.User;

import java.util.List;

public interface UserService {
   public User registerUser(UserDto userDto);
    public User findByUsername(String username);

    public List<User> getAllUsers();
    public User login(String username, String password);
}
