
function check_login(){

	if(document.getElementById("username").value == ""){
		alert('�û���Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.login.username.focus();
		return false;
	}

	if(document.getElementById("password").value == ""){
		alert('����Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.login.password.focus();
		return false;
	}

}

function check_nav(){
	
	if(document.getElementById("navname").value == ""){
		alert('���ܿգ���ȷ�Ϻ��ύ��лл');
		document.nav.navname.focus();
		return false;
	}

	if(document.getElementById("address").value == ""){
		alert('���ܿգ���ȷ�Ϻ��ύ��лл');
		document.nav.address.focus();
		return false;
	}
	
	
}