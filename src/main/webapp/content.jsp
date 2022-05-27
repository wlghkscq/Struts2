<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
이 페이지는 로그인 과정에서 <br>
성공한 사람만이 볼 수 있는 페이지 입니다. 
<br>
<b><s:property value="id"/>님 환영합니다. </b>

<table align="center">
	<s:iterator value="aList" status="stat">
		<tr>
			<td><s:property value="seq"/> </td>		
			<td><s:property value="id"/> </td>		
			<td><s:property value="name"/> </td>		
		</tr>
	</s:iterator>

</table>

</body>
</html>