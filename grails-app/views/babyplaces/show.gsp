

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'babyplaces.label', default: 'Babyplaces')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>

	</head>
	<body>
		
	<div class="col-md-12">
		
			
			<div class="col-md-6">
				
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Details</a></li>
    <li><a data-toggle="tab" href="#menu1">View in Map</a></li>
    <li><a data-toggle="tab" href="#menu2">Review</a></li>
  </ul>
<br>
  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
     <g:if test="${babyplacesInstance?.placeName}">
				<span class="glyphicon glyphicon-user"></span>
				<span><strong>place Name:</strong></span><br>
				<p>${babyplacesInstance?.placeName}</p>
				</g:if>
				<hr style="border-top: 1px solid #4c260a;">
			
				<g:if test="${babyplacesInstance?.description}">
				<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
				<span><strong>Description:</strong></span><br>
				<p>${babyplacesInstance?.description}</p>
				</g:if>
			<hr style="border-top: 1px solid #4c260a;">
				<g:if test="${babyplacesInstance?.location}">
				<span class="glyphicon glyphicon-map-marker"></span>
				<span><strong>Location:</strong></span><br>
				<p>${babyplacesInstance?.location}</p>
				</g:if>
			<hr style="border-top: 1px solid #4c260a;">
				<g:if test="${babyplacesInstance?.contact}">
				<span class="glyphicon glyphicon-phone"></span>
				<span><strong>Contact:</strong></span><br>
				<p>${babyplacesInstance?.contact}</p>
				</g:if>
				<hr style="border-top: 1px solid #4c260a;">
			

    </div>
    <div id="menu1" class="tab-pane fade">
      
    </div>
    <div id="menu2" class="tab-pane fade">
     
    </div>
   
  </div>
</div>
				
			
		
		<div class="col-md-6">
			<div style="height:350px;width:100%;border:solid;margin-top:36px">
			</div>
		</div>
	</div>
	</body>
</html>
