<%@ page import="imodv6.Schedule" %>



<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="schedule.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${scheduleInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'endOccurences', 'error')} required">
	<label for="endOccurences">
		<g:message code="schedule.endOccurences.label" default="End Occurences" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="endOccurences" type="number" value="${scheduleInstance.endOccurences}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'friday', 'error')} required">
	<label for="friday">
		<g:message code="schedule.friday.label" default="Friday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="friday" type="number" value="${scheduleInstance.friday}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'imod', 'error')} required">
	<label for="imod">
		<g:message code="schedule.imod.label" default="Imod" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="imod" name="imod.id" from="${imodv6.Imod.list()}" optionKey="id" required="" value="${scheduleInstance?.imod?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'monday', 'error')} required">
	<label for="monday">
		<g:message code="schedule.monday.label" default="Monday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="monday" type="number" value="${scheduleInstance.monday}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'repeats', 'error')} ">
	<label for="repeats">
		<g:message code="schedule.repeats.label" default="Repeats" />
		
	</label>
	<g:textField name="repeats" value="${scheduleInstance?.repeats}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'repeatsDays', 'error')} ">
	<label for="repeatsDays">
		<g:message code="schedule.repeatsDays.label" default="Repeats Days" />
		
	</label>
	<g:textField name="repeatsDays" value="${scheduleInstance?.repeatsDays}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'repeatsEvery', 'error')} ">
	<label for="repeatsEvery">
		<g:message code="schedule.repeatsEvery.label" default="Repeats Every" />
		
	</label>
	<g:textField name="repeatsEvery" value="${scheduleInstance?.repeatsEvery}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'saturday', 'error')} required">
	<label for="saturday">
		<g:message code="schedule.saturday.label" default="Saturday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="saturday" type="number" value="${scheduleInstance.saturday}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="schedule.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${scheduleInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'sunday', 'error')} required">
	<label for="sunday">
		<g:message code="schedule.sunday.label" default="Sunday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sunday" type="number" value="${scheduleInstance.sunday}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'thursday', 'error')} required">
	<label for="thursday">
		<g:message code="schedule.thursday.label" default="Thursday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="thursday" type="number" value="${scheduleInstance.thursday}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'tuesday', 'error')} required">
	<label for="tuesday">
		<g:message code="schedule.tuesday.label" default="Tuesday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tuesday" type="number" value="${scheduleInstance.tuesday}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: scheduleInstance, field: 'wednesday', 'error')} required">
	<label for="wednesday">
		<g:message code="schedule.wednesday.label" default="Wednesday" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="wednesday" type="number" value="${scheduleInstance.wednesday}" required=""/>
</div>

