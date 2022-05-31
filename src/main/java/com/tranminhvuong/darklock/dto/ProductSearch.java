package com.tranminhvuong.darklock.dto;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductSearch {

	private String seo;
	private String productSeo;
	private String searchText;
	private String minPrice;
	private String maxPrice;

	public Integer offset = null;
	public Integer count = null;

	public void buildPaging(HttpServletRequest request) {
		if (!StringUtils.isEmpty(request.getParameter("offset"))) {
			this.offset = Integer.parseInt(request.getParameter("offset"));
		} else {
			this.offset = 0;
		}
	}

}
