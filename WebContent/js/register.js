$(document).ready(function(){
            $(".img").hide();
            $("#username").bind("blur",function(){
                var $username=$(this);
                var jsonObj={
                    username:$username.val()
                };
                $.get("ajaxRequest/checkUsername1.jsp",jsonObj,function(data,textStatus){
                    if(data==1)//没有匹配的用户名
                    {
                       // $username.next().show();
                        //$username.next().next().hide();
                       $(".img").eq(0).show();
                       $(".img").eq(1).hide();
                       //alert(jsonObj);
                    }
                    else//输入的用户名跟数据库内相同
                    {
                       // $username.next().hide();
                       // $username.next().next().show();
                        $(".img").eq(0).hide();
                        $(".img").eq(1).show();
                    }
                });
            });
            //�����б��ajaxʵ��
          //����xml�ĵ�Ϊȫ�ֱ���
            var xmlDoc=null;
            /**************************************************************************************/
            //����province������ѡ
            $.get("ajaxRequest/cities.xml",function(xml){
                xmlDoc=xml;

                //<province name="����ʡ">
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
        //������е�����ѡ
            $("#province").change(function(){
                var pvalue=$(this).val();

                /*
                 * <select id="city" name="city">
                 <option value="">��ѡ��.....</option>
                 <option value="����">����</option>
                 </select>
                 */
                //ɾ�����е�����ѡ,����<option value="">��ѡ��.....</option>
                $("#city option[value!='']").remove();


                var $provinceXml=$(xmlDoc).find("province");
                $provinceXml.each(function(index,domEle){
                    var nameAttr=$(domEle).attr("name");
                    /*
                     * domEle
                     * =
                     * <province name="����ʡ">
                     <city>����</city>
                     <city>������</city>
                     <city>��ƽ</city>
                     <city>��ԭ</city>
                     <city>ͨ��</city>
                     </province>
                     */
                    if(nameAttr==pvalue){
                        var $cityXml=$(domEle).find("city");
                        $cityXml.each(function(index,domEleCity){
                            //domEleCity===<city>����</city>
                            var cityValue=$(domEleCity).text();

                            var $option=$("<option></option>");
                            $option.attr("value",cityValue);
                            $option.text(cityValue);
                            $("#city").append($option);
                        });
                    }
                });
            });
          //�·����������б�
      	  //����xml�ĵ�Ϊȫ�ֱ���
      	    var xmlDoc=null;
      	    //����month������ѡ
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
      	//����day������ѡ
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