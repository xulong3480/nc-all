<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="${ctx}/static/lib/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${ctx}/static/lib/validform/validform.min.css" />
    <link rel="stylesheet" href="${ctx}/static/css/docman.css"/>
    <script src="${ctx}/static/lib/jquery/jquery-1.11.3.min.js"></script>
    <script src="${ctx}/static/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/lib/validform/validform.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="col-md-12">
        <div class="row">

            <div class="app-title col-md-12"><h1>档案管理</h1></div>
        </div>
        <div class="row">
            <div class="login-input-group">
                <form action="${ctx}/login" method="post" id="loginform">
                    <div class="col-md-12">
                        <input type="text" id="username" name="username" datatype="*" nullmsg="用户名不能为空"  class="login-input form-control" placeholder="用户名">
                    </div>
                    <div class="col-md-12">
                        <input type="text" id="password" name="password" datatype="*" nullmsg="密码不能为空" class="login-input form-control" placeholder="密码">
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary login-input form-control" id="loginBtn">登录</button>
                    </div>
                </form>
            </div>
        </div>
        <!--

        -->

    </div>
</div>
</body>

<script type="text/javascript">
    $(document).ready(function() {
        $("#loginBtn").click(function() {
            var flag = $("#loginform").validate().check();
            if(flag) {
                $("#loginBtn").submit();
            }
            return;
        });
    });
</script>
</html>
