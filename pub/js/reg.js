function check_reg(){

	if(document.getElementById("username").value == ""){
		alert('�û���Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.reg.username.focus();
		return false;
	}

	if(document.getElementById("password").value == ""){
		alert('����Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.reg.password.focus();
		return false;
	}
	
	if(document.getElementById("password2").value == ""){
		alert('ȷ������Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.reg.password2.focus();
		return false;
	}
	
	if(document.getElementById("email").value == ""){
		alert('��������Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.reg.email.focus();
		return false;
	}
	
	if(document.getElementById("com").value == ""){
		alert('��˾����Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.reg.com.focus();
		return false;
	}
	
	if(document.getElementById("phone").value == ""){
		alert('�绰����Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.reg.phone.focus();
		return false;
	}
	
	if(document.getElementById("addres").value == ""){
		alert('��ַΪ�գ���ȷ�Ϻ��ύ��лл');
		document.reg.phone.focus();
		return false;
	}
	
	if(document.getElementById("password").value.length <=3 || document.getElementById("password").value.length >=16){
		alert('���볤��Ϊ4-16����ȷ�Ϻ��ύ��лл');
		document.reg.password2.focus();
		return false;
	}
	
	if(document.getElementById("password").value != document.getElementById("password2").value){
		alert('�������벻һ�£���ȷ�Ϻ��ύ��лл');
		document.reg.password2.focus();
		return false;
	}

}