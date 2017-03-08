<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Web Response</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/gcdojo",
            "jdbc",
            "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "INSERT INTO signups " +
                    "(firstName, lastName, email, phoneNum, bootcamp, gender)" +
                    "VALUES ('" + request.getParameter("firstName")
                    + "','" + request.getParameter("lastName")
                    + "','" + request.getParameter("email")
                    + "','" + request.getParameter("phoneNum")
                    + "','" + request.getParameter("bootcamp")
                    + "','" + request.getParameter("gender")
                    +"');");
%>
<div class="container">
    <h1>Registration form processed</h1>
    <p>Your first name:</p><p><%= request.getParameter("firstName")%></p>
    <p>Your last name:</p><p><%= request.getParameter("lastName")%></p>
    <p>Your email:</p><p><%= request.getParameter("email")%></p>
    <p>Your phone number:</p><p><%= request.getParameter("phoneNum")%></p>
    <p>Your bootcamp:</p><p><%= request.getParameter("bootcamp")%></p>
    <p>Your gender:</p><p><%= request.getParameter("gender")%></p>
    <p class="center"><a href="index.jsp">View the currently enrolled here</a></p>
</div>
<%
    if (statement != null) {
        statement.close();
    }
    if (connection != null) {
        connection.close();
    }
%>
</body>
</html>