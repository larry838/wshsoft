package com.wshsoft.framework.config;

import com.baomidou.mybatisplus.core.config.GlobalConfig;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.baomidou.mybatisplus.extension.plugins.OptimisticLockerInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.wshsoft.framework.hander.AutoMetaObjectHandler;


@EnableTransactionManagement(proxyTargetClass = true)
@Configuration
@MapperScan("com.wshsoft.**.mapper*")
public class MybatisPlusConfig {

    /**
     * 分页插件，自动识别数据库类型
     */
     @Bean
     public PaginationInterceptor paginationInterceptor() {
         return new PaginationInterceptor();
     }

     @Bean
     public OptimisticLockerInterceptor optimisticLockerInterceptor() {
         return new OptimisticLockerInterceptor();
     }

    /**
     * 自动填充功能
     * @return
     */
    @Bean
    public GlobalConfig globalConfig() {
        GlobalConfig globalConfig = new GlobalConfig();
        globalConfig.setMetaObjectHandler(new AutoMetaObjectHandler());
        return globalConfig;
    }

}
