<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/23 0023
  Time: 下午 13:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
</head>
<body>          <%--${pageContext.request.contextPath}/spearker/updateSpeaker.do--%>
<form id="for" action="${pageContext.request.contextPath}/spearker/updateSpeaker.do">
    <table border="1px">

        <tr>
            <input type="hidden" name="id" value="${speark.id}"><br />
        </tr>
        <tr>
            名字<input type="text" name="speakerName" value="${speark.speakerName}"><br />
        </tr>
        <tr>
            详情<input type="text" name="speakerDesc" value="${speark.speakerDesc}"><br />
        </tr>
        <tr>
           职称 <input type="text" name="speakerJob" value="${speark.speakerJob}"><br />
        </tr>

        <tr>
            <input type="submit" name="submit" value="submit">提交
        </tr>
    </table>
</form>
<%--<script type="text/javascript">
   $("#for").submit(function () {
        $.ajax({
            type:"post",
            url:"spearker/updateSpeaker.do",
            data:$("#for").serialize(),
            success:function (data) {
                if (data.code == 1){

                    alert("dife11111111111")
                    window.location.href = "#"
                }else{
                    return false;
                }
                return false;

            }

        })
    })
</script>--%>

</body>
</html>
