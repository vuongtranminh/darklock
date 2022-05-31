package com.tranminhvuong.darklock.dto;

import javax.servlet.http.HttpServletRequest;

import org.springframework.util.StringUtils;

public class BrandSearch {

	private String seo;
	private String brandSeo;
	
	public Integer offset = null;
	public Integer count = null;

	public void buildPaging(HttpServletRequest request) {
		if (!StringUtils.isEmpty(request.getParameter("offset"))) {
			this.offset = Integer.parseInt(request.getParameter("offset"));
		} else {
			this.offset = 0;
		}
	}

	public Integer getOffset() {
		return offset;
	}

	public void setOffset(Integer offset) {
		this.offset = offset;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public String getBrandSeo() {
		return brandSeo;
	}

	public void setBrandSeo(String brandSeo) {
		this.brandSeo = brandSeo;
	}
}
