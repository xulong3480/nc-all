<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head>
    <title>列表</title>
    <link rel="stylesheet" href="${ctx}/static/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${ctx}/static/lib/validform/validform.min.css" />
    <link rel="stylesheet" href="${ctx}/static/css/docman.css"/>
    <link rel="stylesheet" href="${ctx}/static/lib/bootstrap/css/bootstrap-table.css"/>
    <link rel="stylesheet" href="${ctx}/static/lib/font-awesome/css/font-awesome.min.css"/>
    <script src="${ctx}/static/lib/jquery/jquery-1.11.3.min.js"></script>
    <script src="${ctx}/static/lib/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/lib/bootstrap/js/bootstrap-table.js"></script>
    <script type="text/javascript" src="${ctx}/static/lib/bootstrap/locale/bootstrap-table-zh-CN.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/listtable.js"></script>
</head>
<body>
<script type="text/javascript">
    $(function(){
        $(".btn-success").click(function(){
            var flag = $("#orderForms").validate().check();
            if(flag) {

            }
            return false;
        });
    });
</script>
<div class="panel-body" style="padding-bottom:0px;">
    <div class="panel-heading"><h3>部门档案</h3></div>
    <div class="panel panel-default" id="add_form_panel">
        <div class="panel-body">
            <form id="add_form">
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txt_search_departcode">编码</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="txt_search_departcode">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txt_search_name">名称</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="txt_search_name">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txt_search_memo">说明</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="txt_search_memo">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3" for="txt_search_createdate">创建日期</label>
                    <div class="col-sm-6 ">
                        <input type="date" class="form-control" id="txt_search_createdate">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-6 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary" id="btn_qry_ok">保存</button>
                        <button type="submit" class="btn btn-primary" id="btn_qry_clear">取消</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>

</html>
