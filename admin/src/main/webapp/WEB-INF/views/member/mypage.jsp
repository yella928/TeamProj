<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ include file="../Basic/head.jsp" %>
 <%@ include file="../Basic/top_Login.jsp" %>
 <%@ include file="top.jsp" %>
<script type="text/javascript">
	function check(){
		if(f.passwd.value == ""){
			alert("비밀번호를 입력해 주세요!!")
			f.passwd.focus()
			return
			
		}
		if(f.passwd.value != "${sedto.passwd}"){
			alert("비밀번호가 틀립니다")
			f.passwd.focus()
			return
			
		}
		document.f.submit();
		
	}
</script>
<div align = "center"style="margin-top:90px">
	<form name = "f" action = "member_edit_ok.do?mode=mypage" method = "post" enctype="multipart/form-data">
		<input type="hidden" name="member_no" value="${sedto.member_no}">
		<input type = "hidden" name = "id" value = "${sedto.id}">
		<input type=  "hidden" name = "ssn1" value = "${sedto.ssn1}">
		<input type=  "hidden" name = "ssn2" value = "${sedto.ssn2}">
		<input type = "hidden" name = "name" value = "${sedto.name}">
		<input type = "hidden" name = "sex" value = "${sedto.sex}">
		<input type = "hidden" name = "position" value = "${sedto.position}" >
		<input type = "hidden" name = "point" value = "${sedto.point}">
		<input type = "hidden" name = "joindate" value = "${sedto.joindate}">
		<input type = "hidden" name = "filename" value = "${sedto.filename }">
		<table class = "outline" border = "1">
			<tr>
				<td rowspan = "4" align = "center">
					<img src="${pageContext.request.contextPath}/resources/img/${sedto.filename}" width = "80" height = "80">
				</td>
			</tr>
			<tr>
				<th align = "center">이름</th>
				<td><input type = "text" value = "${sedto.name}" size = "10" disabled></td>
			</tr>
			<tr>
				<th align = "center">아이디</th>
				<td><input type = "text" name = "id" value = "${sedto.id}" size = "10" disabled></td>
			</tr>
			<tr>
				<th align = "center">비밀번호</th>
				<td><input type = "password" name = "passwd" size = "10"></td>
			</tr>
			<tr>
				<th align = "center">이미지 수정</th>
				<td colspan = "3"><input type = "file" name = "new_filename"></td>
			</tr>
			<tr>
				<th align = "center">주민번호</th>
				<td colspan = "3">
					<input type = "text" name = "ssn1" value = "${sedto.ssn1}" size = "10" disabled> - 
					<input type = "password" name = "ssn2" value = "${sedto.ssn2}" size = "10" disabled>
				</td>
			</tr>
			<tr>
				<th align = "center">이메일</th>
				<td colspan = "3">
					<input type = "text" name = "email" value = "${sedto.email}">
				</td>
			</tr>
			<tr>
				<th align = "center">전화번호</th>
				<td colspan = "3">
					<input type = "text" name = "hp1" size = "4" maxlength = "4" value = "${sedto.hp1}"> -
					<input type = "text" name = "hp2" size = "4" maxlength = "4" value = "${sedto.hp2}"> - 
					<input type = "text" name = "hp3" size = "4" maxlength = "4" value = "${sedto.hp3}">
				</td>
			</tr>
			<tr>
				<th align = "center">포인트</th>
				<td colspan = "3"><input type = "text" name = "point" value = "${sedto.point}" size = "5" disabled>점</td>
			</tr>
			<tr>
				<th align = "center">가입일</th>
				<td colspan = "3"><input type = "text" name = "joindate" value = "${sedto.joindate}" size = "10" disabled></td>
			</tr>
			<tr>
				<td colspan = "4" align = "center">
					<input type = "button" value = "수정" onclick = "javascript:check()">
					<input type = "button" value = "호텔 예약 페이지" style = "width : 140px;" onclick = "window.location='hotel_paymentoklist'">
					<input type = "button" value = "버스 예약 페이지" style = "width : 140px;" onclick = "window.location='bus_resv_user_resvlist.do'">
					<input type="button" value="회원탈퇴" style = "width : 80px;" onclick="window.location='member_delete.do'">
				</td>
			</tr>
		</table>
	</form>
</div>
<%@ include file="../Basic/bottom_top.jsp" %>