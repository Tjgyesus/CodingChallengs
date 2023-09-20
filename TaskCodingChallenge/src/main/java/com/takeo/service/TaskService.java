package com.takeo.service;

import com.takeo.entity.Task;
import com.takeo.repo.TaskRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TaskService {

    @Autowired
    private TaskRepo taskRepo;


    public boolean saveTask(Task task){
        Task taskSave = taskRepo.save(task);

        if (taskSave != null)
            return true;
        else
            return false;
    }
    public List<Task> getAllTask() {
        List<Task> taskRecords = taskRepo.findAll();
        return taskRecords;
    }

    public Task getTaskById(int id) {
        Optional<Task> taskId = taskRepo.findById(id);
        Task task = taskId.get();
        return task;
    }
    public boolean deleteTask(int id) {
        Task task = getTaskById(id);
        boolean flag = false;
        if (task != null) {
            taskRepo.delete(task);
            flag = true;
        }
        else
            flag = false;
        return flag;
    }
    public boolean updateTask(Task st){

            return saveTask(st);
    }
}
