<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
        Integer answer = (Integer)request.getAttribute("answer");
        if(answer != null){
            %>
            <span><%= answer %></span>
            <%
            
        }


%>

	<form action="AddServlet" method="post">
		<input type="text" name="a"> &nbsp <input type="text"
			name="b"> &nbsp <input type="submit" value="=">
	</form>


</body>
</html>