<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/17 0017
  Time: 下午 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <title>视频列表管理</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!--
            引入网络的jquery  ,如果想换成自己的，导入即可
            网站优化：建议将你网站的css\js等代码，放置在互联网公共平台上维护，比如：七牛
        -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

</head>
<body>

<form class="form-inline" action="${pageContext.request.contextPath}/spearker/addSpearker.do">
    <div class="form-group">
        <label for="exampleInputName2">讲师名称</label><br />
        <input type="text" class="form-control" value="${list.speakerName}" name="speakerName">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail2">讲师介绍</label><br />
        <input type="text" class="form-control" name="speakerDesc" value="${list.speakerDesc}" >
    </div>
    <div class="form-group">
        <label for="exampleInputEmail2">职称</label><br />
        <input type="text" class="form-control" name="speakerJob" value="${list.speakerJob}" >
    </div>
    <button type="submit" class="btn btn-default">提交</button>
</form>






</body>
</html>
