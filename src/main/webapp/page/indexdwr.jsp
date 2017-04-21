<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="<%= request.getContextPath()%>/dwr/engine.js"></script>
<script type="text/javascript"
	src="<%= request.getContextPath()%>/dwr/interface/Add.js"></script>

<title>Insert title here</title>
</head>
<body>

	<script>
var a = 0
var b = 0
function doAdd() {
	a = document.getElementById("a").value;
	b = document.getElementById("b").value;
	Add.add(a,b,doAddCallBack);
}
var doAddCallBack = function(answer) {
	document.getElementById("resultDiv").innerHTML ="result = " + answer
}

</script>

	<input type="text" id="a">
	 +
	<input type="text" id="b">
	<input type="button" onClick="doAdd()" value="=">
	<span id="resultDiv"></span>

</body>
</html>