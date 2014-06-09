
function check_book(){

	if(document.getElementById("reply").value == ""){
		alert('内容不能为空，请确认后提交，谢谢');
		document.book.reply.focus();
		return false;
	}

}