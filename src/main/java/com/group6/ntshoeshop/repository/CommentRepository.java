
package com.group6.ntshoeshop.repository;

import com.group6.ntshoeshop.entites.CommentEntity;
import com.group6.ntshoeshop.entites.ProductEntity;
import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends CrudRepository<CommentEntity, Integer>{
    CommentEntity findTop1ByOrderByCommentIdDesc();
    List<CommentEntity> findByProductOrderByCommentIdDesc(ProductEntity product);
    
}
