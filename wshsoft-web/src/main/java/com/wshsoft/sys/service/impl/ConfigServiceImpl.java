package com.wshsoft.sys.service.impl;

import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wshsoft.sys.mapper.ConfigMapper;
import com.wshsoft.sys.domain.Config;
import com.wshsoft.sys.service.ConfigService;

/**
 * 参数配置 Service业务层实现
 *
 * @author Carry xie
 * @date 2019-11-28
 */
 
@Service
public class ConfigServiceImpl extends ServiceImpl<ConfigMapper, Config> implements ConfigService {
   
    @Autowired
    private ConfigMapper configMapper;

    /**
     * 查询参数配置列表
     * 
     * @param config 参数配置
     * @return 参数配置
     */
    @Override
    public List<Config> selectConfigList(Config config) {
        return configMapper.selectConfigList(config);
    }
}