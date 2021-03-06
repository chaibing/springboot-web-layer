package com.yr.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: chaiyingibng
 * @create: 2019-09-05 16:05
 * 级别
 **/
@Data
public class Level implements Serializable {


    private Integer id;
    private String code;

    @Override
    public String toString() {
        return "Level{" +
                "id=" + id +
                ", code='" + code + '\'' +
                '}';
    }
}
