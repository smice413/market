<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/viewConfiguration.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입점신청</title>
<!-- 상점상태: 승인대기중(1) 승인(2) 폐점(3) -->

<script src="<%=request.getContextPath()%>/js/shop.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
//우편번호, 주소 Daum API
function openDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {				
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			// 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
			document.getElementById('s_post').value = data.zonecode;
			document.getElementById('s_address').value = data.address;				
		}
	}).open();
}
</script>
<script>
 // 단일 파일 업로드
 function readImage(input) {
    if (input.files && input.files[0]) {
      //  const reader = new FileReader();
        var reader = new FileReader();
        
        reader.onload = function(e) {
           $('#previewImage').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
    }
} 
/*  // 다중 파일 업로드 미리보기
	var img_files = [];
function readImage(n){
	
	var filesArr = Array.prototype.slice.call(n.result.files);
	
	filesArr.forEach(function(f){
		img_files.push(f);
		var reader = new FileReader();
		reader.onload = function(e) {
	           $('#previewImage').attr('src', e.target.result);
	        }
	       reader.readAsDataURL(f);
		});
} */

$( document ).ready(function() {
	$("#showfileBtn").click(function(e){
		//e.stopPropagation();
		$("#s_file").click();
	});
	
	$("#s_file").change(function(){
		var fileNm = $(this).val();
		var index = fileNm.lastIndexOf("\\");
		fileNm = fileNm.substring(index+1);
		$("#s_file_nm").val(fileNm);
	});
});

</script>

</head>
<body>
	<div class="shopcontainer">
		<form id="shop_join" name="shop_join" method="post"
			action="shop_join.do" enctype="multipart/form-data"
			onSubmit="return Check()">
			<!--  <input type="hidden" id="s_status" name="s_status" value="1"> -->
			<input type="hidden" id="s_seckey" name="s_seckey" value="1111">
			<table border="1">
				<tr>
					<td>email</td>
					<td>
					<input type="text" id="s_email" name="s_email" onClick="button()">
					<input type="button" id="emailck" value="email중복체크" class="input_button"
      				onclick="email_check()" />
      				<div id="emailcheck"></div>
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
					    <input type="file" id="s_file" name="s_file1" class="form-control" onChange="readImage(this)" style="display:none;"/>
					    
					    <div class="input-group" style="display: flex;">
						    <input type="text" id="s_file_nm" name="s_file_nm" class="form-control" readonly="readonly" style="width: 74%;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;"/>
						    <div class="input-group-append">
						    	<button type="button" id="showfileBtn" style="line-height: 28px;">파일선택</button>
							</div>
			            </div>
			            <img style="width: 200px;" id="previewImage" src="#">
			            
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
					<input type="submit" id="submit" value="상점신청" disabled="disabled"></td>
				</tr>

			</table>

		</form>
	</div>
</body>
</html>