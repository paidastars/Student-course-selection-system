package com.zsy.xsb.VO;

import lombok.Data;

import java.util.List;

@Data
public class XskcbVO<X> {
    private Integer code;
    private String msg;
    private Long count;
    private List<X> data;
}
