package com.nc.model.demand;


import java.io.Serializable;

/**
 * Created by taoye on 2015/11/27.
 */
public class Demand implements Serializable {

    private String returnCode = ReturnCode.SUCCESS_200;
    private String returnMsg;

    public String getReturnCode() {
        return returnCode;
    }

    public void setReturnCode(String returnCode) {
        this.returnCode = returnCode;
    }

    public String getReturnMsg() {
        return returnMsg;
    }

    public void setReturnMsg(String returnMsg) {
        this.returnMsg = returnMsg;
    }

    public static class ReturnCode {
        /**
         * 业务操作失败，操作全部回滚
         **/
        public static final String ERROR_100 = "100";
        /**
         * 业务操作成功
         **/
        public static final String SUCCESS_200 = "200";
    }
}