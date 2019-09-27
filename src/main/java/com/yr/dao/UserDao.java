package com.yr.dao;

import com.yr.model.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


@Mapper
public interface UserDao {

    @Select("select * from user where username=#{username} and password=#{password}")
    public User getUser(String username, String password);

    public int changePwd(String username, String oldPassword, String repassword);

    public int uploadPic(String picUrl, String username);

    public User editUser(User user);

    @Select("select * from user where username=#{username}")

    public User getUserName(String username);

    public int regUser(String username, String password);

    @Insert("INSERT INTO user(username,password) VALUES (#{username},#{password})")
    @Options(useGeneratedKeys = true, keyColumn = "id")
    public Integer register(String username, String password);
}
