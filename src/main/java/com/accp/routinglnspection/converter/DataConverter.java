package com.accp.routinglnspection.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 自定类型转换器
 */
public class DataConverter implements Converter<String,Date>{
    private String dataPatter;
    public String getDataPatter() {
        return dataPatter;
    }
    public void setDataPatter(String dataPatter) {
        this.dataPatter = dataPatter;
    }

    public Date convert(String s) {
        Date data = null;
        try {
            if (s!=null && s.length()>0){
                data = new SimpleDateFormat(dataPatter).parse(s);
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return data;
    }
}
