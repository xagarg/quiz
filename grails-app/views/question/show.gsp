
<%@ page import="question.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link action="home" controller="user">Home </g:link></li>
				<g:if test="${session.user.role.equals('admin')}">
					<li><g:link action="list" controller="user">User</g:link></li>
					<li><g:link action="list" controller="question">Question</g:link></li>
				</g:if>
				<li><g:link action="quiz" controller="quiz">Play Quiz</g:link></li>
				<li><g:link action="logout" controller="user">Log out </g:link></li>
			</ul>
		</div>
		<div id="show-question" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list question">
			
				<g:if test="${questionInstance?.question}">
				<li class="fieldcontain">
					<span id="question-label" class="property-label"><g:message code="question.question.label" default="Question" /></span>
					
						<span class="property-value" aria-labelledby="question-label"><g:fieldValue bean="${questionInstance}" field="question"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="question.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${questionInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionOne}">
				<li class="fieldcontain">
					<span id="optionOne-label" class="property-label"><g:message code="question.optionOne.label" default="Option One" /></span>
					
						<span class="property-value" aria-labelledby="optionOne-label"><g:fieldValue bean="${questionInstance}" field="optionOne"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionTwo}">
				<li class="fieldcontain">
					<span id="optionTwo-label" class="property-label"><g:message code="question.optionTwo.label" default="Option Two" /></span>
					
						<span class="property-value" aria-labelledby="optionTwo-label"><g:fieldValue bean="${questionInstance}" field="optionTwo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionThree}">
				<li class="fieldcontain">
					<span id="optionThree-label" class="property-label"><g:message code="question.optionThree.label" default="Option Three" /></span>
					
						<span class="property-value" aria-labelledby="optionThree-label"><g:fieldValue bean="${questionInstance}" field="optionThree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.optionFour}">
				<li class="fieldcontain">
					<span id="optionFour-label" class="property-label"><g:message code="question.optionFour.label" default="Option Four" /></span>
					
						<span class="property-value" aria-labelledby="optionFour-label"><g:fieldValue bean="${questionInstance}" field="optionFour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questionInstance?.correctAnswer}">
				<li class="fieldcontain">
					<span id="correctAnswer-label" class="property-label"><g:message code="question.correctAnswer.label" default="Correct Answer" /></span>
					
						<span class="property-value" aria-labelledby="correctAnswer-label"><g:fieldValue bean="${questionInstance}" field="correctAnswer"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${questionInstance?.id}" />
					<g:link class="edit" action="edit" id="${questionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
