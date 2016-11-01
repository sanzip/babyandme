

<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'babyplaces.label', default: 'Babyplaces')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="container">
				<div class="row">
					<div class="col-md-12">
<g:each in="${babyplacesInstanceList}" status="i" var="babyplacesInstance">
<div class="col-md-3">
			<div class="card" >
  <img class="card-img-top" src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQwuGcqgSW39mEDmw28IQsLHeNx75MjiM6GLt5OTecqrZ9nVfemvA" alt="Card image cap">
  <div class="card-block">
    <h4 class="card-title" style="text-align:center;text-decoration:blink">${babyplacesInstance.placeName}</h4><hr>

    <p class="card-text" style="text-align:center"> <span class="glyphicon glyphicon-map-marker" style="color:red"></span>&nbsp${babyplacesInstance.location}</p><hr>
   <g:link action="show" class="btn btn-primary"id="${babyplacesInstance.id}" style="margin-left: 40px;">View Details</g:link></td>
  </div>
</div>
</div>
</g:each>
</div>
			<!-- <table>
			<thead>
					<tr>
					
						<g:sortableColumn property="contact" title="${message(code: 'babyplaces.contact.label', default: 'Contact')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'babyplaces.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'babyplaces.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="placeName" title="${message(code: 'babyplaces.placeName.label', default: 'Place Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${babyplacesInstanceList}" status="i" var="babyplacesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${babyplacesInstance.id}">${fieldValue(bean: babyplacesInstance, field: "contact")}</g:link></td>
					
						<td>${fieldValue(bean: babyplacesInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: babyplacesInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: babyplacesInstance, field: "placeName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table> -->
			<div class="pagination">
				<g:paginate total="${babyplacesInstanceCount ?: 0}" />
			</div>
		</div>
		</div>
</div>

	</body>
</html>
