package com.zsy.xsb.VO;

import lombok.Data;

import java.util.Map;

@Data
public class UploadVO {
    private Integer code;
    private String msg;
    private Map<String,String> data;
}
