package com.yr.commonn;

import lombok.Data;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

/**
 * @author: chaiyingibng
 * @create: 2019-09-20 16:07
 **/
@Data
@Component
@Configuration
public class ConstantConfig {

    @Value("${chaiyingbing.image.endpoint}")
    private String LXIMAGE_END_POINT;
    @Value("${chaiyingbing.image.keyid}")
    private String LXIMAGE_ACCESS_KEY_ID;
    @Value("${chaiyingbing.image.keysecret}")
    private String LXIMAGE_ACCESS_KEY_SECRET;
    @Value("${chaiyingbing.image.filehost}")
    private String LXIMAGE_FILE_HOST;
    @Value("${chaiyingbing.image.bucketname}")
    private String LXIMAGE_BUCKET_NAME;

}
