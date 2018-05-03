package org.zerock.domain;

import lombok.extern.log4j.Log4j;

@Log4j
public class PageMaker {
	
	private Criteria cri;
	private int totalCount;
	private double pagePerCount = 10;
	private int startPage,endPage;
	private boolean prev,next;
	
	public PageMaker(Criteria cri, int totalCount) {
		this.cri = cri;
		this.totalCount = totalCount;
		setUp();
	}
	
	public void setUp() {
		this.endPage = (int) (Math.ceil(cri.getPage() / 10.0) * 10);
		this.startPage = (endPage - 10) + 1;
		int tempEnd = (int) (Math.ceil(totalCount / pagePerCount));
		if(endPage > tempEnd) {
			this.endPage = tempEnd;
		}
		this.prev = startPage != 1 ? true:false;
		this.next = endPage * 10 < totalCount ? true:false;
	}
	
	public Criteria getCri() {
		return cri;
	}
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public double getPagePerCount() {
		return pagePerCount;
	}
	public void setPagePerCount(double pagePerCount) {
		this.pagePerCount = pagePerCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	@Override
	public String toString() {
		return "PageMaker [cri=" + cri + ", totalCount=" + totalCount + ", pagePerCount=" + pagePerCount
				+ ", startPage=" + startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next + "]";
	}
	
}
