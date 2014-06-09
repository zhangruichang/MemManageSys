
function check_book(){

	if(document.getElementById("title").value == ""){
		alert('标题为空，请确认后提交，谢谢');
		document.book.title.focus();
		return false;
	}

	if(document.getElementById("content").value == ""){
		alert('内容为空，请确认后提交，谢谢');
		document.book.content.focus();
		return false;
	}

}