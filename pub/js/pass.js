
function check_password(){

	if(document.getElementById("old_password").value == ""){
		alert('原密码不能为空，请确认后提交，谢谢');
		document.change_password.old_password.focus();
		return false;
	}

	if(document.getElementById("new_password").value == ""){
		alert('新密码为空，请确认后提交，谢谢');
		document.change_password.new_password.focus();
		return false;
	}

	if(document.getElementById("new_password").value != document.getElementById("confirm_new_password").value){
		alert('两次新密码不一致，请确认后提交，谢谢');
		document.change_password.confirm_new_password.focus();
		return false;
	}

}