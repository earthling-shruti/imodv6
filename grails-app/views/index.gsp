<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to IMOD</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		<div id="page-body" role="main">
			<h1>Welcome to IMOD</h1>
			<p>Welcome to IMOD! The Instructional Module Development (IMoD) 
				system guides instructors, step-by-step, through an 
				outcome-based education process as they define learning 
				objectives, select content to be covered, and define the 
				learning environment and context for their course(s). The 
				IMoD software system uses Semantic Web technologies 
				to provide intelligent interactions with users; dictate a 
				course design process in conformance with the underlying 
				framework and provides feedback to the user on their 
				course design.
			</p>
			<br/>
			<br/>
			<div id='login'>
				<div class='inner'>
					<div class='fheader'><g:message code="springSecurity.login.header"/></div>
			
					<g:if test='${flash.message}'>
						<div class='login_message'>${flash.message}</div>
					</g:if>
			
					<form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
						<p>
							<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
							<input type='text' class='text_' name='j_username' id='username'/>
						</p>
			
						<p>
							<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
							<input type='password' class='text_' name='j_password' id='password'/>
						</p>
			
						<p id="remember_me_holder">
							<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
							<label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
						</p>
			
						<p>
							<input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
						</p>
					</form>
				</div>
			</div>
		
		</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
	</body>
</html>
