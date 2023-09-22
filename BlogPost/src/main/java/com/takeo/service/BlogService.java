package com.takeo.service;

import com.takeo.entity.BlogPost;

import java.util.List;

public interface BlogService {
    public boolean saveBlog(BlogPost blogPost);
    public List<BlogPost> getAllBlogs();
    public BlogPost getBlogById(int id);
    public BlogPost getBlogByTitle(String title);
    public boolean editBlog(BlogPost st);
    public boolean deleteBlog(int id);
}
