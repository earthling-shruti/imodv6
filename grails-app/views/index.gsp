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

	#login {
		margin: 15px 0px;
		padding: 0px;
		text-align: center;
	}

	#login .inner {
		width: 340px;
		padding-bottom: 6px;
		text-align: left;
		border: 1px solid #aab;
		background-color: #f0f0fa;
		-moz-box-shadow: 2px 2px 2px #eee;
		-webkit-box-shadow: 2px 2px 2px #eee;
		-khtml-box-shadow: 2px 2px 2px #eee;
		box-shadow: 2px 2px 2px #eee;
	}
	
	#login .inner .fheader {
		padding: 18px 26px 14px 26px;
		background-color: #f7f7ff;
		margin: 0px 0 14px 0;
		color: #2e3741;
		font-size: 18px;
		font-weight: bold;
	}

	#login .inner .cssform p {
		clear: left;
		margin: 0;
		padding: 4px 0 3px 0;
		padding-left: 105px;
		margin-bottom: 20px;
		height: 1%;
	}

	#login .inner .cssform input[type='text'] {
		width: 120px;
	}

	#login .inner .cssform label {
		font-weight: bold;
		float: left;
		text-align: right;
		margin-left: -105px;
		width: 110px;
		padding-top: 3px;
		padding-right: 10px;
	}

	#login #submit {
		margin-left: 15px;
	}

	#login #remember_me_holder label {
		float: none;
		margin-left: 0;
		text-align: left;
		width: 200px
	}

	#login .inner .login_message {
		padding: 6px 25px 10px 15px;
		color: #c33;
	}

	#login .inner .text_ {
		width: 120px;
	}

	#login .inner .chk {
		height: 12px;
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
