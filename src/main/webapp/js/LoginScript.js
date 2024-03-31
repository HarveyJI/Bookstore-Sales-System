 	
       function check(){ 
       if(form.account.value==""){              //没输入账号
    	  alert("请输入账户名");
       }else{
    	   if(form.password.value==""){         //没输入密码
    	   alert("请输入密码");
       		}else{                              //没选择用户或管理员
				var select=document.getElementsByName("who");      
				var boolean=false;
				for(var i=0;i<select.length;i++){
					if(select[i].checked==true){
						boolean=true;
					}
				}
				if(boolean==false){
					alert("who are you?");
				}else{
					form.submit();
				}
    	        
       		} 
    	}
       }

