<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function setParentText() {
		opener.document.getElementById("fileH").value = document.getElementById("file").value;
		$(opener.location).attr("href","javascript:send();");
		window.close();
	}
</script>
</head>
<body onload="setParentText()">
<%
	String a=(String)request.getAttribute("filename");
%>
 <input type="hidden" id="file" name="filename" value="<%=a%>">

</body>
</html>