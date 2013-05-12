<%@ page import="imodv6.Imod" %>

<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'instructors', 'error')} ">

	<g:link controller="instructor" action="create" params="['imod.id': imodInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'instructor.label', default: 'Instructor')])}</g:link>
		<table id="custom_instructor">
			<thead>
				<tr>
					<g:sortableColumn property="lastName" title="${message(code: 'imod.instructor.lastName.label', default: 'Last Name')}" />
					<g:sortableColumn property="firstName" title="${message(code: 'imod.instructor.firstName.label', default: 'First Name')}" />
					<g:sortableColumn property="email" title="${message(code: 'imod.instructor.email.label', default: 'Email')}" />
					<g:sortableColumn property="officeHours" title="${message(code: 'imod.instructor.officeHours.label', default: 'Office Hours')}" />
					<g:sortableColumn property="webPage" title="${message(code: 'imod.instructor.webPage.label', default: 'Web Page')}" />
				</tr>
			</thead>
			<tbody>
				<g:each in="${imodInstance?.instructors?}" var="i">
				    <tr>
				    	<td><g:textField name="lastName" value="${i.lastName}"/></td>
						<td><g:textField name="firstName" value="${i.firstName}"/></td>
						<td><g:textField name="email" value="${i.email}"/></td>
						<td><g:textField name="officeHours" value="${i.officeHours}"/></td>
						<td><g:textField name="webPage" value="${i.webPage}"/></td>
				    </tr>
				</g:each>
			</tbody>
		</table>
</div>
