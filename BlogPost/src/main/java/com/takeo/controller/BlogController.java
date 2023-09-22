package com.takeo.controller;

import com.takeo.entity.BlogPost;
import com.takeo.service.BlogServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BlogController {
    @Autowired
    private BlogServiceImpl blogService;
        @RequestMapping("/")
        public String Welcome(){
            return "home";
        }

    @RequestMapping("/add")
    public String loadForm(Model model){
        BlogPost blogPost = new BlogPost();
        model.addAttribute("blogPost", blogPost);
        return "blogPost";
    }
    @RequestMapping("/inserted")
    public String handleBlogForm(@ModelAttribute("blogPost") BlogPost blogPost, Model model){
        boolean saveBlog = blogService.saveBlog(blogPost);
        String  msg = "";
        if(saveBlog)
            msg = "Data Added";
        else msg = "Data NOT Added";
        model.addAttribute("msg", msg);
        return "blogPost";
    }
    @RequestMapping("/display")
    public String display(@RequestParam("id") int id, Model model){
        BlogPost blogPost = blogService.getBlogById(id);
        model.addAttribute("blogPost", blogPost);
        return "display";
    }

    @RequestMapping("/viewAll")
    public String viewAll(BlogPost blogPost, Model model){
        List<BlogPost> allBlog = blogService.getAllBlogs();
        model.addAttribute("blogPost", allBlog);
        return "view";
    }
    @RequestMapping("/deleteBlog")
    public String delete(@RequestParam("id") int id){
        boolean flag = blogService.deleteBlog(id);
        if (flag)
            return "redirect:/viewAll";
        else
            return "redirect:/viewAll";
    }
    @RequestMapping("/editBlog")
    public String edit(@RequestParam("id") int id, Model model){
        BlogPost blogPost = blogService.getBlogById(id);
        model.addAttribute("blogPost", blogPost);
        return "edit";
    }

    @RequestMapping("/update")
    public String updateBlog(BlogPost blogPost){
        blogService.editBlog(blogPost);
        return "redirect:/viewAll";
    }
}
