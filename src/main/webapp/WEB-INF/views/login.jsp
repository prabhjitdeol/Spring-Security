<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>

	
	<script>
		$(document).ready(function(){
			var winheight = $(window).height(),
			head_height =$('.navbar').height() ;
			navheight= winheight - head_height;
			$('.navigation').css('height', navheight);
			
			var errorDiv = $(".flash-error");
	    	
	        if("${param.error}" == "true") {
	    		setTimeout(function(){
	        		errorDiv.slideDown();
	        	},2000);
	    	}
		});
	</script>
  </head>
  <body>
	<div class="login-cover">
		<div class="tablerow">
			<div class="loginblock">
				<form class="login-form" role="form" action="<c:url value='/j_spring_security_check'/>" method="post">
					<div class="singlerow">
						<label for="username"><spring:message code="label.emailAddress" /></label>
						<input type="text" name="j_username" placeholder="<spring:message code="label.emailAddress" />"
								onclick="$('.flash-error').slideUp();" />
					</div>
					<div class="singlerow">
						<label for="password"><spring:message code="label.password" /></label>
						<input type="password" name="j_password" placeholder="<spring:message code="label.password" />"
								onclick="$('.flash-error').slideUp();" />
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<button type="submit" class="btngreen btn btn-block"><spring:message code="label.signIn" /></button>
				</form>
			</div>
		</div> 
	</div>
  </body>
</html>
