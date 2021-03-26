<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,com.lub2code.jsp.jspDemoApp.Student"%>

<%
	// just create some sample data
	List<Student> data = new ArrayList<>();

	data.add(new Student("Tanaka", "Ichiro", false));
	data.add(new Student("Satou", "Terao", false));
	data.add(new Student("Nakamura", "Hideki", true));

	pageContext.setAttribute("myStudents", data);
%>

<html>

<body>

	<c:forEach var="tempStudent" items="${myStudents}">

		${tempStudent.firstName} ${tempStudent.lastName},

		<c:choose>
			<c:when test="${tempStudent.goldCustomer}">
				Special Discount
			</c:when>

			<c:otherwise>
				-
			</c:otherwise>
		</c:choose>

		<br />

	</c:forEach>

</body>

</html>