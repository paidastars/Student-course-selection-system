package com.zsy.xsb.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.AllArgsConstructor;
import lombok.Data;

/**
 *
 * @TableName kcb
 */

@Data
public class Kcb implements Serializable {
    /**
     *
     */
    @TableId(type = IdType.AUTO)
    private Integer kch;

    /**
     *
     */
    private String kcm;

    /**
     *
     */
    private Object kxxq;

    /**
     *
     */
    private Integer xs;

    /**
     *
     */
    private Integer xf;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
