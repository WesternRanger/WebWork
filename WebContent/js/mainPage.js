$(document).ready(function(){
    /*按钮切换*/
    var width=$(".content").width();
    var wai_width=$(".box").width();
    $(".title .user1").click(function a(){$(".box .content").animate({"left":"0px"},1000);});
    $(".title .user2").click(function a(){$(".box .content").animate({"left":-wai_width+"px"},1000);});
    $(".title .user3").click(function a(){$(".box .content").animate({"left":-2*wai_width+"px"},1000);});
    $(".title .user4").click(function a(){$(".box .content").animate({"left":-3*wai_width+"px"},1000);});
    $(".title .user5").click(function a(){$(".box .content").animate({"left":-4*wai_width+"px"},1000);});
    $(".title .user6").click(function a(){$(".box .content").animate({"left":-5*wai_width+"px"},1000);});
    $(".title .user7").click(function a(){$(".box .content").animate({"left":-6*wai_width+"px"},1000);});
    $(".title .user8").click(function a(){$(".box .content").animate({"left":-7*wai_width+"px"},1000);});
	//留言提交数据库//显示留言
	$(".comment").click(function(){
		 var $input_mine=$(".input_mine");
         var jsonObj={
             input_mine:$input_mine.val()
         };
         $.get("ajaxRequest/word.jsp",jsonObj,function(data,textStatus){
             if(data==1){
            	 window.location.href="mainPage.jsp";
             }
             else{
                //alert("jiashibai");
             }
         });  
     });
	$(".comment-line").load("ajaxRequest/wordShow.jsp");
	
    //大家都在看
    $(".adv1 .img2").hide();
    $(".adv1 .pre").click(function(){
        $(".adv1 .img2").hide();
        $(".adv1 .img1").show();
    });
    $(".adv1 .next").click(function(){
        $(".adv1 .img1").hide();
        $(".adv1 .img2").show();
    });
    //可能认识的人
    $(".adv2 .img2").hide();
    $(".adv2 .pre").click(function(){
        $(".adv2 .img2").hide();
        $(".adv2 .img1").show();
    });
    $(".adv2 .next").click(function(){
        $(".adv2 .img1").hide();
        $(".adv2 .img2").show();
    });
    //指用户头像显示用户信息
    var x=10,
    y=10;
    $(".pic").mouseover(function(e){
    //                alert("hellp");
        var tooltip=$("<div id='tooltip'><img src='mainPageImg/jie1.png'></div>");
        $("body").append(tooltip);
        $("#tooltip").css({ "top":(e.pageY+y),"left":(e.pageX+x)}).show("fast");
        }).mouseout(function(){
        $("#tooltip").remove();
        }).mousemove(function(e){
        $("#tooltip").css({"top": (e.pageY+y),"left": (e.pageX+x)});
    });
});
//右边自由播放幻灯
window.onload=function(){
    var curIndex=0;
    //时间间隔 单位毫秒
    var timeInterval=2000;
    var arr=new Array();
    arr[0]="mainPageImg/ani1.jpg";
    arr[1]="mainPageImg/ani2.jpg";
    arr[2]="mainPageImg/ani3.jpg";
    arr[3]="mainPageImg/ani4.jpg";
    setInterval(changeImg,timeInterval);
    function changeImg()
    {
        var obj=document.getElementById("obj");
        if (curIndex==arr.length-1)
        {
            curIndex=0;
        }
        else
        {
            curIndex+=1;
        }
        obj.src=arr[curIndex];
    }
};