package com.yr.service.impl;

import com.yr.model.Area;
import com.yr.model.City;
import com.yr.model.Province;
import com.yr.dao.AreaDao;
import com.yr.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author: chaiyingibng
 * @create: 2019-10-01 21:10
 **/


@Service
public class AreaServiceImpl implements AreaService {


    @Autowired
    private AreaDao areaDao;

    @Override
    @Transactional
    public List<Province> findall() {
        return areaDao.findall();
    }

    @Override
    public List<City> findcity(String id) {
        return areaDao.findcity(id);
    }

    @Override
    public List<Area> findarea(String cid) {
        return areaDao.findarea(cid);
    }
}
