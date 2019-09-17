package com.yr.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: chaiyingibng
 * @create: 2019-09-17 14:18
 * 点位表
 **/
@Data
public class Point implements Serializable {


    private Integer id;
    private Double points;

    @Override
    public String toString() {
        return "Point{" +
                "id=" + id +
                ", points=" + points +
                '}';
    }
}
