package com.takeo.service;

import com.takeo.entity.BlogPost;
import com.takeo.repo.BlogRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BlogServiceImpl implements BlogService {
    @Autowired
    private BlogRepo blogRepo;
    @Override
    public boolean saveBlog(BlogPost blogPost) {
        BlogPost blogSave = blogRepo.save(blogPost);
        boolean flag = false;
        if(blogSave != null){
            flag = true;
            return flag;
        }
        return flag;
    }

    @Override
    public List<BlogPost> getAllBlogs() {
        List<BlogPost> blogRecords = blogRepo.findAll();
        return blogRecords;
    }

    @Override
    public BlogPost getBlogById(int id) {
        Optional<BlogPost> blogId = blogRepo.findById(id);
        BlogPost blogPost = blogId.get();
        return blogPost;
    }

    @Override
    public BlogPost getBlogByTitle(String title) {
        Optional<BlogPost> blogTitle = blogRepo.findByTitle(title);
        BlogPost blogPost = blogTitle.get();
        return blogPost;
    }

    @Override
    public boolean editBlog(BlogPost st) {
        return saveBlog(st);
    }

    @Override
    public boolean deleteBlog(int id) {
        BlogPost blogPost = getBlogById(id);
        boolean flag = false;
        if(blogPost != null){
            blogRepo.delete(blogPost);
            flag = true;
        }
        else flag=false;
        return flag;
    }
}
