package com.zsy.xsb.controller;


import com.zsy.xsb.VO.UploadVO;
import com.zsy.xsb.entity.Xsb;
import com.zsy.xsb.mapper.XsbMapper;
import com.zsy.xsb.utils.UploadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpSession;
import java.util.HashMap;

@Controller
@RequestMapping("/upload")
public class UploadController {

    @Autowired
    private XsbMapper xsbMapper;

    @RequestMapping("/index")
    private String index(){
        return "upload";
    }

    @RequestMapping("/image")
    @ResponseBody
    public UploadVO image(MultipartFile file){
        //调用工具类完成文件上传
        String imagePath = UploadUtils.upload(file);
        System.out.println(imagePath);
        UploadVO uploadVO = new UploadVO();
        if (imagePath != null){
            //创建一个HashMap用来存放图片路径
            HashMap hashMap = new HashMap();
            hashMap.put("src",imagePath);
            uploadVO.setCode(0);
            uploadVO.setMsg("上传成功");
            uploadVO.setData(hashMap);
        }else{
            uploadVO.setCode(0);
            uploadVO.setMsg("上传失败");
        }
        return uploadVO;
    }


    @RequestMapping("/addImage")
    @ResponseBody
    public String addImage(String imageDescribe, String imagePath, HttpSession session){
        Object obj = session.getAttribute("xsb");
        System.out.println(obj);
        Xsb xsb=(Xsb)obj;
        Xsb xsb1=new Xsb();
        xsb1.setXh(xsb.getXh());
        xsb1.setZp(imagePath);
        this.xsbMapper.updateById(xsb1);
        System.out.println("图片描述："+imageDescribe);
        System.out.println("图片地址："+imagePath);

        return "1";
    }
}
