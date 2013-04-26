
<%@ page import="imodv6.Imod" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imod.label', default: 'Imod')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style type="text/css" media="screen">
			.list-imod-body{
				height:50%;
				background-color:#ffffff;
				margin-left:5%;
				margin-right:15%;
				margin-top:5%;
				margin-bottom:5.7%;
				overflow-y:scroll;
				padding-left:3.5%;
				padding-top:2%;
				-moz-box-shadow: 5px 5px 5px #888;
				-webkit-box-shadow: 5px 5px 5px #888;
				box-shadow: 5px 5px 5px #888;
			}
			#list-imod{
			}
		</style>	
			
	</head>
	<body>
			<div class="nav" role="navigation">
				<ul>
<%--					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--%>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
			
		<div class="list-imod-body">
			<div id="list-imod" class="content scaffold-list" role="main">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<g:link class="dashed-square" action="create" ><br/><br/><g:message code="default.new.label" args="[entityName]" /></g:link>
				<g:each in="${imodInstanceList}" status="i" var="imodInstance">
					<g:link action="edit" id="${imodInstance.id}" class="square"><br/><br/>${fieldValue(bean: imodInstance, field: "name")}</g:link>
				</g:each>
			</div>
		</div>
	</body>
</html>
