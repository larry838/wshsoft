package com.wshsoft.framework.config.properties;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;

/**
 * redis属性配置文件
 *
 * @author Carry xie
 * @version 1.0
 * 
 * @date 2018/4/16 16:26
 * @since 1.0
 */
@Configuration
@ConfigurationProperties(prefix = "spring.redis")
@Data
@EqualsAndHashCode(callSuper = false)
@Order(-1)
public class RedisProperties {
    private Integer database;
    private String host;
    private Integer port;
    private String password;
    private Integer timeout;
    /**
     * 默认30天 = 2592000s
     */
    private Integer expire = 2592000;

}
