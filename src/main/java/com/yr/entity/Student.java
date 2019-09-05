package com.yr.entity;

import lombok.Data;

import javax.annotation.sql.DataSourceDefinition;
import java.sql.Date;

/**
 * @author: chaiyingibng
 * @create: 2019-09-05 15:39
 **/
@Data
public class Student {
    private Integer id;
    private String number;
    private String name;
    private String age;
    private String sex;
    private String idcard;
    private Date birthday;
    private String area_name;//出生地
    private String join_date;
    private Double tuition;//总学费
    private Integer stu_teacher_id; //推荐老师
    private String stu_education;
    private String stu_major;
    private String diploma_number;
    private String degree;
    private String degree_number;
    private Integer suition_state;


}
