package com.wshsoft.sys.service.impl;

import java.util.List;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wshsoft.sys.mapper.ConfigMapper;
import com.wshsoft.common.constant.UserConstants;
import com.wshsoft.common.utils.StringUtils;
import com.wshsoft.sys.domain.Config;
import com.wshsoft.sys.service.ConfigService;
import com.wshsoft.system.domain.SysConfig;

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
    
    /**
     * 校验参数键名是否唯一
     * 
     * @param config 参数配置信息
     * @return 结果
     */
    @Override
    public String checkConfigKeyUnique(Config config)
    {
        Long configId = StringUtils.isNull(config.getConfigId()) ? -1L : config.getConfigId();
        SysConfig info = configMapper.checkConfigKeyUnique(config.getConfigKey());
        if (StringUtils.isNotNull(info) && info.getConfigId().longValue() != configId.longValue())
        {
            return UserConstants.CONFIG_KEY_NOT_UNIQUE;
        }
        return UserConstants.CONFIG_KEY_UNIQUE;
    }
}