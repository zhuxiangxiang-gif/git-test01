<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/19 0019
  Time: 下午 20:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <style type="text/css">
        th {
            text-align: center;
        }
    </style>
</head>
<body>
    <script type="text/javascript">
        function show() {
            window.location.href = "${pageContext.request.contextPath}/spearker/findAllSpeaker.do";

        }
    </script>

<div style="color: #449d44" >
    <button onclick="show()">添加

    </button>
</div>


<form id="form2" action="delBatchVideos" method="post">
    <table border="1px" class="table table-bordered table-hover"
           style="text-align: center;table-layout:fixed">
        <thead>
        <tr class="active">
            <th style="width:4%">序号</th>
            <th style="width:8%">讲师名称</th>
            <th style="">讲师介绍</th>
            <th>讲师职称</th>
           <%-- <th style="width: 15%">地址</th>--%>
            <%--<th style="width: 5%">视频地址</th>
            <th style="width:7%">图片地址</th>--%>
            <th style="width: 10%">修改信息</th>
            <th>删除</th>
            <%--<th>添加教师信息</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="show" >
            <tr>
                <td>${show.id}</td>
                <td>${show.speakerName}</td>
                <td style="overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">${show.speakerDesc}</td>
                <td>${show.speakerJob}</td>
                <%--<td style="width: 20%">${show.headImgUrl}</td>--%>

                <%--<td>${show.courseId}</td>--%>
                    <%--<td>${show.videoUrl}</td>--%>
                    <%--<td>${show.imageUrl}</td>
                    <td>${show.playNum}</td>--%>
                <td><a href="${pageContext.request.contextPath}/spearker/findAllSpeaker.do?id=${show.id}<%--/spearker/updateVideo.do?id=${list.id}--%>"><span
                        class="glyphicon glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
                <!-- js中如果使用el表达式，请用单引号包括，避免造成一些语法问题 -->

                <td><a href="${pageContext.request.contextPath}/spearker/deleteBy.do?id=${show.id}"><span
                        class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>

                <%--<td><a href="spearker/showSpearker.do"><span
                        class="glyphicon glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>--%>

                    <%--<td><a
                            &lt;%&ndash;onclick="return delVideoById(this,'${show.id}','${show.title}')"&ndash;%&gt;
                            onclick="${pageContext.request.contextPath}/deleteBy.do?id=${show.id}"																		><span
                            class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>--%>
            </tr>

        </c:forEach>


        </tbody>
    </table>
</form>

</body>
</html>
