<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<body>
<%
    String message = (String) request.getAttribute("msg");
%>
<h2 style="color:Green; text-align:center;"><%=message%></h2>
<button><a href="index.html">Back</a></button>
</body>
</html>