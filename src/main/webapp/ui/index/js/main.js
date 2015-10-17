function doLogin(formName,url) {
	//alert(url);
	var form1 = formName;
	$('#form1').attr('action', url+'/login/login');
	$('#form1').attr('method', 'post');
	$('#form1').submit();
}

function doLogout(formName,url) {
	var form1 = formName;
	$('#form1').attr('action', url+'/login/logout');
	$('#form1').attr('method', 'post');
	$('#form1').submit();
}

function doCookie(formName,url) {
	var form1 = formName;
	$('#form1').attr('action', url+'/cookie/clear');
	$('#form1').attr('method', 'post');
	$('#form1').submit();
}


$(function(){
	login();
	alert(localStorage.lastname);
});

function login(){
	if(username != ''){
		$('#login').hide();
		$('#logout').show();
	}else{
		$('#login').show();
		$('#logout').hide();
	}
}
