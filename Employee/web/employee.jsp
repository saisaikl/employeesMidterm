<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "com.mysql.jdbc.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<sql:query dataSource="jdbc/employees" var="result">
    SELECT * FROM employees
</sql:query>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee</title>
</head>
<body>
<h1>Employee</h1>
<form action="employee-controller">
    <table>
        <tr>
            <td>Employee No.</td>
            <td><input type="text" name="emp_no"></td>
        </tr>
        <tr>
            <td>Birth Date</td>
            <td><input type="date" name="birth_date"></td>
        </tr>
        <tr>
            <td>First Name</td>
            <td><input type="text" name="first_name"></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><input type="text" name="last_name"></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><input type="text" name="gender"></td>
        </tr>
        <tr>
            <td>Hire Date</td>
            <td><input type="date" name="hire_date"></td>
        </tr>
        <td colspan="2">
            <input type="submit" value="Create">
        </td>
        </tr>
    </table>
</form>

</body>
</html>