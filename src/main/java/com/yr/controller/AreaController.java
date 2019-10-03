package com.yr.controller;

import com.yr.model.Area;
import com.yr.model.City;
import com.yr.model.Province;
import com.yr.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author: chaiyingibng
 * @create: 2019-10-01 21:02
 **/

@Controller
@RequestMapping("/area")
public class AreaController {


    @Autowired
    private AreaService areaService;

        //省
    @RequestMapping("/Province")
    @ResponseBody
    public List<Province> findAll() {

        return areaService.findall();

    }

    @RequestMapping("/city")
    @ResponseBody
    public List<City> findcity(String cid) {
        List<City> findcity = areaService.findcity(cid);
        return findcity;

    }
    @RequestMapping("/area1")
    @ResponseBody
    public List<Area> findarea(String aid) {
        System.out.println("拿到的前端数据"+"          "+aid);

        List<Area> areas = areaService.findarea(aid);
        return areas;

    }
}
