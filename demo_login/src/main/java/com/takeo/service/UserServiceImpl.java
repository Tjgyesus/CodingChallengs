package com.takeo.service;

import com.takeo.dto.UserDto;
import com.takeo.entity.User;
import com.takeo.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepo userRepo;

    @Override
    public User registerUser(UserDto userDto) {
        User user = new User();
        user.setUsername(userDto.getUsername());
        user.setPassword(userDto.getPassword());
        User userSave = userRepo.save(user);
        return userSave;


    }

    @Override
    public User findByUsername(String username) {
        User userByUsername = userRepo.findUserByUsername(username);
        if(userByUsername!=null)
        return userByUsername;
        else {
            System.out.println("User not found");
        }
            return null;
    }

    @Override
    public List <User> getAllUsers() {
        List<User> userList = userRepo.findAll();

        return userList;
    }

    @Override
    public User login(String username, String password) {
        User checkUsername = findByUsername(username);
        if(checkUsername!=null) {
            System.out.println("username found");
            if (password.equals(checkUsername.getPassword()))
                System.out.println("Valid User");
            else
                System.out.println("Invalid User");

        }
        return checkUsername;
    }
}
