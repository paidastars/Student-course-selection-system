package com.zsy.xsb.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 *
 * </p>
 *
 * @author testjava
 * @since 2021-10-28
 */
@Data
//@EqualsAndHashCode(callSuper = false)
//@Accessors(chain = true)

public class Xsb implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "xh")
    private Integer xh;

    private String xm;

    private String mm;

    private String xb;

    @TableField(fill = FieldFill.INSERT)
    private Date cssj;

    private Integer zyId;

    private Integer zxf;

    private String bz;

    private String zp;


}
