<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" 
           uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select All Records From Table</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/springjdbc"
     user="root"  password="NAVAL380"/>

<sql:query dataSource="${snapshot}"  var="result" >
SELECT * from Employees;
</sql:query>
 
<table border="1" width="100%">
<tr>
<th>Emp ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Age</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td align = 'center'><c:out value="${row.id}"/></td>
<td align = 'center'><c:out value="${row.first}"/></td>
<td align = 'center'><c:out value="${row.last}"/></td>
<td align = 'center'><c:out value="${row.age}"/></td>
</tr>
</c:forEach>
</table>

</body>
</html>