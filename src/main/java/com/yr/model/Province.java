package com.yr.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: chaiyingibng
 * @create: 2019-10-01 18:12
 * 省
 **/
@Data
public class Province implements Serializable {
    private String code;
    private String name;
    private String perent_code;
}
