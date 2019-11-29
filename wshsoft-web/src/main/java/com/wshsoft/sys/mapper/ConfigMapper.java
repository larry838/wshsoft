package com.wshsoft.sys.mapper;

import java.util.List;
import com.wshsoft.sys.domain.Config;
import com.wshsoft.system.domain.SysConfig;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * 参数配置 Mapper接口
 *
 * @author Carry xie
 * @date 2019-11-28
 */
 
public interface ConfigMapper extends BaseMapper<Config> {

    /**
     * 查询参数配置列表
     * 
     * @param config 参数配置
     * @return 参数配置集合
     */
    public List<Config> selectConfigList(Config config);
    
    /**
     * 根据键名查询参数配置信息
     * 
     * @param configKey 参数键名
     * @return 参数配置信息
     */
    public SysConfig checkConfigKeyUnique(String configKey);
}