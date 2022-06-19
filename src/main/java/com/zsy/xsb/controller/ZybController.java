package com.zsy.xsb.controller;


import com.zsy.xsb.VO.ZybVO;
import com.zsy.xsb.entity.Kcb;
import com.zsy.xsb.entity.Xsb;
import com.zsy.xsb.entity.Zyb;
import com.zsy.xsb.mapper.ZybMapper;
import com.zsy.xsb.service.ZybService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2021-11-07
 */

@Controller
@RequestMapping("/zyb")
public class ZybController {

    @Autowired
    private ZybService zybService;
    @Autowired
    private ZybMapper zybMapper;

    @GetMapping("/table")
    public String index() {
        return "table";
    }

    @RequestMapping("/list")
    @ResponseBody
    public ZybVO list(Integer page, Integer limit){
        return zybService.findDate(page, limit);
    }

    /**
     * 添加专业
     */
    @GetMapping("/jia")
    public String xiuGai() {
        return "tjzy";
    }

    @RequestMapping("/insert")
    public String insert(HttpServletRequest request){
        Zyb zyb=new Zyb();
        zyb.setZym(request.getParameter("zym"));
        zyb.setFdy(request.getParameter("fdy"));
        zyb.setRs(Integer.valueOf(request.getParameter("rs")));
        zybMapper.insert(zyb);
        return "redirect:/zyb/jia";
    }


    //删除用户
    @RequestMapping("/delzyb")
    @ResponseBody
    public int delUser(Integer id){
        try {
            zybMapper.deleteById(id);
            return 0;
        }catch (Exception e){
            e.printStackTrace();
        }
        return 1;
    }

    /**
     * 修改用户
     */

    @RequestMapping("/update")
    public String modiAdmin(Zyb zyb){
        System.out.println(zyb);
        zybMapper.updateById(zyb);
        return "redirect:/zyb/table";
    }
}

