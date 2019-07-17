<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<body>
	
	<c:set var="data" value="JSTL tags" />
	Length of the string <b>${data}</b>: ${fn:length(data)} 
	<br/> <br/>
	uppercase version of the string <b>${data}</b>:${fn:toUpperCase(data)}
	<br/> <br/>
	Does the string <b>${data}</b> start with <b>JSTL<b/>?: ${fn:startsWith(data,"JSTL")}
</body>
</html>
