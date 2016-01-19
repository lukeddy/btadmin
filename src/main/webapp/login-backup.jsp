<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en"	class="app js no-touch no-android chrome no-firefox no-iemobile no-ie no-ie10 no-ie11 no-ios no-ios7 ipad">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Google Chrome Frame也可以让IE用上Chrome的引擎: -->
<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1">
<link href="http://shikezhi.com/favicon.ico" type="image/x-icon" rel=icon>
<link href="http://shikezhi.com/favicon.ico" type="image/x-icon" rel="shortcut icon">
<meta name="renderer" content="webkit">
<title>BT-ADMIN-登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"	href="${pageContext.servletContext.contextPath }/admin_files/min.css">
<link rel="stylesheet"	href="${pageContext.servletContext.contextPath }/admin_files/login.css">
<link	href="${pageContext.servletContext.contextPath }/admin_files/css.css"	rel="stylesheet" type="text/css">
<!--[if lt IE 9]> 
	<script src="${ctx}/js/jquery/ie/html5shiv.js"></script> 
	<script src="${ctx}/js/jquery/ie/respond.min.js"></script>
<![endif]-->
</head>
<body onload="javascript:to_top()">
	<div id="loginbox" style="margin-top: 10%;border:1px solid #333;background:#222;">
		<form id="loginform" name="loginform" action="${pageContext.servletContext.contextPath }/login.shtml" method="post">
			<div class="row text-center">
				<h5>BT-Admin后台系统</h5>
			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_ly" style="background: #28b779"><img
							src="${pageContext.servletContext.contextPath }/admin_files/account_1.png"
							alt="请输入账号.."></span><input type="text" placeholder="username" name="username" value="admin"
							style="height: 32px; margin-bottom: 0px;"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<div class="main_input_box">
						<span class="add-on bg_ly"><img
							src="${pageContext.servletContext.contextPath }/admin_files/lock_1.png"
							alt="请输入密码.."></span><input type="password" placeholder="password" name="password" value="123456"
							style="height: 32px; margin-bottom: 0px;"/>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<div class="col-md-4"><a href="#"  class="flip-link btn btn-info" id="to-recover">忘记密码？</a></div>
				<div class="col-md-4"><a type="submit"  href="javascript:checkUserForm()" class="btn btn-success">登&nbsp;&nbsp;录</a></div>
				<div class="col-md-4"><a href="install.shtml" class="btn btn-link">一键初始化系统</a></div>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		if ("${error}" != "") {
			alert("${error}");
		};
		function checkUserForm() {
			document.loginform.submit();
		}
		function to_top(){
			if(window != top){
		        top.location.href=location.href;
		    }
		}
	</script>
</body>
</html>