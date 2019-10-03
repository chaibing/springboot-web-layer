package com.yr.controller;

import com.yr.model.ProxyTeacher;
import com.yr.model.Rank;
import com.yr.service.ProxYTeacherService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: chaiyingibng
 * @create: 2019-09-05 15:15
 **/

//@RestController
@Controller
@RequestMapping("/proxy")
@Slf4j
public class ProxyTeacherController {
    @Autowired
    private ProxYTeacherService ProxYTeacherService;

    @RequestMapping("/lists")
    @ResponseBody
    public Map<String, Object> findAll(int page, int limit, ProxyTeacher proxyTeacher) throws Exception {
        //查询mysql数据总条数
        List<ProxyTeacher> count = ProxYTeacherService.getProxyTeacherCount(proxyTeacher);
        List<ProxyTeacher> proxyTeachers = ProxYTeacherService.findAlladPageLimtit(page, limit);
        Map<String, Object> pts = new HashMap<String, Object>();
        pts.put("code", 0);
        pts.put("msg", "");
        pts.put("count", count.size());
        pts.put("data", proxyTeachers);
        return pts;
    }

    @RequestMapping("/addteacher")
    @ResponseBody
    public String addProxyTeacher(ProxyTeacher proxyTeacher) {
        System.out.println("获取数据" + "      " + proxyTeacher);
        ProxYTeacherService.addProxyTeacher(proxyTeacher);
        return "proxy/proxyTeacher";
    }


    //查询级别
    @RequestMapping("/xialakuang")
    @ResponseBody
    public List<Rank> findall() {
        List<Rank> findrank = ProxYTeacherService.findrank();
        return findrank;

    }

    //查询级别
    @RequestMapping("/list")
    @ResponseBody
    public List<ProxyTeacher> findAllProxyteacher() {
        List<ProxyTeacher> proxyTeacher = ProxYTeacherService.findAllProxyteacher();
        return proxyTeacher;

    }
    /**/


    //查询级别
    @RequestMapping("/selectidcardByid")
    @ResponseBody
    public ProxyTeacher selectidcardByid(String cid) {
        ProxyTeacher proxyTeacher = ProxYTeacherService.selectidcardByid(cid);
        return proxyTeacher;

    }
}
