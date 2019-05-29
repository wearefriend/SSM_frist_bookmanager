package com.wfu.dao;


import com.wfu.entity.book;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface bookdao {
    List<book> querybookall(int n);
    List<book> bookall();
   int insert(@Param("name")String name, @Param("num")String num);
   int delete(String name);

}
