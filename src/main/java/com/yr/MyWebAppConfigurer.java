package com.yr;

import com.yr.tool.MyInterceptor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


/**
 * @author: chaiyingibng
 * @create: 2019-09-03 18:37
 **/
@Configuration

public class MyWebAppConfigurer extends WebMvcConfigurerAdapter {



    Logger logger = LoggerFactory.getLogger(MyInterceptor.class);



    /**
     * 资源处理器
     *
     * @param registry
     */

    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        /*  logger.info("addResourceHandlers");*/
//        registry.addResourceHandler("/swagger-ui.html")
//                .addResourceLocations("classpath:/META-INF/resources/");
//        registry.addResourceHandler("/webjars/**")
//                .addResourceLocations("classpath:/META-INF/resources/webjars/");
        //将所有/static/** 访问都映射到classpath:/static/ 目录下
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
        super.addResourceHandlers(registry);


    }
}
