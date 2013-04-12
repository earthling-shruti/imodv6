
<%@ page import="imodv6.Imod" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'imod.label', default: 'Imod')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-imod" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-imod" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'imod.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="creditHours" title="${message(code: 'imod.creditHours.label', default: 'Credit Hours')}" />
					
						<g:sortableColumn property="numberOfSeats" title="${message(code: 'imod.numberOfSeats.label', default: 'Number Of Seats')}" />
					
						<th><g:message code="imod.coursePolicy.label" default="Course Policy" /></th>
					
						<th><g:message code="imod.schedule.label" default="Schedule" /></th>
					
						<th><g:message code="imod.scheduleDate.label" default="Schedule Date" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${imodInstanceList}" status="i" var="imodInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${imodInstance.id}">${fieldValue(bean: imodInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: imodInstance, field: "creditHours")}</td>
					
						<td>${fieldValue(bean: imodInstance, field: "numberOfSeats")}</td>
					
						<td>${fieldValue(bean: imodInstance, field: "coursePolicy")}</td>
					
						<td>${fieldValue(bean: imodInstance, field: "schedule")}</td>
					
						<td>${fieldValue(bean: imodInstance, field: "scheduleDate")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${imodInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
