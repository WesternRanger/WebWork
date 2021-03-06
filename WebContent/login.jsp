<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="style/stylesheets/ie.css" rel="stylesheet" style="text/css">
<link href="css/bootstrap.css" rel="stylesheet" style="text/css">
</head>
<body>
    <span class="right-show">
        <s:property value="logna"/>
    </span>
   <div class="content">
		<div class="line-top">
			<div class="left">
				<img src="Qzone/login-logo-black.32.png" class="q">
                <a href="#"><img src="Qzone/slogan.png" class="gan"></a>
			</div>
			
			<form class="right" method="post" action="loginTest.action">
				<div class="form-group first-div">
					<a href="javascript:void(0);" id="fast">快速登录</a>
					<a href="javascript:void(0);" id="login">帐号密码登录</a>
				</div>
				<div id="form">
					<div class="form-fast">
								<div class="head">安全登录，防止被盗</div>
								<div class="mid-img">
									<img src="Qzone/ptqrshow.png" class="ptqr">
									<img src="Qzone/shouQ_s_tips_chs.png" class="tips">
								</div>
								<a href="javascript:void(0);">使用QQ手机版扫描二维码</a>
					</div>
					<div class="form-login">
						<div class="form-group">
							<input class="form-control" placeholder="用户名" type="text" name="username" id="username"/>
						</div>
						<div class="form-group">
							<input class="form-control" placeholder="密码" type="password" id="password" name="password" />
						</div>
						<div class="form-group">
							<img src="Qzone/getimage.jpg">
							<a href="javascript:void(0);">看不清，换一张</a>
						</div>
						<div class="form-group">
							<input type="submit" id="id" value="" class="btn btn-lg active"/>
						</div>
					</div>	
				</div>	
				<div class="form-bottom">
					<a href="">忘了密码？</a> |
					<a href="register.jsp">注册新帐号</a> |
					<a href="#">意见反馈</a>
				</div>
			</form>
		</div>
		<div class="line-bottom">
			<a href="#" class="span1 iphone"></a>
			<a href="#" class="span1 ipad"></a>
			<a href="#" class="span1 android"></a>
			<a href="#" class="span1 wp"></a>
			<a href="#" class="span1 other"></a>
		</div>
		<div class="line-b-text">
			<span class="span2">iPhone</span>
			<span class="span2">iPad</span>
			<span class="span2">Android</span>
			<span class="span2">Windows Phone</span>
			<span class="span2">其他手机</span>
		</div>
	</div>
	<div class="footer">
		<div class="line-one">
			<a href="javascript:void(0);">反馈建议</a> |
			<a href="javascript:void(0);">官方空间</a> |
			<a href="javascript:void(0);">官方微博</a> |
			<a href="javascript:void(0);">空间应用</a> |
			<a href="javascript:void(0);">QQ互联</a> | 
			<a href="javascript:void(0);">QQ登陆</a> |
			<a href="javascript:void(0);">社交组件</a> |
			<a href="javascript:void(0);">应用侵权投诉</a> |
			<a href="javascript:void(0);">Complaint Guidelines</a>
		</div>
		<div class="line-two">
			Copyright © 2005 - 2014 Tencent.All Rights Reserved.
		</div>
		<div class="line-three">
			腾讯公司 版权所有 粤网文[2011]0483-070号
		</div>
	</div>
	
	<script src="jQuery.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
</body>
</html>