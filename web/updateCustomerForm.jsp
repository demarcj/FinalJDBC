<%--
  Created by IntelliJ IDEA.
  User: paperspace
  Date: 3/8/2017
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>Update <%=request.getParameter("firstName")%> <%=request.getParameter("lastName")%> Information</h1>
    <form action="updateCustomer.jsp" method="post" onsubmit="return valForm();">
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
        <label for="firstName">First Name</label><p id="notFirst"></p>
        <br>
        <input type="text" name="firstName" id="firstName" placeholder="First Name" value="<%= request.getParameter("firstName") %>">
        <br>
        <label for="lastName">Last Name</label><p id="notLast"></p>
        <br>
        <input type="text" name="lastName" id="lastName" placeholder="Last Name" value="<%= request.getParameter("lastName") %>">
        <br>
        <label for="email">Email</label><p id="notEmail"></p>
        <br>
        <input type="text" name="email" id="email" minlength="6" placeholder="Email" value="<%= request.getParameter("email") %>">
        <br>
        <label for="phoneNum">Phone Number </label><p id="notNum"></p>
        <br>
        <input type="text" name="phoneNum" minlength="10" maxlength="13" placeholder="Phone Number" id="phoneNum" value="<%= request.getParameter("phoneNum") %>">
        <br>
        <label for="bootcamp">Your Bootcamp</label>
        <br>
        <select name="bootcamp" id="bootcamp">
            <option value="Java Apprenticeship">Java Apprenticeship</option>
            <option value="Java">Java</option>
            <option value="Front End">Front End</option>
            <option value=".Net">.Net</option>
            <option value="Front End Part Time">Front End Part Time</option>
        </select>
        <br>
        <label>Gender</label>
        <br>
        <label><input type="radio" name="gender" value="Male" checked>Male</label>
        <label><input type="radio" name="gender" value="Female">Female</label>
        <label><input type="radio" name="gender" value="Other">Other</label>
        <br>
        <input type="submit" value="Submit Name">
        <input type="reset" value="Clear">
    </form>
</div>
</body>
</html>
