package com.zsy.xsb.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zsy.xsb.VO.CjbVO;
import com.zsy.xsb.VO.XskcbVO;
import com.zsy.xsb.entity.Kcb;
import com.zsy.xsb.entity.Xskcb;
import com.zsy.xsb.mapper.KcbMapper;
import com.zsy.xsb.mapper.XskcbMapper;
import com.zsy.xsb.service.XskcbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
@RequestMapping("/xskcb")
public class XskcbController {

    @Autowired
    private XskcbService xskcbService;
    @Autowired
    private XskcbMapper xskcbMapper;
    @Autowired
    private KcbMapper kcbMapper;

    @GetMapping("/table")
    public String index() {
        return "Xskcb";
    }

    @RequestMapping("/list")
    @ResponseBody
    public XskcbVO list(Integer page, Integer limit,HttpSession session){
        return xskcbService.findDate(page, limit,session);
    }

    /**
     * 退选
     */
    @RequestMapping("/del")
    @ResponseBody
    public int del(Integer xh,Integer kch){
        try {
            HashMap<String, Object> map = new HashMap<>();
            map.put("xh",xh);
            map.put("kch",kch);
            xskcbMapper.deleteByMap(map);
            Kcb kcb = kcbMapper.selectById(kch);
            Integer xs = kcb.getXs();
            kcb.setXs(xs+1);
            kcbMapper.updateById(kcb);
            return 0;
        }catch (Exception e){
            e.printStackTrace();
        }
        return 1;
    }
}
