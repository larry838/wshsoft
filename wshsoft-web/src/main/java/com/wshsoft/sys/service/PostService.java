package com.wshsoft.sys.service;

import com.wshsoft.sys.domain.Post;
import java.util.List;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 岗位信息 Service接口
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
public interface PostService extends IService<Post> {

    /**
     * 查询岗位信息列表
     * 
     * @param post 岗位信息
     * @return 岗位信息集合
     */
    public List<Post> selectPostList(Post post);
}