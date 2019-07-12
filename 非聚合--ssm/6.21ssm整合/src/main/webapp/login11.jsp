<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	  <title>登陆页面</title>
	  <!-- Bootstrap -->
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

	  <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	  <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	  <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

	  <script>

		 /* function validateLogin() {
			  $.ajax({
                  type:"get",
                  url:"loginUser.do",
                  data:$("form").serialize(),
                  dataType:"json",
                  success:function (data){
						if(data.code == 1){
						    location.href = "${pageContext.request.contextPath}/listvideo.do"
						}
				  }
			  })
          }*/



		  function validateLogin(){

		  	   	     var data = $("form").serialize();
		  	   	     $.post(
		  	   	        "${pageContext.request.contextPath}/loginUser.do",data,function (data) {
                             if(data =='success'){
                             	//alert("登录成功");
								 location.href="${pageContext.request.contextPath}/listvideo.do";
							 }else{
                             	//alert("用户民密码错误");
                             	$("#msg").text("用户名密码错误，请检查后输入");
							 }
						}
					 );
		  	   	     return false;
		  };
	  </script>
  </head>
  <body>
     <form >
     <div style="margin-top: 10%;">
     	
     	<img src="images/tupian.jpg" class="img-responsive center-block" style="width: 20%" alt="Responsive image">
     	
     	
     	<div class="container" style="margin-top: 10px;">
     	
     	 <div class="row">
     	 	 <div class="col-md-4"></div>
     	 	 <div class="form-group col-md-4" style="1px solid #5CB85C">
		    
		      <input type="text" class="form-control" name="username" style="border:1px solid #5CB85C" id="exampleInputEmail1" placeholder="用户名">
		    </div>
     	 	<div class="col-md-4"></div>
     	 </div>
     	 
     	 <div class="row">
			<div class="col-md-4"></div>
			<div class="form-group col-md-4">

				<input type="password" class="form-control" name="password" style="border:1px solid #5CB85C" id="exampleInputPassword1" placeholder="密码">
			</div>
			<div class="col-md-4"></div>

		</div>

			<div class="row">
				<div class="col-md-4"></div>
				<div class="form-group col-md-4">
					 <span id="msg" style="color:darkred"></span>
				</div>
				<div class="col-md-4"></div>

			</div>
     	  
     		
     	</div>
     	
     	
     	<div class="row">
     	 	 <div class="col-md-4"></div>
     	 	 <div class="col-md-4" >
		        &nbsp;&nbsp;&nbsp;&nbsp;<button id="loginBtn" type="submit" class="btn btn-success center-block" style="width:80%;" onclick="return validateLogin()"> 登 录 </button>
		    </div>
		    <div class="col-md-4"></div>
     	 	
     	 </div>
     	
     	  
     </div>
    </form>

    
  </body>
</html>
