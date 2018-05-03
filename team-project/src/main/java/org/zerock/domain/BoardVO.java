package org.zerock.domain;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import lombok.Data;

@Data
public class BoardVO {
	
	private Integer bno;
	private String writer, title, content;
	private Date regdate,updatedate;

	public BoardVO() {
	}
	
	public BoardVO(String writer, String title, String content) {
		this.writer = writer;
		this.title = title;
		this.content = content;
	}
	
}
