
function check_login(){

	if(document.getElementById("username").value == ""){
		alert('用户名为空，请确认后提交，谢谢');
		document.login.username.focus();
		return false;
	}

	if(document.getElementById("password").value == ""){
		alert('密码为空，请确认后提交，谢谢');
		document.login.password.focus();
		return false;
	}

}

function check_nav(){
	
	if(document.getElementById("navname").value == ""){
		alert('不能空，请确认后提交，谢谢');
		document.nav.navname.focus();
		return false;
	}

	if(document.getElementById("address").value == ""){
		alert('不能空，请确认后提交，谢谢');
		document.nav.address.focus();
		return false;
	}
	
	
}