<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>  
<head>  
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
td{font-family: ���� ���; font-size: 10pt; color: #777777;}
a{font-family: ���� ���; font-size: 10pt; color: #777777; text-decoration: none;}
a:vlink{text-decoration: none;} /*�����۸�ũ ������� ���ִ� �κ� */
 
</style>
</head>
<body>
<table width="800" border="1" bordercolor="#f3f3f3" cellspacing="0">
	<tr>
		<td width="160" bgcolor="#c0c000">
			<form name="loginFrm" method="post" action="loginAction.action">
				<table border="0" bordercolor="#ff0000" cellspacing="0">
					<tr>
						<td>���̵�</td>					
						<td><input type="text" name="id" size="11" maxlength="10"/></td>
					</tr>
					<tr>
						<td>�н�����</td>					
						<td><input type="password" name="pwd" size="10" maxlength="10"/></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="�α���">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<s:actionmessage/>
						</td>
					</tr>
				</table>
			</form>
		</td>
		<td bgcolor="#c0c0c0">
			������ struts2 result�� �����ϰ� �ֽ��ϴ�.
		</td>
	</tr>
	<tr height="100">
		<td colspan="2" bgcolor="#c0c0c0">
			���ñ��� ��� ������ ��� �����մϴ�.
		</td>
	</tr>

</table>
 
</body>
</html>