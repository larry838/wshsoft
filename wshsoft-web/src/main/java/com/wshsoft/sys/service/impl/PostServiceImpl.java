package com.wshsoft.sys.service.impl;

import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wshsoft.sys.mapper.PostMapper;
import com.wshsoft.sys.domain.Post;
import com.wshsoft.sys.service.PostService;

/**
 * 岗位信息 Service业务层实现
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
@Service
public class PostServiceImpl extends ServiceImpl<PostMapper, Post> implements PostService {
   
    @Autowired
    private PostMapper postMapper;

    /**
     * 查询岗位信息列表
     * 
     * @param post 岗位信息
     * @return 岗位信息
     */
    @Override
    public List<Post> selectPostList(Post post) {
        return postMapper.selectPostList(post);
    }
}