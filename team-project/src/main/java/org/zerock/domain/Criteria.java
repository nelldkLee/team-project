package org.zerock.domain;

import java.util.Arrays;

import lombok.Getter;
import lombok.Setter;

@Getter

public class Criteria {
	
	private int page;
	private String type,keyword;
	

	public Criteria() {
		this.page = 1;
	}
	
	public Criteria(int page) {
		this.page = page;
	}
	
	public int getSkip() {
		return (page - 1) * 10;
	}
	
	public String[] getArr() {
		return type.split("-");
	}


	public void setPage(int page) {
		this.page = page;
		if(page <= 0) {
			this.page = 1;
		}
	}

	public void setType(String type) {
		this.type = type;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", type=" + type + ", keyword=" + keyword + "]";
	}
}
