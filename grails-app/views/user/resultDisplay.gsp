<%
    def resultInstanceResultDisplay =Result.list()
    int total=0
%>

<%@ page import="quiz.Result;quiz.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.list.label" args="[entityName]" /></title>

    <style>
        .correct{
            background-color: inherit;
        }
        .notcorrect{

            text-decoration-color: red;
            background-color: red;
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


<div class="category" style="display:none" id="category">
    <g:form controller="quiz" action="fetchQuestion">
        Select Category: <g:select from="${["Math","English","Science","skjhdfkj"]}" name="questionCategory"/><br>
        <input style="margin-left: 123px;padding-top: 10px  " type="submit" value="Play Quiz">
    </g:form>

</div>

<div style=" text-align: center">
    <h3>Your score is : ${marks} </h3>

</div>

<div>
    <table>
        <thead>
        <tr>
            <td>Question</td> <td>Clicked Answer</td><td> Correct Answer </td><td> Mark</td>
        </tr>
        </thead>
    <g:each in="${resultInstanceResultDisplay}" var="result">
        <tr class="${result.correctAns == result.clickedAns ? 'correct' :'notcorrect'}">
        <td>${fieldValue(bean: result, field: "question")}</td>
        <td>${fieldValue(bean: result, field: "clickedAns")}</td>
        <td>${fieldValue(bean: result, field: "correctAns")}</td>
        <td>${fieldValue(bean: result, field: "marks")}</td>
        <% total= total +result.marks.intValue() %>
        </tr>
    </g:each>
        <tr>
        <td>&nbsp;</td>
        <td>Total</td>
        <td>Score</td>
        <td>${total}</td>
        </tr>
    </table>
</div>


</body>
</html>
