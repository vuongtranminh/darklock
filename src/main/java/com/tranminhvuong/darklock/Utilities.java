package com.tranminhvuong.darklock;

import com.github.slugify.Slugify;

public class Utilities {

	// set seo
	public static String seo(String text) {
		return new Slugify().slugify(text);
	}	
	
	public static void main(String[] args) {

	}

}
