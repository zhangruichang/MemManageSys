function check_reg(){

	if(document.getElementById("username").value == ""){
		alert('用户名为空，请确认后提交，谢谢');
		document.reg.username.focus();
		return false;
	}

	if(document.getElementById("password").value == ""){
		alert('密码为空，请确认后提交，谢谢');
		document.reg.password.focus();
		return false;
	}
	
	if(document.getElementById("password2").value == ""){
		alert('确认密码为空，请确认后提交，谢谢');
		document.reg.password2.focus();
		return false;
	}
	
	if(document.getElementById("email").value == ""){
		alert('电子信箱为空，请确认后提交，谢谢');
		document.reg.email.focus();
		return false;
	}
	
	if(document.getElementById("com").value == ""){
		alert('公司名称为空，请确认后提交，谢谢');
		document.reg.com.focus();
		return false;
	}
	
	if(document.getElementById("phone").value == ""){
		alert('电话号码为空，请确认后提交，谢谢');
		document.reg.phone.focus();
		return false;
	}
	
	if(document.getElementById("addres").value == ""){
		alert('地址为空，请确认后提交，谢谢');
		document.reg.phone.focus();
		return false;
	}
	
	if(document.getElementById("password").value.length <=3 || document.getElementById("password").value.length >=16){
		alert('密码长度为4-16，请确认后提交，谢谢');
		document.reg.password2.focus();
		return false;
	}
	
	if(document.getElementById("password").value != document.getElementById("password2").value){
		alert('两次密码不一致，请确认后提交，谢谢');
		document.reg.password2.focus();
		return false;
	}

}