<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/2/2017
  Time: 2:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
  <head>
    <title>The Form</title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
  <%
    //you need this for JDBC with MySQL in version 5
    //even though youre not supposed to
    Class.forName("com.mysql.jdbc.Driver");
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/gcdojo", "jdbc", "java1234");
    Statement statement = connection.createStatement();
    ResultSet resultset = statement.executeQuery(
            "select id, firstName, lastName, email, " +
                    "phoneNum, bootcamp, gender" +
                    " from signups ORDER BY lastName");
  %>
  <div>
    <h1>Welcome to the Grand Bootcamp</h1>
    <table BORDER="1">
      <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Bootcamp</th>
        <th>Gender</th>
        <th>Database Operations</th>
      </tr>
      <% while(resultset != null && resultset.next()){ %>
      <TR>
        <td> <%= resultset.getString("firstName") %></td>
        <td> <%= resultset.getString("lastName") %></td>
        <td> <%= resultset.getString("email") %></td>
        <td> <%= resultset.getString("phoneNum") %></td>
        <td> <%= resultset.getString("bootcamp") %></td>
        <td> <%= resultset.getString("gender") %></td>
        <td>
          <form method="post" action="updateCustomerForm.jsp">
            <input type="hidden" name="id" value="<%= resultset.getString("id") %>">
            <input type="hidden" name="firstName" value="<%= resultset.getString("firstName") %>">
            <input type="hidden" name="lastName" value="<%= resultset.getString("lastName") %>">
            <input type="hidden" name="email" value="<%= resultset.getString("email") %>">
            <input type="hidden" name="phoneNum" value=" <%= resultset.getString("phoneNum") %>">
            <input type="hidden" name="bootcamp" value="<%= resultset.getString("bootcamp") %>">
            <input type="hidden" name="gender" value="<%= resultset.getString("gender") %>">
            <input type="submit" value="Update">
          </form>
          <form method="post" action="deleteCustomerForm.jsp">
            <input type="hidden" name="firstName" value="<%= resultset.getString("firstName") %>">
            <input type="hidden" name="lastName" value="<%= resultset.getString("lastName") %>">
            <input type="hidden" name="id" value="<%= resultset.getString("id") %>">
            <input type="submit" value="Delete">
          </form>
        </td>
      </TR>
      <% }
        //cleaning up after myself
        if (resultset != null) {
          resultset.close();
        }
        if (statement != null) {
          statement.close();
        }
        if (connection != null) {
          connection.close();
        }
      %>
    </table>
    <p class="center"><a href="form.html">Enter here to register</a></p>
  </div>
  </body>
</html>
