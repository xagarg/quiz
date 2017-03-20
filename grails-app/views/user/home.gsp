
<%@ page import="quiz.Result; quiz.User" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<title><g:message code="default.list.label" args="[entityName]" /></title>
	<style>
	.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		padding-top: 100px; /* Location of the box */
		left: 0;
		top: 0;
		width: 50%; /* Full width */
		height: 50%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		align-self: center;
		padding-left: 25%;
	}

	/* Modal Content */
	.modal-content {
		background-color: #fefefe;
		margin: auto;
		padding: 20px;
		border: 1px solid #888;
		width: 80%;
	}

	/* The Close Button */
	#close {
		color: #aaaaaa;
		float: right;
		font-size: 28px;
		font-weight: bold;
	}

	#close:hover,
	#close:focus {
		color: #000;
		text-decoration: none;
		cursor: pointer;
	}
		.bodd{
			height: inherit;
			width: 100%;
			position: relative;
			text-align: center;

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
		<li><a href="#" id="myBtn">Quiz</a></li>
		<li><g:link action="logout" controller="user">Log out </g:link></li>
	</ul>
</div>



<div id="myModal" class="modal">

	<div class="modal-content">
		<span id="close">&times;</span>
		<g:form controller="quiz" action="fetchQuestion">
			Select Category: <g:select from="${["Math","English","Science","skjhdfkj"]}" name="questionCategory"/><br>
			<input style="margin-left: 123px;padding-top: 10px  " type="submit" value="Play Quiz">
		</g:form>
	</div>

</div>


<div class="message" role="status">
	<h3 style="text-align: center" >Welcome to quiz application</h3>

	<div id="bodd" class="bodd">
		<h1>Quiz</h1>
		<h2>Test Your IQ</h2>
	</div>

</div>

%{--
<div class="category" style="display:none" id="category">
	<g:form controller="quiz" action="fetchQuestion">
		Select Category: <g:select from="${["Math","English","Science","skjhdfkj"]}" name="questionCategory"/><br>
		<input style="margin-left: 123px;padding-top: 10px  " type="submit" value="Play Quiz">
	</g:form>
</div>
--}%


<script>
	/*  function showCategory() {
	 document.getElementById('category').style.display='';
	 }
	 */
    var modal = document.getElementById('myModal');

    var btn = document.getElementById("myBtn");

    var span = document.getElementById("close");
    btn.onclick = function() {


        modal.style.display = "block";
    }

    span.onclick = function() {
        alert("Are you sure you want to close");
        modal.style.display = "none";

    }


    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

</script>

</body>

</html>
