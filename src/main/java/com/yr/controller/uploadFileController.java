package com.yr.controller;

import com.yr.commonn.AliyunOSSUtil;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;

/**
 * @author: chaiyingibng
 * @create: 2019-09-20 15:59
 **/
@RestController
@RequestMapping("/oss")
public class uploadFileController {
    private final org.slf4j.Logger logger = LoggerFactory.getLogger(getClass());
    private static final String RETURN_PATH = "success";
    @Autowired
    private AliyunOSSUtil aliyunOSSUtil;


    /**
     * 文件上传
     */
    @RequestMapping(value = "/uploadFile")
    public String uploadBlog(@RequestParam("file") MultipartFile file) {
        logger.info("文件上传");
        String filename = file.getOriginalFilename();
        System.out.println("filename"+"============================="+filename);
        try {
            if (file != null) {
                if (!"".equals(filename.trim())) {
                    File newFile = new File(filename);
                    FileOutputStream os = new FileOutputStream(newFile);
                    os.write(file.getBytes());
                    os.close();
                    file.transferTo(newFile);
                    System.out.println("newfile"+newFile);
                    // 上传到OSS
                   aliyunOSSUtil.upLoad(newFile);
                }

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return RETURN_PATH;
    }


}
