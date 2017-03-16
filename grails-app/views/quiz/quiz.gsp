<%@ page import="quiz.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Quiz</title>
</head>

<body>
<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">

    <ul>
        <li><g:link action="home" controller="user">Home</g:link></li>

        <g:if test="${session.user.role.equals('admin')}">
            <li><g:link action="list" controller="user">User</g:link></li>
            <li><g:link action="list" controller="question">Question</g:link></li>
        </g:if>
        <li><g:link action="logout" controller="user">Logout</g:link></li>
    </ul>
</div>

<div id="list-user" class="content scaffold-list" role="main">

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <tr>
            <td>
                %{--<g:select from="${["Math","English","Science"]}" name="questionCategory"/>--}%
            </td>
        </tr>
    </table>

    <g:form action="quiz" controller="quiz">

        <input type="hidden" name="id" value="${question.id}">
        <table>
            <tr>
                <td> ${question.question}</td>
            </tr>
            <tr>
                <td><input type="radio" name="option" value="${question.optionOne}">${question.optionOne} </td>
            </tr>
            <tr>
                <td><input type="radio" name="option" value="${question.optionTwo}">${question.optionTwo}</td>
            </tr>
            <tr>
                <td> <input type="radio" name="option" value="${question.optionThree}">${question.optionThree} </td>
            </tr>
            <tr>
                <td><input type="radio" name="option" value="${question.optionFour}">${question.optionFour} </td>
            </tr>
            <tr>
                <td><input type="submit" name="submit" value="Submit"></td>
            </tr>
        </table>
    </g:form>
</div>
</body>
</html>
