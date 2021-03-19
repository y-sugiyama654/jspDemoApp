<%@ page import="java.util.*" %>
<html>

<body>

	<!-- Step1: Create HTML Form -->
	<form action="todo-demo.jsp">
		Add new item: <input type="text" name="theItem" />
		 <input type="submit" value="Submit" />
	</form>

	<!-- Step2: Add New Item to "To do" List -->
	<%
		// get the TO DO items from the session
		List<String> items = (List<String>) session.getAttribute("myToDoList");

		// if the TO DO items doesn't exit, then create a new one
		if (items == null) {
			items = new ArrayList<String>();
			session.setAttribute("myToDoList", items);
		}

		// see if there is form data to add
		String theItem = request.getParameter("theItem");
		if ((theItem != null) && (!theItem.trim().equals(""))) {
			items.add(theItem);
			response.sendRedirect("todo-demo.jsp");
		}

	%>
	<!-- Step3: Display All "To Do" item from session -->
	<hr>

	<h3>To Do List Items:</h3>

	<ol>
		<%
			for (String temp : items) {
				out.println("<li>" + temp + "</li>");
			}
		%>
	</ol>

</body>

</html>