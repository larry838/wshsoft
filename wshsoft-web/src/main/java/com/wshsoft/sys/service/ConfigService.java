package com.wshsoft.sys.service;

import com.wshsoft.sys.domain.Config;

import java.util.List;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * 参数配置 Service接口
 *
 * @author Carry xie
 * @date 2019-11-28
 */
 
public interface ConfigService extends IService<Config> {

    /**
     * 查询参数配置列表
     * 
     * @param config 参数配置
     * @return 参数配置集合
     */
    public List<Config> selectConfigList(Config config);
    
    /**
     * 校验参数键名是否唯一
     * 
     * @param config 参数信息
     * @return 结果
     */
    public String checkConfigKeyUnique(Config config);
}