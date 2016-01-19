<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="session"/>
<!DOCTYPE html >
<head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="keywords" content="">
	<meta http-equiv="description" content="">
	<link type="image/vnd.microsoft.icon" href="<%=request.getContextPath()%>/images/icon/favicon.ico" rel="shortcut icon"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<!-- bootstrap CSS -->
	<link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<title>BT-ADMIN登录</title>
	<link href="${contextPath}/css/signin.css" rel="stylesheet"/>
</head>
<body>
<div id="topbar" class="clearfix">
	<div class="logo" style="border-bottom: 1px solid #D9DFE1; padding: 1em 2em; text-align: right; background-color: #ffffff;">
		<img id="logo-right" src="${contextPath}/images/logo.png" style="border: none;">
	</div>
</div>
<div class="container" id="page-signin">
	<c:if test="${error!=null}">
		<div class="alert alert-danger fade in text-center">
			<a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>
			<h5>
				<i class="glyphicon glyphicon-warning-sign glyphicon-white"></i>
				&nbsp;&nbsp;${error}
			</h5>
		</div>
	</c:if>
	<form id="loginform" name="loginform" action="${contextPath}/login.shtml" method="post">
		<h4 class="form-signin-heading text-left">BT-AdMIN登录</h4>
		<input type="text" name="username" class="form-control" placeholder='用户名' value="admin">
		<input type="password" name="password" value="123456" class="form-control" placeholder='密码'>
		<a href="javascript:checkUserForm()" type="submit" class="btn btn-danger">登录</a>
		<a href="install.shtml" class="btn btn-link">一键初始化系统</a>
	</form>
</div>
<div class="navbar navbar-default navbar-fixed-bottom text-center footer">
	@copyright &nbsp;&nbsp;&nbsp;&nbsp;
</div>
</body>
</html>
<script type="text/javascript">
	function checkUserForm() {
		document.loginform.submit();
	}
	function to_top(){
		if(window != top){
			top.location.href=location.href;
		}
	}
</script>