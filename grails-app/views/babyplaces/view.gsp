

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'babyplaces.label', default: 'Babyplaces')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-babyplaces" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list babyplaces">
			
				<g:if test="${babyplacesInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="babyplaces.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${babyplacesInstance}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${babyplacesInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="babyplaces.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${babyplacesInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${babyplacesInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="babyplaces.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${babyplacesInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${babyplacesInstance?.placeName}">
				<li class="fieldcontain">
					<span id="placeName-label" class="property-label"><g:message code="babyplaces.placeName.label" default="Place Name" /></span>
					
						<span class="property-value" aria-labelledby="placeName-label"><g:fieldValue bean="${babyplacesInstance}" field="placeName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:babyplacesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${babyplacesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
