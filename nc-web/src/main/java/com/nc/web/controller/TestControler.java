package com.nc.web.controller;

import com.nc.model.demand.BillDemand;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xl on 2016/12/13.
 */
@Controller
public class TestControler {


    @RequestMapping("/menu")
    @ResponseBody
    public BillDemand menujsoin(HttpServletRequest request) {
        String name=request.getParameter("username");
        BillDemand billDemand=new BillDemand();
        List<TestBean> list=new ArrayList<TestBean>();
        TestBean testBean1=new TestBean();
        testBean1.setDoctypecode("deptdoc");
        testBean1.setDoctypename("部门档案");
        TestBean testBean2=new TestBean();
        testBean2.setDoctypecode("psndoc");
        testBean2.setDoctypename("人员档案");
        list.add(testBean1);
        list.add(testBean2);
        billDemand.put(list);
        return billDemand;
    }

    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest request) {
       String username= request.getParameter("username");
        ModelAndView result = new ModelAndView("/login");
        if(username!=null){
            result = new ModelAndView("redirect:/system/menu");
        }
//        ModelAndView result = new ModelAndView(new RedirectView(request.getContextPath() + "/"));
//        result = new ModelAndView("redirect:/system/menu.jsp");
        result.addObject("username", username);
        return result;
    }

    @RequestMapping("/system/menu")
    @ResponseBody
    public ModelAndView menu(HttpServletRequest request) {
        String name=request.getParameter("username");
        ModelAndView result = new ModelAndView("/system/menu");
        result.addObject("username", name);
        return result;
    }

    @RequestMapping("/system/listtable")
    @ResponseBody
    public ModelAndView listtable(HttpServletRequest request) {
        String doctype=request.getParameter("doctype");
        ModelAndView result = new ModelAndView("/system/listtable");
        result.addObject("doctype", doctype);
        return result;
    }
    @RequestMapping("/system/add")
    @ResponseBody
    public ModelAndView add(HttpServletRequest request) {
        String doctype=request.getParameter("doctype");
        ModelAndView result = new ModelAndView("/system/add");
        result.addObject("doctype", doctype);
        return result;
    }

    @RequestMapping("/listtable")
    @ResponseBody
    public BillDemand menujson(HttpServletRequest request) {
        String doctype=request.getParameter("doctype");
        BillDemand billDemand=new BillDemand();
        List<TestBean> list=new ArrayList<TestBean>();
        TestBean testBean1=new TestBean();
        testBean1.setDoctypecode("deptdoc");
        testBean1.setDoctypename("部门档案");
        TestBean testBean2=new TestBean();
        testBean2.setDoctypecode("psndoc");
        testBean2.setDoctypename("人员档案");
        list.add(testBean1);
        list.add(testBean2);
        billDemand.put(list);
        return billDemand;
    }

    private static class TestBean {
        String doctypecode;
        String doctypename;

        public String getDoctypecode() {
            return doctypecode;
        }

        public void setDoctypecode(String doctypecode) {
            this.doctypecode = doctypecode;
        }

        public String getDoctypename() {
            return doctypename;
        }

        public void setDoctypename(String doctypename) {
            this.doctypename = doctypename;
        }
    }
}
