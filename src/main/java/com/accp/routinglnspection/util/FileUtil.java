package com.accp.routinglnspection.util;

import java.io.File;

public class FileUtil {

    /**
     * 传一个目录过来  如果 不存在则创建
     * @param path   D:\\Download\\Springmvcchapter113\\target\\Springmvc-chapter113-1.0-SNAPSHOT\\upload
     * @return
     */
    public static boolean createDirectory(String path){
        File createFile = new File(path);
        if(!createFile.exists()){
            createFile.mkdirs();
        }
        return true;
    }
}
