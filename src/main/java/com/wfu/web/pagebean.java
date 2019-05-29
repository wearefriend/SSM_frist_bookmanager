package com.wfu.web;

import com.wfu.entity.book;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class pagebean {
  private int current_page; //当前页
  private  int pagesize; //每页记录数
  private int all_pagenumber;//总页数
  private List<book> b;
    private int totalrecord;//总行数
    private  int page_begain;//每页起始数

    public pagebean() {
    }

    public pagebean(int current_page, int pagesize, int all_pagenumber, List<book> b, int totalrecord, int page_begain) {
        this.current_page = current_page;
        this.pagesize = pagesize;
        this.all_pagenumber = all_pagenumber;
        this.b = b;
        this.totalrecord = totalrecord;
        this.page_begain = page_begain;
    }

    public int getCurrent_page() {
        return current_page;
    }

    public void setCurrent_page(int current_page) {
        this.current_page = current_page;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getAll_pagenumber() {
        return (totalrecord/pagesize==0)?totalrecord/pagesize:totalrecord/pagesize+1;
    }

    public void setAll_pagenumber(int all_pagenumber) {
        this.all_pagenumber = all_pagenumber;
    }

    public List<book> getB() {
        return b;
    }

    public void setB(List<book> b) {
        this.b = b;
    }

    public int getTotalrecord() {
        return totalrecord;
    }

    public void setTotalrecord(int totalrecord) {
        this.totalrecord = totalrecord;
    }

    public int getPage_begain() {
        return (current_page-1)*pagesize+1;
    }

    public void setPage_begain(int page_begain) {
        this.page_begain = page_begain;
    }
}
