<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
    <meta name="description" content="城建教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,城建教育,学习成就梦想！">
    <meta name="author" content="尚忠祥">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.Jcrop.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/profile.css">
    <link rel="icon" href="favicon.png" type="image/png">
    <title>在线公开课-城建教育|java|大数据|HTML5|python|UI|PHP视频教程</title>

</head>

<body class="w100">
    <header>
        <div class="container top_bar clearfix">
            <img src="${pageContext.request.contextPath}/img/logo.png" alt="城建">
            <div id="tele">
                <span>0375-208-9092</span>
                <span>0375-208-9051</span>
            </div>
        </div>
        <menu>
            <div class="container clearfix">
                <ul class="clearfix f_left">
                    <li><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">课程</a></li>
                    <li><a href="#">关于我们</a></li>
                    <li class="menu_active"><a href="${pageContext.request.contextPath}/user/showMyProfile.action">个人中心</a></li>
                </ul>
                <div id="search_group">
                    <input type="text" placeholder="搜索课程">
                    <span id="search"></span>
                </div>
                <div id="user_bar">
                    <a href="${pageContext.request.contextPath}/user/showMyProfile.action">
                      <c:if test="${empty user.imgurl}">
                         <img id="avatar" src="${pageContext.request.contextPath}/img/avatar_lg.png" alt="">
                      </c:if>
                      
                      <c:if test="${not empty user.imgurl}">
                         <img id="avatar" src="${user.imgurl}" alt="">
                      </c:if>
                       
                    </a>
                    <a href="${pageContext.request.contextPath}/user/loginOut2.action" id="lay_out">退出</a>
                </div>
            </div>
        </menu>
    </header>
    <main>
        <div class="container">
            <h2>我的资料</h2>
            <div id="profile_tab">
                <ul class="profile_tab_header f_left clearfix">
                    <li><a href="${pageContext.request.contextPath}/user/changeProfile.action">更改资料</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="${pageContext.request.contextPath}/user/changeAvatar.action">更改头像</a></li>
                    <li class="profile_tab_line">|</li>
                    <li><a href="${pageContext.request.contextPath}/user/passwordSafe.action">密码安全</a></li>
                </ul>
                <div class="proflle_tab_body">
                    <h3><a href="./myProfile.html">返回个人中心</a></h3>
                    <div class="proflle_tab_workplace clearfix">
                        <div class="profile_avatar_area">
                            <c:if test="${empty user.imgurl}">
                                 <img  src="${pageContext.request.contextPath}/img/avatar_lg.png">
                            </c:if>
                            
                            <c:if test="${not empty user.imgurl}">
                                  <img width="200px" height="200px" src="${user.imgurl}">
                            </c:if>
                            
                            
                            <p style="text-align: center;">当前头像</p>
                        </div>
                        <div class="profile_ifo_area">
                            <form id="upload_form" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath}/user/upLoadImage.action" >
                                <!-- hidden crop params -->
                                <input type="hidden" id="x1" name="x1" />
                                <input type="hidden" id="y1" name="y1" />
                                <input type="hidden" id="x2" name="x2" />
                                <input type="hidden" id="y2" name="y2" />

                                <p>第一步：请选择图像文件</p>
                                <div><input type="file" name="image_file" id="image_file" onchange="fileSelectHandler()" /></div>

                                <div class="error"></div>

                                <div class="step2">
                                    <p>第二步：请选择需要截图的部位,然后按上传</p>
                                    <img id="preview" >
                                    <br>
                                    

                                    <input type="submit" value="上传" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="container">
            <ul>
                <li><img src="${pageContext.request.contextPath}/img/footer_logo.png" alt="" id="foot_logo"></li>
                <li>版权所有：城建教育&#x3000;&#x3000;&#x3000;&copy;&nbsp;www.chengjian100.com</li>
                <li><img src="${pageContext.request.contextPath}/img/微信公众号.png" alt="" id="wxgzh"></li>
            </ul>
        </div>
    </footer>
</body>
<!-- 此处必须引入低版本的jquery，引入1.12.4版本，有问题 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.Jcrop.min.js"></script>
<script src="${pageContext.request.contextPath}/js/Jcrop_upload.js"></script>

</html>