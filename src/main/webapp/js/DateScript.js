function getDate(){
	var yearId=form1.PublicationTime_year.selectedIndex;              //获取年份下标
	var year=form1.PublicationTime_year.options[yearId].value;        //根据年份下标获取其值
	var monthId=form1.PublicationTime_month.selectedIndex;            //月份同理
	var month=form1.PublicationTime_month.options[monthId].value;
	var num;
	if(month==2){                                    //如果是2月,以每月31天,闰年2月需要减去2天期需要 ,不是闰年减3天 
		if(year%4==0&&year%100!==0||year%400==0){
				num=-2;
		}else{
				num=-3;
			}
	}else if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){   //如果是大月份,不需减
		num=0;
	}else{                                                                            //如果是小月份,需减1天
		num=-1; 
	}		
	
	form1.PublicationTime_day.options.length=0;                                                        //清除日-下拉列表
	for(var i=1;i<=31+num;i++) 
	{	
		form1.PublicationTime_day.options.add(new Option(""+i,""+i));                                  //生成新的日下拉列表   
	}
}	    




		       
	