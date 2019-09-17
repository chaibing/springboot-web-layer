package com.yr.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: chaiyingibng
 * @create: 2019-09-17 11:10
 * 职位
 **/

@Data
public class Rank implements Serializable {
    private Integer id;
    private String name;
    //点位   rank   point one  to  one
    private Point point;



}
