function check(){
	var acc=/^[a-zA-Z][a-zA-Z0-9_]{5,17}$/;//必须已字母开头，6-18字节，允许字母数字下划线
	var pas=/^[\w\u4e00-\u9fa5]{6,18}$/;        // 必须6~18之间，允许字母数字下划线
	var pho=/^1[3|4|5|8][0-9]\d{8}$/;//11个数字
	var i=0,j=0,k=0;                                       //标记亮
	if(form.reg_account.value==""){                        //检查账户名是否为空
		alert("请输入账户名");
		return;
	}else{
		if(acc.test(form.reg_account.value)==false)       //是否合法
		{
			alert("请输入正确账户名(必须字母开头，6-18位，允许字母数字下划线)!")
			return;
		}else{
		    i=1;
		}
	}
	if(form.reg_password.value=="" &&form.reg_password_again.value==""){                       //检查密码是否为空
		alert("请输入密码");
		return;
	}else{
		if(pas.test(form.reg_password.value)==false)      //是否合法
		{
			alert("请输入正确密码(必须6-18位，允许字母数字下划线)!")
			return;
		}else{
		   if(form.reg_password.value==form.reg_password_again.value){
			j=1;
		}else{
			alert("密码不一致!")
			return;
		}
		}    
	} 
	if(form.phone.value==""){                            //检查手机号是否为空
		alert("请输入手机号");
		return;
	}else{
		if(pho.test(form.phone.value)==false)           //是否合法
		{
		    alert("请输入正确手机号!")
		    return;
		}else{
		    k=1;
		}    
	} 

	if(i==1&&j==1&&k==1)                                   //都通过提交表单
	{
		form.submit(); 
	}
}