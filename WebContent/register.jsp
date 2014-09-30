<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix ="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="style/stylesheets/print.css" rel="stylesheet" style="text/css">
<link href="css/bootstrap.css" rel="stylesheet" style="text/css">
</head>
<body class="body">
    <header>
        <div class="head">
            <div class="reg"></div>
            <span class="right-show"><s:property value="na"/></span>
        </div>
    </header>
    <article>
        <form class="form-horizontal content" role="form" action="regist.action">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label label-w">邮箱帐号</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control input-w" id="inputEmail3"> 
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label label-w">昵称</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control input-w" id="username" name="username">
                    <span class="img correct"></span>
                    <span class="img error"></span>
                </div>
            </div>
            <div class="form-group form-birth">
                <label for="inputEmail3" class="col-sm-2 control-label label-w">生日</label>
                <div class="col-sm-10">
                    <select class="sel-op">
                        <option>公历</option>
                        <option>农历</option>
                    </select>
                    <select class="sel-op sel-op-2">
                        <option>1992年</option>
                        <option>1993年</option>
                        <option>1994年</option>
                        <option>1995年</option>
                        <option>1996年</option>
                    </select>
                    <select class="sel-op" id="month" name="month">
                        <option>月份</option>
                    </select>
                    <select class="sel-op" id="day" name="day">
                        <option>日期</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label label-w">性别</label>
                <div class="col-sm-10">
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 男&nbsp;&nbsp;
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"> 女
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label label-w">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control input-w" id="password" name="password">
                </div>
            </div>


            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label label-w">确认密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control input-w" id="inputEmail3">
                </div>
            </div>
            <div class="form-group form-loc">
                <label for="inputEmail3" class="col-sm-2 control-label label-w">所在地</label>
                <div class="col-sm-10">
                    <select class="sel-op" id="country" name="country">
                        <option value="">中国</option>       
                    </select>
                    <select class="sel-op" id="province" name="province">
                    	<option value="">请选择省份...</option>                   
                    </select>
                    <select class="sel-op" id="city" name="city">
                        <option value="">请选择城市...</option>
                    </select>
                </div>
            </div>
    <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label label-w">验证码</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control input-w" id="inputEmail3">
                </div>
            </div>
            <div class="form-group confirm">
                <img src="Qzone/getimage.jpg">
                <a href="javascript:void(0);">看不清，换一张</a>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn active button"></button>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label class="label-access">
                            <input type="checkbox"> 我接受 <a href="#">QQ空间服务协议 QQ号码规则</a>
                        </label>
                    </div>
                </div>
            </div>
        </form>
    </article>
     <footer>
        <div class="line-top">
            <a href="#">反馈建议</a> |
            <a href="#">官方空间</a> |
            <a href="#">官方微博</a> |
            <a href="#">空间应用</a> |
            <a href="#">QQ互联</a> |
            <a href="#">空间热度</a> |
            <a href="login.jsp">QQ登录</a> |
            <a href="#">社交组件</a> |
            <a href="#">应用侵权投诉</a> |
            <a href="#">Complaint Guidelines</a>
        </div>
        <div class="line-bottom">
            Copyright © 2005 - 2013 Tencent.All Rights Reserved. 腾讯公司 版权所有 粤网文[2011]0483-070号
        </div>
    </footer>
    <script type="text/javascript" src="jQuery.js"></script>
 	<script src="js/register.js"></script>
</body>
</html>