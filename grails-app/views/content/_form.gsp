<%@ page import="imodv6.Content" %>



<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'learningObjective', 'error')} required">
	<label for="learningObjective">
		<g:message code="content.learningObjective.label" default="Learning Objective" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="learningObjective" name="learningObjective.id" from="${imodv6.LearningObjective.list()}" optionKey="id" required="" value="${contentInstance?.learningObjective?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="content.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="priority" name="priority.id" from="${imodv6.ContentPriorityCode.list()}" optionKey="id" required="" value="${contentInstance?.priority?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'resources', 'error')} ">
	<label for="resources">
		<g:message code="content.resources.label" default="Resources" />
		
	</label>
	<g:select name="resources" from="${imodv6.ContentResource.list()}" multiple="multiple" optionKey="id" size="5" value="${contentInstance?.resources*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'topicTitle', 'error')} ">
	<label for="topicTitle">
		<g:message code="content.topicTitle.label" default="Topic Title" />
		
	</label>
	<g:textField name="topicTitle" value="${contentInstance?.topicTitle}"/>
</div>

