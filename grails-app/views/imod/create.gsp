<%@ page import="imodv6.Imod" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imod.label', default: 'Imod')}" />
        <style type="text/css" media="screen">
        	#tabs-container{
        		margin-left:2.5%;
        		margin-right:17.5%;
        		margin-top:5%;
        		margin-bottom:10.5%;
        		font-size:12px;
        	}
        	.ui-tabs-anchor{
        		font-family: "Ubuntu";
        	}
        	.buttons{
        		width:20%;
        		position:absolute;
        		right:0;
        	}
        	.ui-widget-content{
        		font-family:"Ubuntu";
        	}
        	#tabs-2{
        		margin-bottom:23.5%;
        	}
        	#tabs-3{
        		margin-bottom:18.74%;
        	}
        	#tabs-4{
        		margin-bottom:23.5%;
        	}
        	#tabs-5{
        		margin-bottom:25.1%;
        	}
			
			td{
				padding:15px;
			}
			.buttons{
				top:20px;
			}
        	.course_overview_form{
        		padding: 0px 0px 20px 0px;
				border: solid 1px #000;
        	}
        	.form_title{
				background: #0A1629;
				top:0;
				color: #ffffff;
        	}
        </style>
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
		<r:require module="jqueryui" />
		<script>
		  $(document).ready(function() {
		    $("#tabs").tabs();
		  });
		</script>
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body onLoad="myFunc()">
		<a href="#create-imod" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="tabs-container">
			<div id="tabs">
			  	<ul>
			    	<li><a href="#tabs-1">Course Overview</a></li>
			    	<li><a href="#tabs-2">Learning Objectives</a></li>
				    <li><a href="#tabs-3">Content</a></li>
				    <li><a href="#tabs-4">Assessment</a></li>
				    <li><a href="#tabs-5">Pedagogy</a></li>
				</ul>
				<div id="tabs-1">
					<div id="create-imod" class="content scaffold-create" role="main">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<g:hasErrors bean="${imodInstance}">
							<ul class="errors" role="alert">
								<g:eachError bean="${imodInstance}" var="error">
								<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
								</g:eachError>
							</ul>
						</g:hasErrors>
						<g:form action="save" >
							<fieldset class="form">
								 <table>
								    	<tr height="50px">
									    	<td />
									    	<td>
												<fieldset class="buttons">
													<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
												</fieldset>
											</td>
										</tr>
										<tr>
											<td>
												<div class="course_overview_form">
													<div class="form_title">Course Details</div>
													<g:render template="form_course_details"/>
												</div>
											</td>
											<td>
												<div class="course_overview_form">
													<div class="form_title">Schedule</div>
													<g:render template="form_course_schedule" />
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<div class="course_overview_form">
													<div class="form_title">Course Description</div>
													<g:render template="form_course_description"/>
												</div>
											</td>
											<td />
										</tr>
									</table>
								</fieldset>
						</g:form>
					</div>

				</div>
				<div id="tabs-2">
				    <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
				</div>
				<div id="tabs-3">
				    <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
				    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
				</div>
				<div id="tabs-4">
				    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
				</div>
				<div id="tabs-5">
				    <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
				</div>
			</div>
		</div>
	</body>
</html>
