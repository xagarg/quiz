
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">

		<title>Login Page </title>
		<style>
			#create-user{
				padding: 100px;
				align-content: space-around;
			}
			#create-user td{
				padding: 10px;
				margin: auto;
				align-content: space-around;
				font-style: inherit;
			}

			input{
				padding: 10px;
				width: 100%;
				margin: 10px;
				border-radius: 10px;
			}
			#submit{
				cursor: all-scroll;
				background-color:#3b5998;
				margin: 10px;
				padding: 10px;
				width: 100%;
				color: white;
			}
		</style>
	</head>
	<body>
		<a href="#create-user" class="skip" tabindex="-1"></a>
		<div class="nav" role="navigation">

		</div>

		<div id="create-user" class="content scaffold-create" role="main">

			<g:form action="login" controller="user" >

				User Name:<input type="text" name="userName">
				Password :<input type="password" name="password">

				<input id="submit" type="submit" value="login">


			</g:form>
		</div>
</body>
</html>
