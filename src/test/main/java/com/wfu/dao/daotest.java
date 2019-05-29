package com.wfu.dao;
import com.wfu.basetest;
import com.wfu.entity.book;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class daotest extends basetest{
    @Autowired
    private bookdao daso;
    @Test
public void testinsert(){
    String name="sfd";
    String num="sdf";
    int b=0;
   // book os=new book(name,num);
//int i=daso.insert(name,num);
       // int i=daso.delete(name);
        for (int i=122;i<200;i++){
            String c=String.valueOf(i);
             b=daso.insert(c,c);
             b=b+1;
        }
        System.out.println(b);
     //   System.out.println(i);
       // List<book> a=  daso.querybookall();

        //System.out.println(i);
    }
    @Test
    public void  listtest(){
      int n=3;
        List<book> a=  daso.querybookall(n);
        for (book books:
             a) {
            System.out.println(books.toString());

        }

    }
}
