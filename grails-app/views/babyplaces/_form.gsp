
%{--<div class="row">--}%
	%{--<div class="col-sm-6">--}%
		%{--<div class="form-group">--}%
			%{--<label for="Pname">Place Name</label>--}%
			%{--<g:textField class="form-control" name="Pname" id="Pname"  value="${babyplacesInstance?.placeName}"/>--}%
		%{--</div>--}%
	%{--</div>--}%

	%{--<div class="col-sm-6">--}%
		%{--<div class="form-group">--}%
			%{--<label for="location">Location</label>--}%
			%{--<g:textField class="form-control" name="location" id="location"  value="${babyplacesInstance?.location}"/>--}%
		%{--</div>--}%
	%{--</div>--}%
%{--</div>--}%

%{--<br>--}%

%{--<div class="row">--}%
	%{--<div class="col-sm-6">--}%
		%{--<div class="form-group">--}%
			%{--<label for="contact">Contact</label>--}%
			%{--<g:textField class="form-control" name="contact" id="contact"  value="${babyplacesInstance?.contact}"/>--}%
		%{--</div>--}%
	%{--</div>--}%

	%{--<div class="col-sm-6">--}%
		%{--<div class="form-group">--}%
			%{--<label for="photo">Choose Photo</label>--}%
			%{--<div class="input-group">--}%
				%{--<input type="file" class="file optional" name="CompanyPhoto" id="photo" content=""/>--}%
			%{--</div>		</div>--}%
	%{--</div>--}%
%{--</div>--}%

%{--<br>--}%


%{--<div class="row">--}%
	%{--<div class="col-sm-12">--}%
		%{--<div class="form-group">--}%
			%{--<label for="description">Description</label>--}%
			%{--<g:textArea class="form-control" name="description" id="description"  value="${babyplacesInstance?.description}"/>--}%
		%{--</div>--}%
	%{--</div>--}%

%{--</div>--}%

<div class="container">
<div class="fieldcontain ${hasErrors(bean: babyplacesInstance, field: 'contact', 'error')} required">
<div class="form-group">
	<label for="contact">
		<g:message code="babyplaces.contact.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contact" required="" class="form-control" value="${babyplacesInstance?.contact}"/>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: babyplacesInstance, field: 'description', 'error')} required">
<div class="form-group">
	<label for="description">
		<g:message code="babyplaces.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" class="form-control" required="" value="${babyplacesInstance?.description}"/>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: babyplacesInstance, field: 'location', 'error')} required">
<div class="form-group">
	<label for="location">
		<g:message code="babyplaces.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" class="form-control" value="${babyplacesInstance?.location}"/>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: babyplacesInstance, field: 'placeName', 'error')} required">
<div class="form-group">
	<label for="placeName">
		<g:message code="babyplaces.placeName.label" default="Place Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placeName" required="" class="form-control" value="${babyplacesInstance?.placeName}"/>
</div>
</div>
</div>

