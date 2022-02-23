package com.spr.control;

import com.spr.don.Student;
import com.spr.reson.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@RestController
public class StudentController {

    @Autowired
    StudentRepository std;
    @RequestMapping("/")
    public String viewHomePage() {
        return "date";

    }


    @RequestMapping("/save")
    @ResponseBody
    public String save(Student student) {
        std.save(student);
        return "succsufl";
    }
    @RequestMapping("/showdata")
    public ModelAndView showdata(){
        ModelAndView mv=new ModelAndView();
      List<Student> datalst=std.findAll();

      mv.addObject("data",datalst);
        mv.setViewName("det");
        return mv;
    }



}