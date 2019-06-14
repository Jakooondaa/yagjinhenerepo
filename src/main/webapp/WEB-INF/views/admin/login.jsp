<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${hasError}"> showNewForm();

function showNewForm();{
$('#exampleModal').modal('show');
			
			$.ajax({url : "/admin/user/loginError"}).done(function(data) {
				$('#modalNew').html(data);
			});
		}

</c:if>

<form action="login" method="POST">
	<input type="text" name="username"/>
	<input type="password" name="password"/>	
	<button type="submit">Нэвтрэх</button>
</form>