<%--
  Created by IntelliJ IDEA.
  User: marvinyan
  Date: 4/19/2017
  Time: 6:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
<p>Enter email address below</p>
<input name="email" id="email" size="36" type="text"/>
<div id="error"></div>
<input type="button" id="submit" value="Submit" />

<script>
    $("#submit").click(function (event) {
        var queryString = $("#email").prop("value");
        var url = "http://localhost:8080/validateEmail?input=" + queryString;
        $("#error").load(url);
    });
</script>
</body>
</html>
