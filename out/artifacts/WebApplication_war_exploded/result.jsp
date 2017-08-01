<%--
  Created by IntelliJ IDEA.
  User: Miha
  Date: 31.07.2017
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.webapp.model.Model" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Process User</title>
</head>
<body>
    <h4 align="center">
        <jsp:useBean id="model" class="com.webapp.model.Model" scope="application"/>

        <%
            model = (Model) request.getAttribute("model");
            out.println(model.getUser().toString());
        %>
    </h4>
</body>
</html>
