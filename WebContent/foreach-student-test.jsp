<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,com.luv2code.jsp.tagdemo.Student" %>

<%
	//just creatome sample data ... normally provided by MVC
	
	List<Student> data = new ArrayList<>();

	data.add(new Student("John", "Doe", false));
	data.add(new Student("Mary", "Public", false));
	data.add(new Student("Taha", "Yavuz", true));

	pageContext.setAttribute("myStudents", data);
%>


<c:forEach items="${cookie}" var="currentCookie">  
    Cookie name as map entry key: ${currentCookie.key} <br/>
    Cookie object as map entry value: ${currentCookie.value} <br/>
    Name property of Cookie object: ${currentCookie.value.name} <br/>
    Value property of Cookie object: ${currentCookie.value.value} <br/>
</c:forEach>

<html>
<body>
	
	<table border="1">
	<tr>
		<th>First Name </th>
		<th>Last Name </th>
		<th>Gold Customer </th>
	</tr>
	
	<c:forEach var="tempStudents" items="${myStudents}">
	
	<tr>
		<td>${tempStudents.firstName} </td>
		<td>${tempStudents.lastName} </td>
		<td>${tempStudents.goldCustomer} </td>
	</tr>
		
	</c:forEach>

	</table>
</body>
</html>