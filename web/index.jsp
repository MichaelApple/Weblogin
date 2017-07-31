<%--
  Created by IntelliJ IDEA.
  User: Miha
  Date: 31.07.2017
  Time: 9:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
      <script src="js/library.js"></script>

      <title>PhoneBook</title>
  </head>
  <body>
  <div class="container" style="width: 50%">
    <h2 align="center">Enter your data here</h2>
    <form action="userForm" method="post">
      <div class="form-group row">
        <label for="firstName" class="col-sm-2 col-form-label">First Name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control " id="firstName" placeholder="First Name" name="firstName">
        </div>
      </div>

      <div class="form-group row">
        <label for="lastName" class="col-sm-2 col-form-label">Last Name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="lastName" placeholder="Last Name" name="lastName">
        </div>
      </div>
      <div class="form-group row">
        <label for="middleName" class="col-sm-2 col-form-label">Middle Name</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="middleName" placeholder="Middle Name" name="middleName">
        </div>
      </div>
      <div class="form-group row">
        <label for="nickName" class="col-sm-2 col-form-label">Your NickName</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="nickName" placeholder="Your NickName" name="nickName">
        </div>
      </div>
      <div class="form-group row">
        <label for="comments" class="col-sm-2 col-form-label">Comments</label>
        <div class="col-sm-10">
          <textarea class="form-control" id="comments" placeholder="Your comments..." rows="2" name="comment"></textarea>
        </div>
      </div>
      <div class="form-group row">
        <label for="groups" class="col-sm-2 col-form-label">Select your groups</label>
        <div class="col-sm-10">
            <select class="form-control" id="groups" name="group">
              <option>Sport</option>
              <option>Entertainment</option>
              <option>Anonymous Alcoholic</option>
            </select>
        </div>
      </div>
      <div class="form-group row">
        <label for="homePhone" class="col-sm-2 col-form-label">Home Telephone</label>
        <div class="col-sm-10">
          <input class="form-control" type="tel" value="(555)555-55-55" id="homePhone" name="homePhone">
        </div>
      </div>
      <div class="form-group row">
        <label for="cellPhone1" class="col-sm-2 col-form-label">Cell Phone 1</label>
        <div class="col-sm-10">
          <input class="form-control" type="tel" value="(555)555-55-55" id="cellPhone1" name="cellPhone1">
        </div>
      </div>
      <div class="form-group row">
        <label for="cellPhone2" class="col-sm-2 col-form-label">Cell Phone 2</label>
        <div class="col-sm-10">
          <input class="form-control" type="tel" value="(555)555-55-55" id="cellPhone2" name="cellPhone2">
        </div>
      </div>
      <div class="form-group row">
          <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
          <div class="col-sm-10">
              <input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email">
          </div>
      </div>
      <div class="form-group row">
          <label for="skype" class="col-sm-2 col-form-label">Skype</label>
          <div class="col-sm-10">
              <input type="text" class="form-control" id="skype" placeholder="Skype" name="skype">
          </div>
      </div>

        <br>

        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#demo">Add your adress here</button>
        <div id="demo" class="collapse">
            <br>
            <div class="form-group row">
                <label for="zip" class="col-sm-2 col-form-label">Zip</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="zip" placeholder="Zip" name="zip">
                </div>
            </div>
            <div class="form-group row">
                <label for="city" class="col-sm-2 col-form-label">City</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="city" placeholder="City" name="city">
                </div>
            </div>
            <div class="form-group row">
                <label for="street" class="col-sm-2 col-form-label">Street</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="street" placeholder="Street" name="street">
                </div>
            </div>
            <div class="form-group row">
                <label for="building" class="col-sm-2 col-form-label">Building</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="building" placeholder="Building" name="buildingNumber">
                </div>
            </div>
            <div class="form-group row">
                <label for="flat" class="col-sm-2 col-form-label">Flat Number</label>
                <div class="col-sm-10">
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
