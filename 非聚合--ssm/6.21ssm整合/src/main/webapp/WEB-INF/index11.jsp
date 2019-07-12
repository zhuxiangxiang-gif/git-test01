<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/21 0021
  Time: 下午 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/js/jquery-1.12.4.min.js"></script>
</head>
<body>
的减肥is的数据佛爷文件的设计费看电视独食难肥看电视
<form>
    <table border="1px">
        <thead>
        <tr class="active">
            <th style="width:5%">序号</th>
            <th style="width:15%">名称</th>
            <th style="width:42%;">详情</th>
            <%--<th>编辑</th>
            <th>删除</th>--%>
        </tr>
        <tbody id="tid"></tbody>
    </table>
</form>
<script type="text/javascript">
    $(function () {
        $.ajax({
            type:"post",
            url:"findAll.do",
            data:$("form").serialize(),
            dataType:"json",
            success : function (data) {
                if (data.code == 1){
                    var infos = data.info;
                    $(infos).each(function () {
                        var html = '<tr>';
                        html += '<td>' + this.id + '<td>';
                        html += '<td>' + this.username + '<td>';
                        html += '<td>' + this.password + '<td>';
                        html += '<tr>';
                        $("#tid").append($(html))
                    })
                }
            }
        })
    })
</script>

</body>
</html>
