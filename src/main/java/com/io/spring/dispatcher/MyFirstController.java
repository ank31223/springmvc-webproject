package com.io.spring.dispatcher;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MyFirstController extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
//		System.out.println("in getRootConfigClasses");

		return null ;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stubSystem.out.println("in myfirstController getrootConfigClasses");
		System.out.println("in getServletConfigClasses");

		return new Class[] {com.io.spring.config.MvcConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		System.out.println("in myfirstController");
		
		System.out.print("ankit....................................................");
		return new String[] {"/"};
	}

}


