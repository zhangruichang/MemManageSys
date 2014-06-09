var xmlHttp;
function S_xmlhttprequest() {
	if(window.ActiveXObject) {
		xmlHttp = new ActiveXObject('Microsoft.XMLHTTP');
	} else if(window.XMLHttpRequest) {
		xmlHttp = new XMLHttpRequest();
	}
}

function reg_check() {

   var f=document.reg.username.value;
	S_xmlhttprequest();
	xmlHttp.open("POST","reg/regcheck",true);
	xmlHttp.onreadystatechange = byphp;
	xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');//post
	xmlHttp.send("name="+encodeURI(f));
}

function byphp() {

  	if(xmlHttp.readyState == 1) {
		 document.getElementById('msg').innerHTML = "≤È—Ø÷–......";
	}

    	if(xmlHttp.readyState == 4 ){
		if(xmlHttp.status == 200) {
          var msg =  xmlHttp.responseText;
          document.getElementById('msg').innerHTML = msg;
		}
	}
}