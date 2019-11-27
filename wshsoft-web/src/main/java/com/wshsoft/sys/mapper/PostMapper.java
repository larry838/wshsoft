package com.wshsoft.sys.mapper;

import java.util.List;
import com.wshsoft.sys.domain.Post;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 岗位信息 Mapper接口
 *
 * @author Carry xie
 * @date 2019-11-25
 */
 
public interface PostMapper extends BaseMapper<Post> {

    /**
     * 查询岗位信息列表
     * 
     * @param post 岗位信息
     * @return 岗位信息集合
     */
    public List<Post> selectPostList(Post post);
}