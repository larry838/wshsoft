package com.wshsoft.framework.hander;

import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.wshsoft.common.utils.ShiroUtils;

import java.util.Date;
import java.util.Objects;

/**
 * 处理新增和更新的公共字段自动填充，配合BaseEntity和MyBatisPlusConfig使用
 * 
 */
@Component
public class AutoMetaObjectHandler implements MetaObjectHandler {
    
	/**
     * 新增数据执行
     * @param metaObject
     */
    public void insertFill(MetaObject metaObject) {
    	Date date=new Date();
        setFieldValByName("updateTime", date, metaObject);
        setFieldValByName("createTime", date, metaObject);
        setFieldValByName("createBy",ShiroUtils.getLoginName(),metaObject);
        
        
    }
    
    /**
     * 更新数据执行
     * @param metaObject
     */
    public void updateFill(MetaObject metaObject) {
        setFieldValByName("updateTime", new Date(), metaObject);
      
          setFieldValByName("updateBy",ShiroUtils.getLoginName(),metaObject);

    }
}