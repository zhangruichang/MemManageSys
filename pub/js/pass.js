
function check_password(){

	if(document.getElementById("old_password").value == ""){
		alert('ԭ���벻��Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.change_password.old_password.focus();
		return false;
	}

	if(document.getElementById("new_password").value == ""){
		alert('������Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.change_password.new_password.focus();
		return false;
	}

	if(document.getElementById("new_password").value != document.getElementById("confirm_new_password").value){
		alert('���������벻һ�£���ȷ�Ϻ��ύ��лл');
		document.change_password.confirm_new_password.focus();
		return false;
	}

}