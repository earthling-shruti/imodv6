<%@ page import="imodv6.Imod" %>


<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="imod.schedule.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="schedule.startDate" precision="day"  value="${imodInstance?.schedule?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: imodInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="imod.schedule.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="schedule.endDate" precision="day"  value="${imodInstance?.schedule?.endDate}"  />
</div>
