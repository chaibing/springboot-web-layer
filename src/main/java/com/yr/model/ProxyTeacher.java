package com.yr.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: chaiyingibng
 * @create: 2019-09-05 15:35
 **/
@Data
public class ProxyTeacher  implements Serializable
{
    private Integer id;
    private String number; //年龄
    private String name;
    private String sex;
    private String idcard;//身份证号
    private String area_code;//地址
    private String level_code;                              //级别
    private String introducer_name;
    private String join_date;//加入时间
    private String qq;
    private String vx;
    private String phone;//联系电话

        public ProxyTeacher(Integer id, String number, String name) {
            this.id = id;
            this.number = number;
            this.name = name;
        }

    private String leader_id;                                //上级姓名
    private String del; //状态

    public ProxyTeacher() {
    }
}
