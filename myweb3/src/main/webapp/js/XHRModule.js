var XHR=null;
function getXHR(){
	if(window.ActiveXObject){
		return new ActiveXObject("Msxml2.XMLHTTP");//MS 생성자 호출시 반환생성자
	}else if(window.XMLHttpRequest){
		return new XMLHttpRequest();//Linux 계열 호출시 반환생성자
	}else{
		return null;//다 안되는 애들 그냥 널 반환
	}
}
function sendRequest(url,params,callback,method){
	XHR=getXHR();
	var httpMethod=method?method:'GET';
	if (httpMethod !='GET'&&httpMethod !='POST'){
		httpMethod !='GET';
	}
	var httpParams=(params==null||params=='')?null:params;
	var httpUrl=url;
	if (httpMethod =='GET'&& httpParams!=null){
		httpUrl=httpUrl+"?"+httpParams;
	}
	XHR.onreadystatechange=callback;
	XHR.open(httpMethod,httpUrl,true);
	XHR.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	XHR.send(httpMethod=='POST'?httpParams:null)
}