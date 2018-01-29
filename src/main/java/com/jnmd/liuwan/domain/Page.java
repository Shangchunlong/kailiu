package com.jnmd.liuwan.domain;

public class Page {
	private int count;        //总数
	private int pageSize;     //每页条数
	private int currentPage;  //总条数
	private int prevPage;     //上一页
	private int nextPage;	  //下一页
	private int pageCount;	  //总页数
	private int startRecord;  //起始

	public Page( String currentPage,int count, int pageSize) {
		initCurrentPage(currentPage);
		initPrevPage();
		this.count = count;
		this.pageSize = pageSize;
		initPageCount();
		initNextPage();
		initStartRecord();
	}

	private void initStartRecord() {
		
		startRecord=(currentPage-1)*pageSize;
		
	}

	private void initNextPage() {
		if (currentPage==pageCount) {
			nextPage=pageCount;
		}else {
			nextPage=currentPage+1;
		}
		
	}

	private void initPageCount() {
		pageCount=count/pageSize;
		if (count%pageSize!=0) {
			pageCount++;
		}
		
	}

	private void initPrevPage() {
        if (this.currentPage==1) {
			this.prevPage=1;
		}else {
			this.prevPage=this.currentPage-1;
		}		
	}

	private void initCurrentPage(String currentPage) {
		if (currentPage==null || currentPage.trim().equals("")) {
			currentPage="1";
		}
		this.currentPage=Integer.parseInt(currentPage);
	}

	public int getCount() {
		return count;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public int getStartRecord() {
		return startRecord;
	}

}
