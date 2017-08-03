<%--
  Created by IntelliJ IDEA.
  User: Miha
  Date: 31.07.2017
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.webapp.model.Model" %>
<%@ page import="com.webapp.model.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <link rel="icon" href="images/icon.png" type="image/png" sizes="16x16">
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
    <script src="js/library.js"></script>
    <title>Process User</title>
</head>
<body>
        <jsp:useBean id="model" class="com.webapp.model.Model" scope="application"/>

        <div class="jumbotron">
            <div class="alert alert-success" role="alert">
                <h3><strong>Well done!</strong> You successfully added new person to phonebook.</h3>
            </div>
            <hr class="my-4">
            <%
                model = (Model) request.getAttribute("model");
                User user = model.getUser();
            %>
            <p>Your name: <%= user.getFirstName()%> <%=user.getMiddleName()%> <%= user.getLastName()%></p>
            <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>

        </div>

</body>
</html>
