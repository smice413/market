<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../common/viewConfiguration.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환불관리</title>
</head>
<body>
<!-- 커밋테스트 -->
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/menuShop.jsp" %>
<div class="container" align="center">
	<h2 class="text-primary">환불관리</h2>
	<table class="table table-hover">
		<tr>
			<td>주문상품번호</td>
			<td>주문자</td>
			<td>수량</td>
			<td>환불금액</td>
			<td>환불사유</td>
			<td>환불일자</td>
			<td>환불상태</td>
			<td>기타</td>
		</tr>
		<c:forEach var="op" items="${oplist}">
			<tr>
			<td>${op.op_no}</td>
			<td>${op.m_email}</td>
			<td>${op.op_qty}</td>
			<td>${op.op_refund}</td>
			<td>${op.op_refund_why}</td>
			<td>${op.op_refund_date}</td>
			<td style="text-align: left;">
			<c:if test="${op.op_status == '1' }">공동구매대기</c:if>
			<c:if test="${op.op_status == '2' }">공동구매실패</c:if>
			<c:if test="${op.op_status == '3' }">배송전 </c:if>
			<c:if test="${op.op_status == '4' }">주문취소</c:if>
			<c:if test="${op.op_status == '5' }">품절취소</c:if>
			<c:if test="${op.op_status == '6' }">출고완료</c:if>
			<c:if test="${op.op_status == '7' }">배송완료 </c:if>
			<c:if test="${op.op_status == '8' }">환불요청중</c:if>
			<c:if test="${op.op_status == '9' }">환불거부</c:if>
			<c:if test="${op.op_status == '10' }">환불완료</c:if>
			<c:if test="${op.op_status == '11' }">거래완료</c:if>
			</td>
			<td>
				<input type=button value="승인"
				onclick="if(confirm('승인하시겠습니까?'))location.href=
				 '#'">
				<input type=button value="거절"
				onclick="if(confirm('거절하시겠습니까?'))location.href=
				 '#'">
			</td>
			</tr>
		</c:forEach>
	</table>
<%@ include file="../common/footer.jsp" %>
</div>
</body>
</html>