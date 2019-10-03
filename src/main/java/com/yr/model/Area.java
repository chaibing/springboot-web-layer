package com.yr.model;

import lombok.Data;

import java.io.Serializable;

/**
 * @author: chaiyingibng
 * @create: 2019-10-01 18:13
 * 县
 **/
@Data
public class Area  implements Serializable {

    private  String code;
    private String name;
    private  String perent_code;


}
