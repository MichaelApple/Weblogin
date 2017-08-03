<%@ page import="com.webapp.model.Model" %>
<%@ page import="com.webapp.model.exceptions.LoginAlreadyUsedException" %>
<%@ page import="java.util.ResourceBundle" %><%--
  Created by IntelliJ IDEA.
  User: Miha
  Date: 31.07.2017
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language" value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${language}" />
<fmt:setBundle basename="resources.text" />
<html lang="${language}">
  <head>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
      <link rel="icon" href="images/icon.png" type="image/png" sizes="16x16">
      <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
      <script src="js/library.js"></script>

      <title>PhoneBook</title>
  </head>
  <body>

  <jsp:useBean id="exception" class="com.webapp.model.exceptions.LoginAlreadyUsedException" scope="application"/>

  <%
      String classList = "";
      String LoginAlreadyExistsDiv = "";
      String formControlList = "";
      if (request.getAttribute("exception") != null) {
          exception = (LoginAlreadyUsedException) request.getAttribute("exception");
          LoginAlreadyExistsDiv = "<div class=\"form-control-feedback\">Sorry, that username's taken. Try another?</div>";
          classList += " has-danger";
          formControlList = " form-control-danger";
      }

  %>

  <div class="container" style="width: 50%">
      <br>
    <h2 align="center"><fmt:message key="enter.data" /></h2>
      <br>
      <form>
          <select id="language" name="language" onchange="submit()">
              <option value="en" ${language == 'en' ? 'selected' : ''}>English</option>
              <option value="ua" ${language == 'ua' ? 'selected' : ''}>Українська</option>
          </select>
      </form>
      <br><br>
    <form action="userForm" method="post">
      <div class="form-group row">
        <label for="firstName" class="col-sm-3 col-form-label"><fmt:message key="login.label.username" /></label>
        <div class="col-sm-9">
          <input type="text" class="form-control " id="firstName" placeholder="<fmt:message key="login.input.usename" />" name="firstName" required>
        </div>
      </div>

      <div class="form-group row">
        <label for="lastName" class="col-sm-3 col-form-label"><fmt:message key="login.label.lastname" /></label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="lastName" placeholder="<fmt:message key="login.input.lastname" />" name="lastName" required>
        </div>
      </div>
      <div class="form-group row">
        <label for="middleName" class="col-sm-3 col-form-label"><fmt:message key="login.label.middlename" /></label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="middleName" placeholder="<fmt:message key="login.input.middlename" />" name="middleName">
        </div>
      </div>
      <div class="form-group row <%=classList%>">
        <label for="nickName" class="col-sm-3 col-form-label">Your NickName</label>
        <div class="col-sm-9">
          <input type="text" class="form-control <%=formControlList%>" id="nickName" placeholder="Your NickName" name="nickName" required>
          <%=LoginAlreadyExistsDiv%>
        </div>
      </div>
      <div class="form-group row">
        <label for="comments" class="col-sm-3 col-form-label">Comments</label>
        <div class="col-sm-9">
          <textarea class="form-control" id="comments" placeholder="Your comments..." rows="2" name="comment"></textarea>
        </div>
      </div>
      <div class="form-group row">
        <label for="groups" class="col-sm-3 col-form-label">Select your groups</label>
        <div class="col-sm-9">
            <select class="form-control" id="groups" name="group">
              <option>Sport</option>
              <option>Entertainment</option>
              <option>Anonymous Alcoholic</option>
            </select>
        </div>
      </div>
      <div class="form-group row">
        <label for="homePhone" class="col-sm-3 col-form-label">Home Telephone</label>
        <div class="col-sm-9">
          <input class="form-control" type="tel" value="(555)555-55-55" id="homePhone" name="homePhone">
        </div>
      </div>
      <div class="form-group row">
        <label for="cellPhone1" class="col-sm-3 col-form-label">Cell Phone 1</label>
        <div class="col-sm-9">
          <input class="form-control" type="tel" value="(555)555-55-55" id="cellPhone1" name="cellPhone1">
        </div>
      </div>
      <div class="form-group row">
        <label for="cellPhone2" class="col-sm-3 col-form-label">Cell Phone 2</label>
        <div class="col-sm-9">
          <input class="form-control" type="tel" value="(555)555-55-55" id="cellPhone2" name="cellPhone2">
        </div>
      </div>
      <div class="form-group row">
          <label for="inputEmail" class="col-sm-3 col-form-label">Email</label>
          <div class="col-sm-9">
              <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email">
          </div>
      </div>
      <div class="form-group row">
          <label for="skype" class="col-sm-3 col-form-label">Skype</label>
          <div class="col-sm-9">
              <input type="text" class="form-control" id="skype" placeholder="Skype" name="skype">
          </div>
      </div>

        <br>

        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo">Add your adress here</button>
        <div id="demo" class="collapse">
            <br>
            <div class="form-group row">
                <label for="zip" class="col-sm-3 col-form-label">Zip</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="zip" placeholder="Zip" name="zip">
                </div>
            </div>
            <div class="form-group row">
                <label for="city" class="col-sm-3 col-form-label">City</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="city" placeholder="City" name="city">
                </div>
            </div>
            <div class="form-group row">
                <label for="street" class="col-sm-3 col-form-label">Street</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="street" placeholder="Street" name="street">
                </div>
            </div>
            <div class="form-group row">
                <label for="building" class="col-sm-3 col-form-label">Building</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="building" placeholder="Building" name="buildingNumber">
                </div>
            </div>
            <div class="form-group row">
                <label for="flat" class="col-sm-3 col-form-label">Flat Number</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="flat" placeholder="Flat Number" name="flat">
                </div>
            </div>
        </div>
        <div class="form-group row">
        <div class="offset-sm-6 col-sm-6" style="float: right;">
          <button type="submit" class="btn btn-primary">Sign in</button>
        </div>
      </div>
    </form>
  </div>

  </body>

</html>
