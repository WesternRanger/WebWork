$(document).ready(function(){
            $(".img").hide();
            $("#username").bind("blur",function(){
                var $username=$(this);
                var jsonObj={
                    username:$username.val()
                };
                $.get("ajaxRequest/checkUsername1.jsp",jsonObj,function(data,textStatus){
                    if(data==1)
                    {
                       // $username.next().show();
                        //$username.next().next().hide();
                       $(".img").eq(0).show();
                       $(".img").eq(1).hide();
                       //alert(jsonObj);
                    }
                    else
                    {
                       // $username.next().hide();
                       // $username.next().next().show();
                        $(".img").eq(0).hide();
                        $(".img").eq(1).show();
                    }
                });
            });
            //下拉列表框ajax实现
          //保存xml文档为全局变量
            var xmlDoc=null;
            /**************************************************************************************/
            //处理province的下拉选
            $.get("ajaxRequest/cities.xml",function(xml){
                xmlDoc=xml;

                //<province name="辽宁省">
                var $provinceXml=$(xml).find("province");

                $provinceXml.each(function(index,domEle){

                    var nameAttr=$(domEle).attr("name");
                    //alert("nameAttr  "+nameAttr)

                    var $option=$("<option></option>");
                    $option.attr("value",nameAttr);
                    $option.text(nameAttr);

                    $("#province").append($option);
                });
            });
            /**************************************************************************************/
        //处理城市的下拉选
            $("#province").change(function(){
                var pvalue=$(this).val();

                /*
                 * <select id="city" name="city">
                 <option value="">请选择.....</option>
                 <option value="铁岭">铁岭</option>
                 </select>
                 */
                //删除城市的下拉选,保留<option value="">请选择.....</option>
                $("#city option[value!='']").remove();


                var $provinceXml=$(xmlDoc).find("province");
                $provinceXml.each(function(index,domEle){
                    var nameAttr=$(domEle).attr("name");
                    /*
                     * domEle
                     * =
                     * <province name="吉林省">
                     <city>长春</city>
                     <city>吉林市</city>
                     <city>四平</city>
                     <city>松原</city>
                     <city>通化</city>
                     </province>
                     */
                    if(nameAttr==pvalue){
                        var $cityXml=$(domEle).find("city");
                        $cityXml.each(function(index,domEleCity){
                            //domEleCity===<city>长春</city>
                            var cityValue=$(domEleCity).text();

                            var $option=$("<option></option>");
                            $option.attr("value",cityValue);
                            $option.text(cityValue);
                            $("#city").append($option);
                        });
                    }
                });
            });
          //月份日期下拉列表
      	  //保存xml文档为全局变量
      	    var xmlDoc=null;
      	    //处理month的下拉选
      	    $.get("ajaxRequest/days.xml",function(xml){
      	        xmlDoc=xml;
      	        var $monthXml=$(xml).find("month");
      	
      	        $monthXml.each(function(index,domEle){
      	
      	            var nameAttr=$(domEle).attr("name");
      	            var $option=$("<option></option>");
      	            $option.attr("value",nameAttr);
      	            $option.text(nameAttr);
      	
      	            $("#month").append($option)
      	        });
      	    });
      	    /**************************************************************************************/
      	//处理day的下拉选
      	    $("#month").change(function(){
      	        var pvalue=$(this).val();
      	        $("#day option[value!='']").remove();
      	        var $provinceXml=$(xmlDoc).find("month");
      	        $provinceXml.each(function(index,domEle){
      	            var nameAttr=$(domEle).attr("name");
      	            if(nameAttr==pvalue){
      	                var $cityXml=$(domEle).find("day");
      	                $cityXml.each(function(index,domEleCity){
      	                    var cityValue=$(domEleCity).text();
      	                    var $option=$("<option></option>");
      	                    $option.attr("value",cityValue);
      	                    $option.text(cityValue);
      	                    $("#day").append($option);
      	                });
      	            }
      	        });
      	    });
            });