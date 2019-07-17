<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	//just create some simple data ... normally provided by MVC
	String[] cities = {"Istanbul", "Kocaeli", "Yalova"};

	pageContext.setAttribute("myCities", cities);
%>

<html>
<body>

	<c:forEach var="tempCity" items="${myCities}">
	
	${tempCity} <br/>
	
	</c:forEach>
	
</body>
</html>