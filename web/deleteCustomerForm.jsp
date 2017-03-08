<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/8/2017
  Time: 9:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<%
    //you need this for JDBC with MySQL in version 5
    //even though you're not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gcdojo", "jdbc", "java1234");
    Statement statement = connection.createStatement();
    int result = statement.executeUpdate(
            "DELETE FROM signups\n" +
                    "WHERE id='" +
                    request.getParameter("id") +
                    "'");
%>
<div class="container">
    <h1>Record Deleted</h1>
    <p><%= request.getParameter("lastName") %>, <%= request.getParameter("firstName") %> was deleted from the database.</p>
    <p><a href="index.jsp">Back to index</a></p>
</div>
</body>
</html>
