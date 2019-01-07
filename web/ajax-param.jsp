<html>

<head>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(document).ready(function () {
            $("#loadButton").click(function (event) {
                var queryString = $("#myInput").prop("value");
                var url = "http://localhost:8080/JqueryAjaxParameterExample?input=" + queryString;
                $("#result").load(url);
            });
        });
    </script>
</head>

<body>
<p id="p1">Enter text and click the button</p>
<input id="myInput" type="text" value="default"/>
<input type="button" id="loadButton" value="Load Data"/>
<br/>
<div id="result"></div>
</body>

</html>