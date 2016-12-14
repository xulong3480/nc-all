package com.nc.model.demand;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashMap;

/**
 * Created by xl on 2016/12/13.
 */
public class BillModel extends HashMap<String, Object> implements Serializable {

    public String getString(Object key) {
        String value = "";
        Object obj = this.get(key);
        if(obj != null) {
            if(obj instanceof String) {
                value = (String) obj;
            }else if(obj instanceof Integer || obj instanceof Long) {
                value = obj.toString();
            }
        }
        return value;
    }

    public Long getLong(Object key) {
        Long value = null;
        Object obj = this.get(key);
        if(obj != null) {
            if(obj instanceof Long) {
                value = (Long) obj;
            }else if(obj instanceof String || obj instanceof Integer) {
                if(obj instanceof  String && obj.equals("")) {
                    return value;
                }
                value = new Long(obj + "");
            }
        }
        return value;
    }

    public Boolean getBoolean(Object key) {
        Boolean value = false;
        Object obj = this.get(key);
        if(obj != null) {
            if(obj instanceof Boolean) {
                value = (Boolean) obj;
            }else if(obj instanceof String) {
                value = Boolean.valueOf((String) obj);
            }
        }
        return value;
    }

    public Integer getInteger(Object key) {
        Integer value = 0;
        Object obj = this.get(key);
        if(obj != null) {
            if(obj instanceof Integer) {
                value = (Integer) obj;
            }else if(obj instanceof String) {
                value = Integer.valueOf((String) obj);
            }
        }
        return value;
    }

    public BigDecimal getBigDecimal(Object key) {
        BigDecimal value = new BigDecimal(0);
        Object obj = this.get(key);
        if(obj != null) {
            if(obj instanceof BigDecimal) {
                value = (BigDecimal) obj;
            }else if(obj instanceof String) {
                String objStr = (String) obj;
                if(!objStr.equals("")) {
                    value = new BigDecimal((String) obj);
                }
            }else if(obj instanceof Integer) {
                value = new BigDecimal((Integer) obj);
            }else if(obj instanceof Long) {
                value = new BigDecimal((Long) obj);
            }
        }
        return value;
    }

}
