<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="style/stylesheets/screen.css" rel="stylesheet" style="text/css">
<link href="css/bootstrap.css" rel="stylesheet" style="text/css">
</head>
<body class="body">
     <header>
        <span class="left-span">The Western Ranger</span>
        <a href="getPwd.jsp" class="level">
            <span class="main-logo"></span>
             <span class="digit">
                 <span class="tens-digit"></span>
                 <span class="units-digit"></span>
             </span>
        </a>
    </header>
    <div class="head-img">
        <img src="mainPageImg/h.jpg" class="left-img"/>
        <span class="name">破落户</span>
        <span class="title"></span>
    </div>
    <article>
        <div class="left-div">
            <div class="plan">
                <a href="#" class="fri"><div><span class="fri-img"></span>好友动态</div></a>
                <a href="#" class="care"><div><span class="care-img"></span>特别关心</div></a>
                <a href="#" class="about"><div><span class="about-img"></span>与我相关</div></a>
                <a href="#" class="wei"><div><span class="wei-img"></span>腾讯微博</div></a>
                <a href="#" class="fun"><div><span class="fun-img"></span>吃喝玩乐</div></a>
                <a href="#" class="save"><div><span class="save-img"></span>我的收藏</div></a>
                <a href="#" class="ide"><div><span class="ide-img"></span>实名朋友</div></a>
                <a href="#" class="zone"><div><span class="zone-img"></span>认证空间</div></a>
                <a href="#" class="apply"><div><span class="apply-img"></span>应用中心</div></a>
                <a href="#" class="hang"><div><span class="hang-img"></span>爱逛频道</div></a>
            </div>
            <div class="adv1">
                <div class="head">猜你感兴趣</div>
                <img src="mainPageImg/adv1.jpg">
                <div class="text">京东买索尼手机就送限量大礼包！</div>
            </div>
            <div class="adv2">
                <img src="mainPageImg/adv2.jpg">
                <div class="text">纽百伦3.5折，限时抢购</div>
            </div>
        </div>
        <div class="center-div">
            <div class="previous">
                <div class="text">
                   那年今日
                </div>
                <div class="box">
                    <div class="content">
                        <img src="mainPageImg/a.jpg">
                        <img src="mainPageImg/b.jpg">
                        <img src="mainPageImg/c.jpg">
                        <img src="mainPageImg/d.jpg">
                        <img src="mainPageImg/d.jpg">
                        <img src="mainPageImg/c.jpg">
                        <img src="mainPageImg/b.jpg">
                        <img src="mainPageImg/a.jpg">
                    </div>

                </div>
                <div class="title">
                    <a href="#" class="user1"></a>
                    <a href="#" class="user2"></a>
                    <a href="#" class="user3"></a>
                    <a href="#" class="user4"></a>
                    <a href="#" class="user5"></a>
                    <a href="#" class="user6"></a>
                    <a href="#" class="user7"></a>
                    <a href="#" class="user8"></a>
                </div>
            </div>
            <div class="all">
                <div class="all-head">
                   全部动态
                </div>
                <div class="fri-one">
                    <div class="top">
                        <div class="fri-head">
                            <img class="pic" src="mainPageImg/1.jpg">
                            <div class="img-next">
                                <div class="name">阿凡达
                                    <a href="#" class="level">
                                        <span class="main-logo"></span>
                                        <span class="digit">
                                            <span class="tens-digit"></span>
                                            <span class="units-digit"></span>
                                        </span>
                                    </a>
                                </div>
                                <div class="time">19:53来自 三星 </div>
                            </div>

                        </div>
                        <div class="fri-title">
                            自己买个蛋糕凑合过个生日<img src="mainPageImg/e101.png">
                        </div>
                        <div class="fri-main">
                            <img src="mainPageImg/cake.jpg">
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="fri-foot">
                            <a href="#"><span class="comment"></span>评论</a> |
                            <a href="#"><span class="transmit"></span>转发</a> |
                            <a href="#"><span class="praise"></span>赞</a> |
                            <a href="#"><span class="collect"></span>收藏</a> |
                            <a href="#"><span class="etc"></span></a>
                        </div>
                        <div class="comment-line">
							
                        </div>
                        <div class="fri-mine">
                            <input name="input_mine" class="form-control input_mine" value="我也说一句">
                        </div>
                    </div>
                </div>
                <div class="fri-two">
                    <div class="top">
                        <div class="fri-head">
                            <img class="pic" src="mainPageImg/3.jpg">
                            <div class="img-next">
                                <div class="name">
                                    阿帕奇 <a href="#" class="level"> <span class="main-logo"></span>
									<span class="digit"> <span class="tens-digit"></span> <span
                                            class="units-digit"></span>
								</span>
                                </a>
                                </div>
                                <div class="time">01:06来自 iPhone 5</div>
                            </div>

                        </div>
                        <div class="fri-title">
                            奇迹，原本就会在每个人的生命中•••自然而然的发生!!!只不过，很多人因为：被恐惧、担忧、害怕、怀疑•••等所围困，从而导致了：丧失原本轻而易举地可以经历奇迹的能力••••••
                            <img src="mainPageImg/e101.png">
                        </div>
                        <div class="fri-main">
                            <img src="mainPageImg/dog.jpg">
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="fri-foot">
                            <a href="#"><span class="comment"></span>评论</a> | <a href="#"><span
                                class="transmit"></span>转发</a> | <a href="#"><span class="praise"></span>赞</a>
                            | <a href="#"><span class="collect"></span>收藏</a> | <a href="#"><span
                                class="etc"></span></a>
                        </div>
                        <ul class="comment-line" id="comment-line">
                            <li><img src="mainPageImg/1.jpg"> <span>嗦的太好啦！</span></li>
                        </ul>
                        <div class="fri-mine clearfix" id="fri-mine">
                            <input class="form-control input_mine" id="comment" value="我也说一句">
                            <div id="commBtn">
                                <span id="word"></span>
                                <button id="sub">发表</button>
                            </div>
                            <!-- <div style="clear: both"></div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="right-div">
            <div class="sign"></div>
            <div class="rBox">
                <img class="ani" id=obj src="mainPageImg/ani1.jpg"/>
            </div>
            <div class="adv1">
                <div class="head">大家都在看</div>
                <div class="img">
                    <div class="img1">
                        <div class="img-three">
                            <img src="mainPageImg/1403167349097_221284.jpg">
                            <span>神剪辑！星爷版小苹果MV ，笑尿了！</span>
                        </div>
                        <div class="img-three">
                            <img src="mainPageImg/1403167460209_137319.jpg">
                            <span>早上第一杯水怎么喝最养生？</span>
                        </div>
                        <div class="img-three">
                            <img src="mainPageImg/1403167576449_516689.jpg">
                            <span>我还单身，找我做女友吧！在绝配网等你</span>
                        </div>
                    </div>
                    <div class="img2">
                        <div class="img-three">
                            <img src="mainPageImg/1403167648478_391307.jpg">
                            <span>不要轻易把伤口揭开给别人看，痛的是自己</span>
                        </div>
                        <div class="img-three">
                            <img src="mainPageImg/1403167690109_406689.jpg">
                            <span>如何把衣服洗得干净，洁癖狂们值得一看</span>
                        </div>
                        <div class="img-three">
                            <img src="mainPageImg/1403167890057_178697.jpg">
                            <span>男友球性大发？安抚星座球迷有高招</span>
                        </div>
                    </div>
                </div>

                <div class="text">
                    <span class="pre"></span>
                    <span class="next"></span>
                </div>
            </div>
            <div class="adv2">
                <div class="head">可能认识的人</div>
                <div class="img">
                    <div class="img1">
                        <div class="img-three">
                            <img src="mainPageImg/100 (1).jpg">
                            <img src="mainPageImg/100 (2).jpg">
                            <img src="mainPageImg/100 (3).jpg">
                        </div>
                        <div class="img-three">
                            <img src="mainPageImg/100 (4).jpg">
                            <img src="mainPageImg/100 (5).jpg">
                            <img src="mainPageImg/100 (6).jpg">
                        </div>
                    </div>
                    <div class="img2">
                        <div class="img-three">
                            <img src="mainPageImg/100 (7).jpg">
                            <img src="mainPageImg/100 (8).jpg">
                            <img src="mainPageImg/100 (9).jpg">
                        </div>
                        <div class="img-three">
                            <img src="mainPageImg/100 (1).png">
                            <img src="mainPageImg/100.jpg">
                            <img src="mainPageImg/100.png">
                        </div>
                    </div>
                </div>

                <div class="text">
                    <span class="pre"></span>
                    <span class="next"></span>
                </div>
            </div>
        </div>
    </article>
    <script src="jQuery.js"></script>
    <script src="js/mainPage.js"></script>
    <script src="js/comment.js"></script>
    <script>
    $(document).ready(function(){
  //点击留言框，文字提示消失，留言框失去焦点，文字重新显示
    $(".input_mine").click(function(){
                if($(this).val()=="我也说一句"){
                    $(this).val("");
                }
            }).blur(function(){
                if($(this).val()==""){
                    $(this).val("我也说一句");
                }
            });
    });
    </script>
</body>
</html>