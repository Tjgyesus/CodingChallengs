package com.takeo.repo;

import com.takeo.entity.BlogPost;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BlogRepo extends JpaRepository<BlogPost, Integer> {
    Optional<BlogPost> findByTitle(String email);
}
