package com.tranminhvuong.darklock.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.tranminhvuong.darklock.services.Constants;

@Configuration
public class MVCConfiguration implements WebMvcConfigurer, Constants{
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("classpath:/images/");
		registry.addResourceHandler("/fontawesome-free-5.15.3-web/**").addResourceLocations("classpath:/fontawesome-free-5.15.3-web/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("classpath:/fonts/");
		registry.addResourceHandler("/alertify-js/**").addResourceLocations("classpath:/alertify-js/");
		registry.addResourceHandler("/assets/**").addResourceLocations("classpath:/assets/");
		registry.addResourceHandler("/upload/**").addResourceLocations("file:/" + ROOT_UPLOAD_PATH);
	}

	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/"); // tham chiếu xuống file chứa views
		resolver.setSuffix(".jsp");	// đuôi tệp tin đọc phải là file .jsp
		return resolver;
	}
}
