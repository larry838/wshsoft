package com.wshsoft.framework.config;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.wshsoft.framework.interceptor.impl.SameUrlDataInterceptor;

@Configuration
public class WebMvcConfig  extends WebMvcConfigurerAdapter {

	/**
	 * 
	 * 日志拦截器
	 */
	@Autowired
	
    /**
     * 首页地址
     */
    @Value("${shiro.user.indexUrl}")
    private String indexUrl;
	
    @Autowired
    private SameUrlDataInterceptor sameUrlDataInterceptor;

    /**
     * 默认首页的设置，当输入域名是可以自动跳转到默认指定的网页
     */
    @Override
    public void addViewControllers(ViewControllerRegistry registry)
    {
        registry.addViewController("/").setViewName("forward:" + indexUrl);
    }
    
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		 registry.addInterceptor(sameUrlDataInterceptor).addPathPatterns("/**/add");
	}

	// 重写添加拦截器方法并添加配置拦截器

	
/*
    @Override
	public void addInterceptors(InterceptorRegistry registry) {

		List excludePatternsList = new ArrayList<>();
		// 静态资源放开不拦截

		excludePatternsList.add("/static/**");

		excludePatternsList.add("/favicon.ico");

		excludePatternsList.add("*.css");

		excludePatternsList.add("*.js");

		excludePatternsList.add("*.jpg");

		excludePatternsList.add("*.png");

		// 日志拦截器
		registry.addInterceptor().addPathPatterns("/**").excludePathPatterns(excludePatternsList);

	}
	*/
	
    /**
     *  fastjson序列化
     *
     * */
    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        super.configureMessageConverters(converters);
        List<MediaType> supportedMediaTypes = new ArrayList<>();
        supportedMediaTypes.add(MediaType.APPLICATION_JSON_UTF8);
        FastJsonHttpMessageConverter fastJsonHttpMessageConverter = new FastJsonHttpMessageConverter();
        fastJsonHttpMessageConverter.setSupportedMediaTypes(supportedMediaTypes);
        FastJsonConfig fastJsonConfig = new FastJsonConfig();
        fastJsonConfig.setDateFormat("yyyy-MM-dd HH:mm:ss");    // 自定义时间格式
        fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat,SerializerFeature.DisableCircularReferenceDetect,
                SerializerFeature.WriteNullNumberAsZero,SerializerFeature.WriteNullBooleanAsFalse,SerializerFeature.WriteMapNullValue,
                SerializerFeature.WriteNullStringAsEmpty,SerializerFeature.WriteNullListAsEmpty,SerializerFeature.WriteDateUseDateFormat,
                SerializerFeature.BrowserCompatible,SerializerFeature.WriteNonStringKeyAsString);
        converters.add(fastJsonHttpMessageConverter);
        converters.add(responseBodyConverter());       
    }
 
    @Bean
    public HttpMessageConverter<String> responseBodyConverter() {
        StringHttpMessageConverter converter = new StringHttpMessageConverter(
                Charset.forName("UTF-8"));
        return converter;
    }
    
	/**
	 * 
	 * 跨域配置
	 * 
	 */
	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**");
	}

	@Override
	public void configureContentNegotiation(ContentNegotiationConfigurer configurer) {
		configurer.mediaType("json", MediaType.APPLICATION_JSON);
		configurer.mediaType("xml", MediaType.APPLICATION_XML);
	}

	/**
	 * 
	 * 配置静态资源映射
	 * 
	 */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
	}

}
