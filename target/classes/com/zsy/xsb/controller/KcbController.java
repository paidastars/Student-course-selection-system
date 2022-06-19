package com.zsy.xsb.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zsy.xsb.VO.KcbCharVO;
import com.zsy.xsb.VO.KcbVO;
import com.zsy.xsb.VO.ZybVO;
import com.zsy.xsb.entity.Kcb;
import com.zsy.xsb.entity.Xsb;
import com.zsy.xsb.entity.Xskcb;
import com.zsy.xsb.mapper.KcbMapper;
import com.zsy.xsb.mapper.XskcbMapper;
import com.zsy.xsb.service.KcbService;
import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/kcb")
public class KcbController {
    @Autowired
    private KcbService kcbService;
    @Autowired
    private KcbMapper kcbMapper;
    @Autowired
    private XskcbMapper xskcbMapper;

    @RequestMapping("/list")
    @ResponseBody
    public KcbVO list(Integer page, Integer limit){
        return kcbService.findDate(page, limit);
    }

    /**
     * 选课功能
     */
    @RequestMapping("/update")
    @ResponseBody
    public int delUser(Integer kch, HttpSession HttpSession){
        Kcb kcb = kcbMapper.selectById(kch);
        Xsb xsb = (Xsb) HttpSession.getAttribute("xsb");
        Integer xh = xsb.getXh();//session 中的学号

        Integer xs = kcb.getXs();
        if (xs!=0){
            int insertnoll = xskcbMapper.insertnoll(xh, kch);
            if (insertnoll==1){
                kcb.setXs(xs-1);
                kcbService.updateById(kcb);
                return 1;
            }
            return 0;
        }else {
            return 0;
        }
    }


    /**
     * 课程名图表
     * 首页课程表的课程名接口
     */
    @RequestMapping("/kcm")
    @ResponseBody
    public List<Kcb> findkcm(){
        List<Kcb> list = kcbMapper.selectList(null);
        Object[] objects = list.toArray();
        List list1=new ArrayList();
        for (int i=0;i<objects.length;i++){
            Kcb kcb=(Kcb)objects[i];
            String kcm = kcb.getKcm();
            list1.add(kcm);
        }
        return list1;
    }

    /**
     * 人数图标
     * 首页课程表的人数接口
     * @return
     */
    @RequestMapping("/xs")
    @ResponseBody
    public List<Kcb> findxs(){
        List<Kcb> list = kcbMapper.selectList(null);
        Object[] objects = list.toArray();
        List list1=new ArrayList();

        for (int i=0;i<objects.length;i++){
            Kcb kcb=(Kcb)objects[i];
            Integer xs = kcb.getXs();
            list1.add(xs);
        }
        return list1;
    }

    @GetMapping("/jia")
    public String xiuGai() {
        return "tjkcb";
    }
    /**
     * 添加课程
     */
    @RequestMapping("/insert")
    public String insert(HttpServletRequest request){
        Kcb kcb=new Kcb();
        kcb.setKcm(request.getParameter("kcm"));
        kcb.setKxxq(request.getParameter("kxxq"));
        kcb.setXs(Integer.valueOf(request.getParameter("xs")));
        kcb.setXf(Integer.valueOf(request.getParameter("xf")));
        kcbMapper.insert(kcb);
        return "redirect:/kcb/jia";
    }
}
