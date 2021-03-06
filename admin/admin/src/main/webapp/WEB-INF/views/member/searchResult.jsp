<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
<%@page import="team.Dproject.main.model.*"%>
     <%@ include file="../Basic/head.jsp" %>
   <%@ include file="../Basic/nav_Login.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div align="center"style="margin-top:90px">
		<hr color="green" width="300">
		<c:if test="${mode == 'id'}">
			<h2>아 이 디 검 색 결 과</h2>
			<hr color="green" width="300">
			<table class = "outline" border = "1">
				<tr align = "center">
					<th>아이디</th>
					<th>가입일</th>
				</tr>
				<c:choose>
					<c:when test = "${empty searchList}">
					<tr>
						<td colspan = "2" align = "center">검색된 아이디가 없습니다.</td>
					</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var = "dto" items = "${searchList}">
							<tr align = "center">
								<td>${dto.id}</td>
								<td>${dto.joindate}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<tr>
					<td align = "center" colspan = "2">
						<input type = "button" value = "확인" onclick = "window.close()">
					</td>
				</tr>
			</table>
		</c:if>
		<c:if test="${mode == 'passwd' }">
			<h2>비 밀 번 호 검 색 결 과</h2>
			<hr color = "green" width = "300">
			<%List<MemberDTO> list=(List)request.getAttribute("searchList"); %>
			
			<h3><%=list.get(0).getEmail() %>으로 임시 메세지를 보냈습니다.</h3>
		</c:if>
	</div>


  <%@ include file="../Basic/bottom_nav.jsp" %>  