package com.yr.service;

import com.yr.model.Area;
import com.yr.model.City;
import com.yr.model.Province;

import java.util.List;

/**
 * @author: chaiyingibng
 * @create: 2019-10-01 21:09
 **/
public interface AreaService {
    public List<Province> findall();

    public List<City> findcity(String id);

    public List<Area> findarea(String cid);
}
