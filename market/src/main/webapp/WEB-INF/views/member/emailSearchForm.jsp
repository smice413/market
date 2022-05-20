<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/viewConfiguration.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디(이메일) 찾기</title>
<script type="text/javascript">
	function chk() {
		if (frm.m_name.value == "") {
			alert("이름을 작성해주세요");  
			frm.m_name.focus();
			return false;
		}
	}
	function chk() {
		if (frm.m_tel.value == "") {
			alert("전화번호를 작성해주세요");  
			frm.m_tel.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<%@ include file="../common/menuMyPage.jsp"%>
	<div class="container" align=center>
		<div class="vf-wide700-card">
			<div id="join_wrap">
				<h2 class="join_title">아이디(이메일) 찾기</h2>
				<form method="post" action="emailSearch.do" name="frm" onsubmit="return chk()">
					<input type="hidden" id="m_seckey" name="m_seckey" value="111">

					<table id="emailSearch" class="table">
						
						<tr>
							<th>회원이름</th>
							<td><input name="m_name" id="m_name" size="14"
								class="input_box" required="required"/></td>
						</tr>
						<tr>
							<th>핸드폰번호</th>
							<td><input name="m_tel" id="m_tel" size="14"
								class="input_box" required="required"/></td>
						</tr>
					</table>

					<div id="search_menu">
						<input type="submit" value="이메일확인" class="btn btn-success" /> 
						<input type="reset" value="취소" class="btn btn-outline-success"
							onclick="$('#m_name').focus();" />
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
</body>
</html>
</form>
</body>
</html>