<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result1 == 1 }">
<script>
	alert("수정이 완료되었습니다");
	location.href="shop_info.do";
</script>
</c:if>
<c:if test="${result1 != 1 }">
<script>
	alert("수정을 실패하였습니다.");
	history.go(-1);
</script>
</c:if>
</body>
</html>