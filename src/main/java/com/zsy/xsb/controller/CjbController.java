package com.zsy.xsb.controller;

import com.zsy.xsb.VO.CjbCharVO;
import com.zsy.xsb.VO.CjbVO;
import com.zsy.xsb.VO.ZybVO;
import com.zsy.xsb.entity.Cjb;
import com.zsy.xsb.entity.Zyb;
import com.zsy.xsb.mapper.CjbMapper;
import com.zsy.xsb.service.CjbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.util.Map;

@Controller
@RequestMapping("/cjb")
public class CjbController {

    @Autowired
    CjbService cjbService;

    @Autowired
    CjbMapper cjbMapper;

    @RequestMapping("/list")
    @ResponseBody
    public CjbVO list(Integer page, Integer limit){
        return cjbService.findDate(page, limit);
    }

    @GetMapping("/jia")
    public String xiuGai() {
        return "tjcj";
    }

    /**
     * 添加成绩
     */

    @RequestMapping("/insert")
    public String insert(HttpServletRequest request){
        Cjb cjb=new Cjb();
        cjb.setXh(Integer.valueOf(request.getParameter("xh")));
        cjb.setKch(Integer.valueOf(request.getParameter("kch")));
        cjb.setCj(Integer.valueOf(request.getParameter("cj")));
        cjbMapper.insert(cjb);
        return "redirect:/cjb/jia";
    }


    //删除用户
    @RequestMapping("/delcjb")
    @ResponseBody
    public int delUser(Cjb cjb){
        System.out.println(cjb);
//        try {
//            cjbMapper.deleteByMap();
//            return 0;
//        }catch (Exception e){
//            e.printStackTrace();
//        }
        return 1;
    }

    /**
     * 修改用户
     */

    @RequestMapping("/update")
    public String modiAdmin(Cjb cjb){
        System.out.println(cjb);
        cjbMapper.updateById(cjb);
        return "redirect:/zyb/table";
    }
}
