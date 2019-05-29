package com.wfu.service;

import com.wfu.dao.bookdao;
import com.wfu.entity.book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class bookservice {
    @Autowired
    private bookdao dao;

    public List<book> getallbook(int n){
      return  dao.querybookall(n);
    }
    public List<book> getallbook2(){
        return  dao.bookall();
    }
    public int insert(String name,String num){
        return dao.insert(name,num);
    }
    public int delete(String name){
        return dao.delete(name);
    }





}
