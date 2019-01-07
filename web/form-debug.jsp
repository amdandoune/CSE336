<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="myLib" uri="/WEB-INF/tlds/hw7" %>

<!DOCTYPE html>
<html>
<head>
    <title>Form Debugger</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
          integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"
            integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <h1>Shared Objects</h1>
    <h3>Request</h3>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Key</th>
            <th>Value</th>
        </tr>
        </thead>
        <c:forEach var="rs" items="${requestScope}">
            <tr>
                <td>${rs.key}</td>
                <td>${rs.value}</td>
            </tr>
        </c:forEach>
    </table>

    <h3>Session</h3>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Key</th>
            <th>Value</th>
        </tr>
        </thead>
        <c:forEach var="ss" items="${sessionScope}">
            <tr>
                <td>${ss.key}</td>
                <td>${ss.value}</td>
            </tr>
        </c:forEach>
    </table>

    <h3>ServletContext</h3>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Key</th>
            <th>Value</th>
        </tr>
        </thead>
        <c:forEach var="as" items="${applicationScope}">
            <tr>
                <td>${as.key}</td>
                <td>${as.value}</td>
            </tr>
        </c:forEach>
    </table>

    <h1>Form Data Set</h1>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Parameter Name</th>
            <th>Parameter Value</th>
        </tr>
        </thead>
        <c:forEach var="p" items="${param}" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td>${p.key}</td>
                <td>${p.value}</td>
            </tr>
        </c:forEach>
    </table>

    <h1>Header Info</h1>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        </thead>
        <c:forEach var="h" items="${header}">
            <tr>
                <td>${h.key}</td>
                <td>${h.value}</td>
            </tr>
        </c:forEach>
    </table>

    <h1>FormBean Viewer</h1>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>Name</th>
            <th>Value</th>
        </tr>
        </thead>
        <myLib:beaner bean="${IBMForm}">
            <tr>
                <td>${name}</td>
                <td>${value}</td>
            </tr>
        </myLib:beaner>
    </table>
</div>
</body>
</html>