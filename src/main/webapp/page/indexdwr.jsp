<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%= request.getContextPath()%>/dwr/engine.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/dwr/interface/Add.js"></script>

<title>Insert title here</title>
</head>
<body>

<script>
	var a = 0
	var b = 0
	function doAdd() {
		a = document.getElementById("a").value;
		b = document.getElementById("b").value;
		//第三个参数为回调函数，保证基于Ajax的远程调用能够等待调用执行完毕后返回。
		Add.add(a,b,doAddCallBack);
	}
	//回调函数的参数，由DWR自动动态设置。
	var doAddCallBack = function(answer) {
		document.getElementById("resultDiv").innerHTML ="result = " + answer
}
	
	
	
	
//**********************返回值为JavaBean的例子*******************************	

</script>

	<input type="text" id="a">
	 +
	<input type="text" id="b">
	<input type="button" onClick="doAdd()" value="=">
	<span id="resultDiv"></span>
	
<script>
    var a2 = 0
    var b2 = 0
    function doAddWithBean() {
        a2 = document.getElementById("a2").value;
        b2 = document.getElementById("b2").value;
        //asd
        Add.addWithBean(a2,b2,doAddCallBackWithBean);
    }
    //asdasd
    var doAddCallBackWithBean = function(answer) {
        document.getElementById("resultDivWithBean").innerHTML ="result2 = " + answer.result
    }

</script>
    <br>
    <br>
	<input type="text" id="a2">
     +
    <input type="text" id="b2">
    <input type="button" onClick="doAddWithBean()" value="=">
    <span id="resultDivWithBean"></span>

</body>
</html>