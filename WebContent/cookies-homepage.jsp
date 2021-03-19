<html>

<head><title>Cookies Homepage</title></head>

<body>

<h3>Training Portal</h3>

<!-- read the favorite programming language from cpokie -->

<%
	// the default
	String favLang = "Java";

	// get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();

	// find our favorite language from cookie
	if (theCookies != null) {
		for (Cookie tmpCookie : theCookies) {
			if ("myApp.favoriteLanguage".equals(tmpCookie.getName())) {
				favLang = tmpCookie.getValue();
				break;
			}
		}
	}
%>

<!-- Show personalize infomation for this lang. -->
<h4>New books for : <%= favLang %></h4>
<ul>
	<li>blah blah blah....</li>
	<li>blah blah blah....</li>
	<li>blah blah blah....</li>
</ul>

<h4>Latest News Reports for : <%= favLang %></h4>
<ul>
	<li>blah blah blah....</li>
	<li>blah blah blah....</li>
	<li>blah blah blah....</li>
</ul>

<h4>Hot Jobs for : <%= favLang %></h4>
<ul>
	<li>blah blah blah....</li>
	<li>blah blah blah....</li>
	<li>blah blah blah....</li>
</ul>

<hr>

<a href="cookies-personalize-form.html" >Personalize this page.</a>

</body>

</html>