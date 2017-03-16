
<%@ page import="quiz.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title><g:message code="default.list.label" args="[entityName]" /></title>

		<style>
			img {
				width: 100%;
			}
		</style>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link action="home" controller="user">Home </g:link></li>
				<g:if test="${session.user.role.equals('admin')}">
					<li><g:link action="list" controller="user">User</g:link></li>
					<li><g:link action="list" controller="question">Question</g:link></li>
				</g:if>
				<li><a href="#" onclick="showCategory();">Quiz</a></li>
				<li><g:link action="logout" controller="user">Log out </g:link></li>
			</ul>
		</div>


	<script>
		function showCategory() {
			document.getElementById('category').style.display='';
        }
	</script>

	<div style="display:none" id="category">
		<g:form controller="quiz" action="fetchQuestion">
			Select Category: <g:select from="${["Math","English","Science","skjhdfkj"]}" name="questionCategory"/>
			<input type="submit" value="Play Quiz">
		</g:form>

	</div>
	</di
		<div id="list-user" class="content scaffold-list" role="main">

			<div class="message" role="status">${flash.message}</div>

			<img src="${resource(dir: 'images', file: 'welcome.jpg')}">
			</div>
	</body>
</html>
