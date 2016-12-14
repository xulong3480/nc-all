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
<div class="panel-body" style="padding-bottom:0px;">
    <div class="tag_panel">
        <h2>部门档案</h2>
        <ul class="nav navbar-right">
            <li>
                <a id="btn_query"><i class="fa fa-search"></i></a>
            </li>
            <li>
                <a id="btn_add"><i class="fa fa-plus" aria-hidden="true"></i></a>
            </li>
            <li>
                <a id="btn_edit"><i class="fa fa-plus" aria-hidden="true"></i></a>
            </li>
            <li>
                <a id="btn_delete"><i class="fa fa-remove" aria-hidden="true"></i></a>
            </li>
        </ul>
    </div>
    <div class="panel panel-default" id="search_panel">
        <div class="panel-body">
            <form id="formSearch" class="form-horizontal">
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
                        <a class="btn btn-primary" id="btn_qry_ok">确定</a>
                        <a class="btn btn-primary" id="btn_qry_clear">重置</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <table id="tb_departments">
    </table>
</div>
</body>

</html>
