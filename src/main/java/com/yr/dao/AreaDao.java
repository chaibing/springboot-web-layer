package com.yr.dao;

import com.yr.model.Area;
import com.yr.model.City;
import com.yr.model.Province;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: chaiyingibng
 * @create: 2019-10-01 21:08
 **/
@Mapper
public interface AreaDao {

    @Select("select    code,name   from  area  where perent_code=0;")
    public List<Province> findall();

    @Select("select   code,name  from  area where perent_code=#{id}")

    @Results({
            @Result(property = "code", column = "code"),
            @Result(property = "name", column = "name")
    })
    public List<City> findcity(String id);


    @Select("select     code,name   from  area where perent_code=#{cid}")
    @Results({
            @Result(property = "code", column = "code"),
            @Result(property = "name", column = "name")
    })
    public List<Area> findarea(String cid);
}
