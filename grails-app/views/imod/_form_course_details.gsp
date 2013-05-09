<%@ page import="imodv6.Imod" %>

<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="imod.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${imodInstance?.name}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'imodNumber', 'error')} ">
	<label for="imodNumber">
		<g:message code="imod.imodNumber.label" default="Course Number" />
		
	</label>
	<g:textField name="imodNumber" value="${imodInstance?.imodNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="imod.url.label" default="Url" />
		
	</label>
	<g:textField name="url" value="${imodInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'courseLocation', 'error')} ">
	<label for="courseLocation">
		<g:message code="imod.courseLocation.label" default="Classroom Location" />
		
	</label>
	<g:textField name="courseLocation" value="${imodInstance?.courseLocation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'courseSemester', 'error')} ">
	<label for="courseSemester">
		<g:message code="imod.courseSemester.label" default="Semester" />
		
	</label>
	<g:textField name="courseSemester" value="${imodInstance?.courseSemester}"/>
</div>

<%--div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'instructors', 'error')} ">
	<label for="instructors">
		<g:message code="imod.instructors.label" default="Instructors" />
		
	</label>
	<g:select name="instructors" from="${imodv6.Instructor.list()}" multiple="multiple" optionKey="id" size="5" value="${imodInstance?.instructors*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'instructors', 'error')} ">
	<label for="instructors">
		<g:message code="imod.instructors.label" default="Instructors" />
		
	</label>
		
	<ul class="one-to-many">
		<%--g:each in="${imodInstance?.instructors?}" var="l">
		    <li><g:link controller="instructor" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
		</g:each> 
		<li class="add">
			<g:link controller="instructor" action="create" params="['imod.id': imodInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'instructor.label', default: 'Instructor')])}</g:link>
		</li>
	</ul>
</div>  --%>