package com.zsy.xsb.controller;

import cn.hutool.db.Session;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zsy.xsb.VO.CjbCharVO;
import com.zsy.xsb.VO.XsbVO;
import com.zsy.xsb.entity.Xsb;
import com.zsy.xsb.entity.Xskcb;
import com.zsy.xsb.mapper.CjbMapper;
import com.zsy.xsb.mapper.XsbMapper;
import com.zsy.xsb.mapper.XskcbMapper;
import com.zsy.xsb.service.XsbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.nio.charset.StandardCharsets;
import java.util.List;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author testjava
 * @since 2021-10-28
 */
@Controller
@RequestMapping("/xsb")
public class XsbController {
    @Autowired
    private XsbMapper xsbMapper;
    @Autowired
    private XsbService xsbService;
    @Autowired
    private XskcbMapper xskcbMapper;
    @Autowired
    private CjbMapper cjbMapper;

    @GetMapping("/index")
    public String index() {
        return "index";
    }

    @PostMapping("/register")
    public String register(Xsb xsb, Model model){
        boolean result = false;
        try {
            result = xsbService.save(xsb);
        } catch (Exception e) {
            model.addAttribute("error",xsb.getXh()+"已存在！请重新输入！");
            return "register";
        }
        if(result) return "index";
        return "register";
    }


    @PostMapping("/login")
    public String login(String code,String xh, String mm, HttpSession session){
        String sessionCheckCode = (String) session.getAttribute("code");
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("xh",xh);
        wrapper.eq("mm",mm);
        Xsb xsb = xsbService.getOne(wrapper);
        Xskcb xskcb=xskcbMapper.selectById(xh);
        CjbCharVO byCJ = cjbMapper.findByCJ();
        if(xsb != null && code!=null && sessionCheckCode.equals(code)){
            session.setAttribute("xsb",xsb);
            session.setAttribute("xskcb",xskcb);
            session.setAttribute("cj",byCJ);
            return "redirect:/main";
        }else{
            return "index";
        }
    }

    @GetMapping("/xsbTable")
    public String xsbTable() {
        return "xsb";
    }

    @RequestMapping("/xsbList")
    @ResponseBody
    public XsbVO xsbList(Long page, Long limit){
        return xsbService.findDate(page,limit);
    }

    //删除用户
    @RequestMapping("/delUser")
    @ResponseBody
    public int delUser(Integer xh){
        try {
            xsbMapper.deleteById(xh);
            return 0;
        }catch (Exception e){
            e.printStackTrace();
        }
        return 1;
    }

    /**
     * 修改用户
     */

    @RequestMapping("/modiAdmin")
    public String modiAdmin(Xsb xsb){
    System.out.println(xsb);
    xsbMapper.updateById(xsb);
    return "redirect:/xsb/xsbTable";
    }

    /**
     * 修改密码
     */
    @GetMapping("/gai")
    public String xiuGai() {
        return "repassword";
    }

    @RequestMapping("/update" )
    public String update(HttpServletRequest request,HttpSession session) {
        String password=request.getParameter("name");//获取前端填写原密码
        String repassword=request.getParameter("rename");//获取前端填写新密码
        Object obj = session.getAttribute("xsb");//session中的xsb
        Xsb xsb=(Xsb) obj;//强转
        String mm = xsb.getMm();//session中的密码
        Xsb xsb1 = new Xsb();
        xsb1.setXh(xsb.getXh());//session域中的学号放进新的xsb1
        xsb1.setMm(repassword);//前端填写的新密码放进新的xsb1
        if(password.equals(mm)){
            if(password.equals(repassword)){
                session.setAttribute("a","密码不能一样");
            }else {
                this.xsbMapper.updateById(xsb1);
                session.setAttribute("a","修改成功");
                session.setAttribute("xsb",xsb1);//更新session域
            }
        }
        else {
            session.setAttribute("a","旧密码错误");
        }
        return "redirect:/xsb/gai";
    }
}

