<%@ page import="question.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="question.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="question" required="" value="${questionInstance?.question}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="question.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="category" from="${questionInstance.constraints.category.inList}" required="" value="${questionInstance?.category}" valueMessagePrefix="question.category"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionOne', 'error')} required">
	<label for="optionOne">
		<g:message code="question.optionOne.label" default="Option One" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionOne" required="" value="${questionInstance?.optionOne}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionTwo', 'error')} required">
	<label for="optionTwo">
		<g:message code="question.optionTwo.label" default="Option Two" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionTwo" required="" value="${questionInstance?.optionTwo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionThree', 'error')} required">
	<label for="optionThree">
		<g:message code="question.optionThree.label" default="Option Three" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionThree" required="" value="${questionInstance?.optionThree}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'optionFour', 'error')} required">
	<label for="optionFour">
		<g:message code="question.optionFour.label" default="Option Four" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="optionFour" required="" value="${questionInstance?.optionFour}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'correctAnswer', 'error')} required">
	<label for="correctAnswer">
		<g:message code="question.correctAnswer.label" default="Correct Answer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="correctAnswer" required="" value="${questionInstance?.correctAnswer}"/>
</div>

