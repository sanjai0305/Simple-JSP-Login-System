<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <%
        String studentName = (String) request.getAttribute("studentName");
        if (studentName == null) {
            studentName = "student";
        }
    %>

    <h2>Login Successful</h2>
    <p>Welcome, <%= studentName %>!</p>
</body>
</html>