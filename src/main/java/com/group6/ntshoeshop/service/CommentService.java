
package com.group6.ntshoeshop.service;

import com.group6.ntshoeshop.entites.CommentEntity;
import com.group6.ntshoeshop.entites.ProductEntity;
import com.group6.ntshoeshop.repository.CommentRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {
    
    @Autowired
    CommentRepository commentService;
    
    public void saveComment(CommentEntity comment){
        commentService.save(comment);
    }
    
    //get comment order by commentId desc
    public CommentEntity getCommentDesc(){
        return commentService.findTop1ByOrderByCommentIdDesc();
    }
    
    //get all comment by product
    public List<CommentEntity> getAllCommentByProduct(ProductEntity product){
        List<CommentEntity> listComments = commentService.findByProductOrderByCommentIdDesc(product);
        for (CommentEntity comment : listComments) {
            System.out.println("  dsdsd  "+comment.getEmail());
        }
        return listComments;
    }
}
