
function check_book(){

	if(document.getElementById("title").value == ""){
		alert('����Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.book.title.focus();
		return false;
	}

	if(document.getElementById("content").value == ""){
		alert('����Ϊ�գ���ȷ�Ϻ��ύ��лл');
		document.book.content.focus();
		return false;
	}

}