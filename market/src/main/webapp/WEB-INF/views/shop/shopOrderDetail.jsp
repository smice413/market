<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../common/viewConfiguration.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 주문 상세 확인</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/menuShop.jsp" %>
<div class="container" align="center">
<c:set var="o" value="${odlist}"></c:set>
	<h2 class="text-primary">주문번호 : ${o[0].o_no}</h2>
	<table class="table table-hover">
		<tr>
			<td>총주문액</td>
			<td>할인금액</td>
			<td>결제금액</td>
			<td>결제방법</td>
			<td>주문일자</td>
			<td></td>
		</tr>
		<tr>
			<td>${o[0].o_total_price }</td>
			<td>${o[0].o_sale_price }</td>
			<td>${o[0].o_pay_price }</td>
			<td>${o[0].o_pay_type }</td>
			<td>
				<fmt:formatDate value="${o[0].o_date}" pattern="yyyy-MM-dd HH:mm"/>
			</td>
			<td>
				<input type="button" value="배송">
				<input type="button" value="일괄취소">
			</td>
		</tr>
	</table>
	<table class="table table-hover">
		<tr>
			<td>상품주문번호</td>
			<td>상품번호</td>
			<td>상품명</td>
			<td>주문수량</td>
			<td>상품금액</td>
			<td>상태</td>
			<td></td>
		</tr>
		<c:forEach var="od" items="${odlist}">
		<tr>
			<td>${od.op_no }</td>
			<td>${od.p_no }</td>
			<td>${od.p_name }</td>
			<td>${od.op_qty }</td>
			<td>${od.p_sell_price }</td>
			<td>${od.op_status }</td>
			<td>
				<input type="button" value="개별취소">
			</td>
		</tr>
		</c:forEach>
	</table>
<%@ include file="../common/footer.jsp" %>
</div>
</body>
</html>