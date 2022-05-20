<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상점 정보 수정</title>
</head>
<body>
<div class="shopcontainer">
		<form id="shop_edit" name="shop_edit" method="post"
			action="shop_edit.do" enctype="multipart/form-data"
			onSubmit="return Check()">
			<!--  <input type="hidden" id="s_status" name="s_status" value="1"> -->
			<input type="hidden" id="s_seckey" name="s_seckey" value="1111">
			<table border="1">
				<tr>
					<td>email</td>
					<td>
					<input type="text" id="s_email" name="s_email">
					<!-- <input type="button" value="아이디 중복체크" class="input_button"
      				onclick="id_check()" />
      				<div id="idcheck"></div> -->
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" id="s_passwd" name="s_passwd"></td>
				</tr>
				<tr>
					<td>비밀번호확인</td>
					<td><input type="password" id="s_passwd1" name="s_passwd1"></td>
				</tr>
				<tr>
					<td>상호명</td>
					<td><input type="text" id="s_name" name="s_name"></td>
				</tr>
				<tr>
					<td>대표자명</td>
					<td><input type="text" id="s_ceo" name="s_ceo"></td>
				</tr>
				<tr>
					<td>사업자번호</td>
					<td><input type="text" id="s_bizno" name="s_bizno"></td>
				</tr>
				<tr>
					<td>통신판매업번호</td>
					<td><input type="text" id="s_tongsin" name="s_tongsin"></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input type="text" id="s_post" name="s_post"> <input
						type="button" value="우편번호검색" onclick="openDaumPostcode()" /></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" id="s_address" name="s_address"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" id="s_tel" name="s_tel"></td>
				</tr>
				<tr>
					<td>은행명</td>
					<td><input type="text" id="s_bank" name="s_bank"></td>
				</tr>
				<tr>
					<td>정산계좌</td>
					<td><input type="text" id="s_account" name="s_account"></td>
				</tr>
				<tr>
					<td>서류첨부</td>
					<td>
						<!-- <input type="file" id="s_file" name="s_file1" > -->
						<!-- <input  type="file" id="s_file" name="s_file1" class="form-control" onChange="readImage(this)" multiple="multiple"/> -->
					    <input type="file" id="s_file" name="s_file1" class="form-control" onChange="readImage(this)"/>
			            <img style="width: 200px;" id="previewImage" src="#">
			            
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" id="submit" value="상점정보수정"></td>
				</tr>

			</table>

		</form>
	</div>
</body>
</html>