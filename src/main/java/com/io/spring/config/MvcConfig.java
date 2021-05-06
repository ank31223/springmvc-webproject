package com.io.spring.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.io.spring.service","com.io.spring.dao","com.io.spring.dto","com.io.spring.controller"}  )
public class MvcConfig implements WebMvcConfigurer{
	
	@Bean
    public ViewResolver getViewResolver1() {
        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");
        return resolver;
    }
	
	
	

//	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
//        configurer.enable();
//    }
	

}
