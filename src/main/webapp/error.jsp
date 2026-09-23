<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<body>
  <%
    String message = (String) request.getAttribute("bean");
  %>
  <h2 style="color:Red"><%=message%></h2>
</body>
</html>