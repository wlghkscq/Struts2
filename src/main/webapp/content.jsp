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
�� �������� �α��� �������� <br>
������ ������� �� �� �ִ� ������ �Դϴ�. 
<br>
<b><s:property value="id"/>�� ȯ���մϴ�. </b>

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