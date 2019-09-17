package com.yr.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.yr.model.ProxyTeacher;
import com.yr.model.Rank;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.apache.ibatis.type.JdbcType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface ProxyTeacherDao extends BaseMapper<ProxyTeacher> {
    @Select("SELECT * FROM proxy_teacher")
    @Results(
            value = {
                    @Result(column = "id", property = "id", javaType = Integer.class),
                    @Result(column = "number", property = "number", javaType = String.class),
                    @Result(column = "name", property = "name", javaType = String.class),
                    @Result(column = "sex", property = "sex", javaType = String.class),
                    @Result(column = "idcard", property = "idcard", javaType = String.class)
            }
    )
    public List<ProxyTeacher> getProxyTeacherCount(ProxyTeacher proxyTeacher);


    @Select("select  *  from proxy_teacher limit  #{start},#{limit}")
    @Results(
            value = {
                    @Result(column = "id", property = "id", javaType = Integer.class),
                    @Result(column = "number", property = "number", javaType = String.class),
                    @Result(column = "name", property = "name", javaType = String.class),
                    @Result(column = "sex", property = "sex", javaType = String.class),
                    @Result(column = "idcard", property = "idcard", javaType = String.class),
                    @Result(column = "area_code", property = "area_code", javaType = String.class),
                    @Result(column = "join_date", property = "join_date", javaType = String.class),
                    @Result(column = "qq", property = "qq", javaType = String.class),
                    @Result(column = "wx", property = "wx", javaType = String.class),
                    @Result(column = "phone", property = "phone", javaType = String.class),
            }
    )
    public List<ProxyTeacher> findAlladPageLimtit(int start, int limit);

    //    @Select(" SELECT r.*,p.* FROM rank r,point p where r.id=p.rank_id")
    @Select("SELECT * FROM rank")
    @Results({
            @Result(column = "id", property = "id", javaType = Integer.class),
            @Result(column = "name", property = "name", javaType = String.class),
            @Result(column = "id", property = "point", one = @One(select = "com.yr.dao.PointDao.selectByrankId", fetchType = FetchType.EAGER))
    })

    public List<Rank> findrank();
    @Insert("")
    public void addProxyTeacher(ProxyTeacher proxyTeacher);
}
