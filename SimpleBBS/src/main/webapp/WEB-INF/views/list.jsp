<%@ page language= "java" contentType= "text/html; charset=UTF-8"
    pageEncoding= "UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv = "Content-Type" content = "text/html; charset = UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width= "500" cellpadding= "0" cellspacing= "0" border="1'>
	<tr>
		<td>��ȣ</td>
		<td>�ۼ���</td>
		<td>����</td>
		<td>����</td>
	<tr>
	<c:forEach items= "${list}" var = "dto">
	<tr>
		<td>${dto.id}</td>
		<td>$(dto.writer]</td>
		<td><a href= "view?id=${dto.id}">$[dto.title]</a></td>
		<td><a href= "delete?id=${dto.id}">X</a></td>
	<tr>
	</c:forEach>
</table>

<p><a href = "writeForm">���ۼ�</a></p>
</body>
</html>