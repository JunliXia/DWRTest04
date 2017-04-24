<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- engine.js是真正的DWR客户端代码，包含在dwr.jar中  -->
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
		
	</script>	 
	参数为基本类型：  
	<input type="text" id="a">
     +
    <input type="text" id="b">
    <input type="button" onClick="doAdd()" value="=">
    <span id="resultDiv"></span>
	

	
	<script>
	//**********************返回值为JavaBean的例子******************************* 
	    var a2 = 0
	    var b2 = 0
	    function doAddWithBean() {
	        a2 = document.getElementById("a2").value;
	        b2 = document.getElementById("b2").value;
	        Add.addWithBean(a2,b2,doAddCallBackWithBean);
	    }
	    var doAddCallBackWithBean = function(answer) {
	        document.getElementById("resultDivWithBean").innerHTML ="result2 = " + answer.result
	    }
	
	
	</script>
    <br>
    <br>
            参数为JavaBean:     
	<input type="text" id="a2">
     +
    <input type="text" id="b2">
    <input type="button" onClick="doAddWithBean()" value="=">
    <span id="resultDivWithBean"></span>

	<script>
	//**********************批量执行的例子*******************************  
	    var a3 = 0
	    var b3 = 0
	    function doAddWithBatch() {
	        a3 = document.getElementById("a3").value;
	        b3 = document.getElementById("b3").value;
	        
	        dwr.engine.beginBatch();
	        //这里直接调用以上两个方法。
	        Add.add(a3,b3,doAddCallBackWithBatch1);
	        Add.addWithBean(a3,b3,doAddCallBackWithBatch2);
	        dwr.engine.endBatch();
	    }
	
        var doAddCallBackWithBatch1 = function(answer) {
            document.getElementById("resultDivWithBatch1").innerHTML ="  resultBatch1 = " + answer
        }
        
        var doAddCallBackWithBatch2 = function(answer) {
            document.getElementById("resultDivWithBatch2").innerHTML ="  resultBatch2 = " + answer.result
        }       
	</script>
    <br>
    <br>
             批处理：
    <input type="text" id="a3">
     +
    <input type="text" id="b3">
    <input type="button" onClick="doAddWithBatch()" value="=">
    <span id="resultDivWithBatch1"></span>
    <span id="resultDivWithBatch2"></span>

</body>
</html>