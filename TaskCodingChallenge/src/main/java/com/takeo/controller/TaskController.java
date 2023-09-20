package com.takeo.controller;

import com.takeo.entity.Task;
import com.takeo.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class TaskController {

    @Autowired
    private TaskService taskService;

@GetMapping(value = "/")
public String CreateTask(Model model){
    Task task = new Task();
    model.addAttribute("task", task);
    return "create-task";
    }

    @PostMapping(value = "/task")
    public String handleForm(@ModelAttribute Task task)
    {
        taskService.saveTask(task);
        return "display";
    }

    @GetMapping("/viewAll")
    public String viewAll(Task task, Model model){
        List<Task> allTask = taskService.getAllTask();
        model.addAttribute("task", allTask);
        return "view-task";
    }
    @GetMapping("/deleteTask")
    public String delete(@RequestParam("id") int id){
        boolean flag = taskService.deleteTask(id);
        if (flag)
            return "redirect:/viewAll";
        else
            return "redirect:/viewAll";
    }

    @GetMapping("/editTask")
    public String edit(@RequestParam("id") int id, Model model){
        Task task = taskService.getTaskById(id);
        model.addAttribute("task", task);
        return "edit-task";
    }
    @RequestMapping("/update")
    public String update(Task task){
        taskService.updateTask(task);
        return "redirect:/viewAll";
    }

}
