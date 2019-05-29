package com.wfu.web;

import com.wfu.entity.book;
import com.wfu.service.bookservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/book")
public class bookcontroller {
    @Autowired
    private bookservice bos;
    @Autowired
    private  pagebean page;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public  String list(Model model,@RequestParam("n") String n){

      int ns=Integer.parseInt(n);

if (n!=null){
    int current_page=Integer.parseInt(n);
    page.setCurrent_page(current_page);
}else {
    page.setCurrent_page(1);
}
List<book> list=bos.getallbook(page.getPage_begain());
        List<book> list2=bos.getallbook2();
        page.setPagesize(5);
        page.setB(list);
        page.setTotalrecord(list2.size());
        model.addAttribute("pagebeans",page);

        return "list2";
    }
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public  String addbook(@RequestParam("name")String name, @RequestParam("num")String num, Model model){
int i=bos.insert(name,num);
model.addAttribute("i",i);
return  "success";
    }
    @RequestMapping(value = "/del",method = RequestMethod.GET)
    public String delete(@RequestParam("name") String name,Model model){
        int i=bos.delete(name);
        model.addAttribute("i",i);
        return "del";
    }
}
