<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery.form.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/DatePicker.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.js"></script>

<title>添加课程</title>

<style>


		   
		    	
		    	body {
					margin: 0px;
					background-color: antiquewhite;
				}
				class {
						margin-left: 500px;
				}
				a {
					font-size: 15px;
					text-decoration: none;
					
				}
				a:visited {
					color: black;
				}
					
				a:hover {
					color: blue;
				}
					
				a:active {
					color: white ;
				}
				
	
	.c{
		height: 33px;
		padding: 6px 12px;
		font-size: 14px;
		line-height: 1.42857143;
		color: #555;
		background-image: none;
		border: 1px solid #ccc;
		border-radius: 4px;
	}
</style>

</head>
<body>

		<div style="background-color: #F699B4" >
				<table>
	
						<tr>
							<td width="31%" align="center"><a style="font-size: 18px ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;视频管理系统&nbsp;</a>
								<a href="videoShow.html" target="show">&nbsp;视频管理&nbsp;</a>
								<a href="userShow.html" target="show">&nbsp;主讲人管理&nbsp;</a>
								<a href="classShow.html" target="show">&nbsp;课程管理&nbsp;</a></td>
							<td width="40%" align="right">
								<a href="login.html" target="show">&nbsp;退出登录&nbsp;</a></td>
							</td>
						</tr>
	
					
				</table>
			</div>

	<div class="row" style="margin-left: 20px;">
		<form action="#" method="post" enctype="multipart/form-data">
			<div>
				<h3>添加课程信息</h3>
			</div>
			<hr />
			<div class="row">
				<div class="col-sm-6">
				
						<div class="form-group form-inline">
								<label>所属学校:</label>
								<!-- <select name="typeId" class="form-control">
								</select> -->
								<select name="quiz" class="c">
									<option value="">请选择学校</option>
									<option value="">正大</option>
									<option value="">北大</option>
									<option value="">河大</option>
								</select>
							</div>
					
					
					<div class="form-group form-inline">
							<label>标题:</label>
							<input type="text" name="goodsName" class="form-control" placeholder="课程标题" />
						
					</div>
					
				
				</div>
					
			</div>
			<div class="row">
				<div class="col-sm-10">
				
					<div class="form-group ">
						<label>简介</label>
						<textarea  name="goodsDesc" class="form-control" rows="5"></textarea>
					</div>
					<div class="form-group form-inline">
						<input type="submit" value="保存" class="btn btn-primary" />
						<input type="reset" value="重置" class="btn btn-default" />
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<script type="text/javascript">
		$(function(){
			$.ajax({
				type:"get",
				url:"/xiaomisys/type/level.do?level=2",
				dataType:"json",
				success:function(data){
					if(data.code == 1){
						var infos = data.info;
						$(infos).each(function(){
							var html = '<option value="' + this.tid + '">' + this.typeName + '</option>';
							$("select").append($(html));
						})
					}
				}
				
				
				
			})
		})
	
	</script>
	
	<script type="text/javascript">
		$("form").submit(function(){
			//$.ajax({})// 不支持文件的异步操作
			
			// jquery.form中提供的方法
			$("form").ajaxSubmit({
				type:"post",
				url:"/xiaomisys/goods/add.do",
				data:$("form").serialize(),
				dataType:"json",
				success:function(data){
					if(data.code == 1){
						window.location.href = "showGoods.html";
					}else{
						alert(data.info);
					}
				}
			})
			
			
			return false;
		})
	
	</script>
	
	
	
</body>
</html>