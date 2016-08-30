<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<<c:if test="${!status }">
<script>
	window.alert('${msg}');
	location.href='loginForm.do';
</script>

</c:if>
<<c:if test="${status }">
<script>
	window.alert('${msg}');
	opener.location.reload();
	window.self.close();
</script>

</c:if>
