
<%@ page import="question.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link action="home" controller="user">Home </g:link></li>
				<g:if test="${session.user.role.equals('admin')}">
					<li><g:link action="list" controller="user">User</g:link></li>
					<li><g:link action="list" controller="question">Question</g:link></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label"
																		  args="[entityName]"/></g:link></li>

				</g:if>
				<li><g:link action="quiz" controller="quiz">Play Quiz</g:link></li>
				<li><g:link action="logout" controller="user">Log out </g:link></li>
			</ul>
		</div>
		<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="question" title="${message(code: 'question.question.label', default: 'Question')}" />
					
						<g:sortableColumn property="category" title="${message(code: 'question.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="optionOne" title="${message(code: 'question.optionOne.label', default: 'Option One')}" />
					
						<g:sortableColumn property="optionTwo" title="${message(code: 'question.optionTwo.label', default: 'Option Two')}" />
					
						<g:sortableColumn property="optionThree" title="${message(code: 'question.optionThree.label', default: 'Option Three')}" />
					
						<g:sortableColumn property="optionFour" title="${message(code: 'question.optionFour.label', default: 'Option Four')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "question")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "optionOne")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "optionTwo")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "optionThree")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "optionFour")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
