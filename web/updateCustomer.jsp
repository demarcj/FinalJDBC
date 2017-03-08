<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/8/2017
  Time: 9:25 AM
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
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/gcdojo",
                "jdbc",
                "java1234");
        Statement statement = connection.createStatement();
        int result = statement.executeUpdate(
                "UPDATE signups\n" +
                        "SET\n" +
                        "firstName='" + request.getParameter("firstName") + "',\n" +
                        "lastName='" + request.getParameter("lastName") + "',\n" +
                        "email='" + request.getParameter("email") + "',\n" +
                        "phoneNum='" + request.getParameter("phoneNum") + "',\n" +
                        "bootcamp='" + request.getParameter("bootcamp") + "',\n" +
                        "gender='" + request.getParameter("gender") + "'\n" +
                        "WHERE id='" + request.getParameter("id") + "'\n");
    %>
    <div class="container">
        <h1><%=request.getParameter("firstName")%> <%=request.getParameter("lastName")%> Information is Updated</h1>
        <p class="center"><a href="index.jsp">Back to index</a></p>
    </div>
</body>
</html>
