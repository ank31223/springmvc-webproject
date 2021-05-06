package com.io.spring.commonutils;

import java.util.UUID;

public class CommonUtils {
	
private static int i=1;
	
	private CommonUtils() {
		
	}

	public static int generateId() {
		return i++;
	}
	public static String getUUID() {
		return UUID.randomUUID().toString();
	}

}
