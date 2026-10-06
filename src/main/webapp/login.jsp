<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
</head>
<body>
    <h2>Student Login</h2>

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String errorMessage = "";

        if (username != null && password != null) {
            if ("student".equals(username) && "1234".equals(password)) {
                request.setAttribute("studentName", username);
                request.getRequestDispatcher("welcome.jsp").forward(request, response);
                return;
            } else {
                errorMessage = "Invalid Username or Password";
            }
        }
    %>

    <form method="post" action="login.jsp">
        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Login"></td>
            </tr>
        </table>
    </form>

    <%
        if (!errorMessage.isEmpty()) {
    %>
        <p><%= errorMessage %></p>
    <%
        }
    %>
</body>
</html>