<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">

    <!--表示使用IE最新的渲染模式进行解析-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--
    	兼容一些移动设备，会根据屏幕的大小缩放
    	width=device-width  表示宽度是设备的宽度（很多手机的宽度都是980px）
    	initial-scale=1  初始化缩放级别   1-5
    	minimum-scale=1  maximum-scale=5
    	user-scalable=no  禁止缩放
    -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>添加或修改视频</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!-- 如果IE版本小于9，加载以下js,解决低版本兼容问题 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <!--
    	引入网络的jquery  ,如果想换成自己的，导入即可
    	网站优化：建议将你网站的css\js等代码，放置在互联网公共平台上维护，比如：七牛
    -->
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style type="text/css">
        th {
            text-align: center;
        }
    </style>

</head>
<body>


<nav class="navbar-inverse">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">

            <a class="navbar-brand" href="${pageContext.request.contextPath}/video/videoList.action">视频管理系统</a>
        </div>

        <div class="collapse navbar-collapse"
             id="bs-example-navbar-collapse-9">
            <ul class="nav navbar-nav">
                <li><a href="${pageContext.request.contextPath}/video/videoList.action">视频管理</a></li>
                <li ><a href="${pageContext.request.contextPath}/showSpeakerList.action">主讲人管理</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/showCourseList.action">课程管理</a></li>


            </ul>
            <p class="navbar-text navbar-right">
                <span>${sessionScope.userName}</span> <i class="glyphicon glyphicon-log-in"
                                                         aria-hidden="true"></i>&nbsp;&nbsp;<a
                    href="${pageContext.request.contextPath}/exit.action"
                    class="navbar-link">退出</a>
            </p>
        </div>
        <!-- /.navbar-collapse -->


    </div>
    <!-- /.container-fluid -->
</nav>

<div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
    <div class="container">

        <%-- <c:if test="empty ${video.id}"> --%>
        <c:if test="${empty video.id}">
            <h2>添加视频信息</h2>
        </c:if>

        <c:if test="${not empty video.id}">
            <h2>修改视频信息</h2>
        </c:if>

    </div>
</div>


<div class="container" style="margin-top: 20px;">

    <form id="cid" class="form-horizontal" action="#" method="post">
        <%--<div>
            <input type="hidden" name="id" >
        </div>--%>

        <div class="form-group">
            <label class="col-sm-2 control-label">课程名称</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="courseTitle">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">课程详情</label>
            <div class="col-sm-10">
                <div class="input-group">
                    <input type="text" class="form-control" name="courseDesc" >
                    </div>
                </div>
        </div>

        <div class="form-group">
            <label class="col-sm-2 control-label">学科</label>
            <div class="col-sm-10">
                <div class="input-group">
                    <input type="text" class="form-control" id="subjectId" name="spearkerId" >
                <%--<div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">下拉菜单<span class="caret"></span></button>
                        <ul id="selectSpeaker" class="dropdown-menu">
                            <c:forEach items="${speakerList}" var="speaker">
                                <li value='${speaker.id}'><a href="#"
                                                             onclick="showName(this,'${speaker.id}',1)">${speaker.speakerName}</a>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>--%>
                    <%--<c:if test="${empty video.spearkerId}">
                    </c:if>--%>
                   <%-- <c:if test="${not empty video.spearkerId}">
                        <input type="hidden" class="form-control" id="speakerId" name="spearkerId"
                               value="${video.spearkerId}">
                    </c:if>--%>
                </div><!-- /input-group -->
            </div>
        </div>

       <%-- <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">所属课程</label>
            <div class="col-sm-10">
                <div class="input-group">
                    <div class="input-group-btn">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">下拉菜单<span class="caret"></span></button>
                        <ul id="selectCourse" class="dropdown-menu">
                            <c:forEach items="${courseList}" var="course">
                                <li value="${course.id}"><a href="#"
                                                            onclick="showName(this,${course.id},2)">${course.courseTitle}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </div><!-- /btn-group -->
                    <c:if test="${empty video.courseId}">
                        <input type="hidden" class="form-control" id="courseId" name="courseId" value="0">
                    </c:if>
                    <c:if test="${not empty video.courseId}">
                        <input type="hidden" class="form-control" id="courseId" name="courseId" value="${video.courseId}">
                    </c:if>
                    <input type="text" class="form-control" disabled id="courseName" aria-label="...">
                </div><!-- /input-group -->
            </div>
        </div>--%>

        <%--<div class="form-group">
            <label class="col-sm-2 control-label">学科</label>
            <div class="col-sm-10">
                <c:if test="${empty video.time}">
                    <input type="number" class="form-control" value="0" name="time" placeholder="精确到毫秒（正整数）">
                </c:if>
                <c:if test="${not empty video.time}">
                    <input type="number" class="form-control" value="${video.time}" name="time"
                           placeholder="精确到毫秒（正整数）">
                </c:if>
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">封面图片地址</label>
            <div class="col-sm-10">
                <input type="url" name="imageUrl" class="form-control" value="${video.imageUrl}" placeholder="具体的url">
            </div>
        </div>

        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">视频播放地址</label>
            <div class="col-sm-10">
                <input type="url" name="videoUrl" class="form-control" value="${video.videoUrl}" placeholder="具体的url">
            </div>
        </div>--%>

        <%--<div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">备注</label>
            <div class="col-sm-10">
                <textarea class="form-control" name="detail" rows="3">${video.detail}</textarea>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">保存</button>
            </div>
        </div>--%>
        <div>
            <input type="submit" value="submit" />提交
        </div>
    </form>

</div>
<script>
    $("#cid").submit(function () {
        alert("5555555")
        $.ajax({
            type:"post",
            url:"course/insertCourse",
            data:$("#cid").serialize(),
            dataType:"json",
            success:function (data) {
                if(data.code == 1){
                    alert("成功")
                    location.href = "courseList.jsp"
                }else {
                    alert("错误")
                }
                return false;
            }

        })
    })
</script>

</body>
</html>