<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String[] images = {
        "homepage.jpg",
        "metro.jpg",
        "Metro2.jpg",
        "platform.jpg"
    };
    int idx = (int) (Math.random() * images.length);
    String bgImage = images[idx];
%>
<html>
<head>
    <title>Home</title>
    <style>
        body {
            background-image: url('<%= request.getContextPath() %>/images/<%= bgImage %>');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
	<jsp:forward page="/WEB-INF/login.jsp"></jsp:forward>
</body>
</html>