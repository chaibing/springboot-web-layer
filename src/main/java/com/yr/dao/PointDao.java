package com.yr.dao;

import com.yr.model.Point;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: chaiyingibng
 * @create: 2019-09-17 15:46
 * 点位com.yr.dao.PointDao#selectByrankId(java.lang.String)
 **/
@Mapper
public interface PointDao {

    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "points", property = "points")
    })
    @Select("select id,points from point  where rank_id= #{id}")
    public Point selectByrankId(Integer id);


}
