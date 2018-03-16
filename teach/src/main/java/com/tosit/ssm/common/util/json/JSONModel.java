package com.tosit.ssm.common.util.json;

import java.util.HashMap;
import java.util.Map;

public class JSONModel{
    private JSONModel() {
    }

    private  static ThreadLocal< Map<String,Object> > threadLocal =new ThreadLocal<>() ;

    public static Map<String, Object> put(String key, Object value) {
        if(threadLocal.get()==null){
            threadLocal.set(new HashMap<String,Object>());
        }
        threadLocal.get().put(key,value);
        return threadLocal.get();
    }

    public static Object getMap() {
        return threadLocal.get();
    }

    public static Object put() {
        return JSONModel.getMap();
    }



    public static Map<String, Object> put(boolean status, Object data) {
        JSONModel.put("status",status);
        JSONModel.put("data",data);
        return threadLocal.get();
    }



}
