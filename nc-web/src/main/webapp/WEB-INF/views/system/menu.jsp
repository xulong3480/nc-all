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
    <link rel="stylesheet" href="${ctx}/static/lib/font-awesome/css/font-awesome.min.css"/>
    <script src="${ctx}/static/lib/jquery/jquery-1.11.3.min.js"></script>
    <script src="${ctx}/static/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="${ctx}/static/lib/validform/validform.min.js"></script>
</head>
<body>
<div class="x_panel col-md-12">
    <div class="x_title col-md-12">
        <h3>档案类型</h3>
    </div>
    <div class="x_content col-md-12">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
                <div class=" navbar-collapse">
                    <ul class="nav  navbar-collapse">
                        <%--<li ><a href="/static/system/listtable.html">${username}物料档案<span class="fa fa-angle-right"></span></a></li>--%>
                        <%--<li><a href="/static/system/listtable.html">人员档案<span class="fa fa-angle-right"></span></a></li>--%>
                        <%--<li><a href="/static/system/listtable.html">部门档案<span class="fa fa-angle-right"></span></a></li>--%>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>
</body>
<script type="text/javascript">
    $(document).ready(function() {
        $.ajax({
            type: "post",
            url: "/menu?username="+${username},
            success: function (demand, status) {
                if (status == "success") {
                    var str="";
                    obj= $.parseJSON(demand);
                    $.each(obj.data, function(k,v) {
                        alert(v.doctypecode);
                        str+="<li><a href=\"/system/listtable?doctype="+ v.doctypecode+"\">"+ v.doctypename+"<span class='fa fa-angle-right'></span></a></li>";
                    });
                    $(".nav").html(str);



                }
            },
            error: function () {
                alert('Error');
            },
            complete: function () {

            }
        });
    });
</script>

</html>
