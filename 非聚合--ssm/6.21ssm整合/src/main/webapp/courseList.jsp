<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/25 0025
  Time: 下午 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>视频展示</title>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
</head>
<body>
<div>

    <table border="1px" >
        <thead>
        <tr>
            <th>序号</th>
        </tr><br />
        <tr>
            <th>课程名称</th>
        </tr><br />
        <tr>
            <th>课程详情</th><br/>
        </tr>
        <tr>
            <th>所属ID</th><br/>
        </tr>
        </thead>
        <tbody id="tid"></tbody>
    </table>
</div>



<script type="text/javascript">
    $(function () {
        $.ajax({
            type:"post",
            url:"course/listCourse",
            dataType:"json",
            success:function (data) {
                if(data.code == 1){
                    var course = data.info;
                    $(course).each(function () {
                        var html ='<tr>';
                        html += '<td>' + this.id + '</td>';
                        html += '<td>' + this.courseTitle + '</td>';
                        html += '<td>' + this.courseDesc + '</td>';
                        html += '<td>' + this.subjectId + '</td>';
                        html += '<tr>';
                        $("#tid").append($(html));
                    })

                }
            }
        })
    })
</script>
</body>
</html>
