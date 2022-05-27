<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>  
<head>  
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
td{font-family: 맑은 고딕; font-size: 10pt; color: #777777;}
a{font-family: 맑은 고딕; font-size: 10pt; color: #777777; text-decoration: none;}
a:vlink{text-decoration: none;} /*하이퍼링크 언더라인 없애는 부분 */
 
</style>
</head>
<body>
<table width="800" border="1" bordercolor="#f3f3f3" cellspacing="0">
	<tr>
		<td width="160" bgcolor="#c0c000">
			<form name="loginFrm" method="post" action="loginAction.action">
				<table border="0" bordercolor="#ff0000" cellspacing="0">
					<tr>
						<td>아이디</td>					
						<td><input type="text" name="id" size="11" maxlength="10"/></td>
					</tr>
					<tr>
						<td>패스워드</td>					
						<td><input type="password" name="pwd" size="10" maxlength="10"/></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input type="submit" value="로그인">
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
			지금은 struts2 result를 공부하고 있습니다.
		</td>
	</tr>
	<tr height="100">
		<td colspan="2" bgcolor="#c0c0c0">
			오늘까지 배운 내용을 모두 복습합니다.
		</td>
	</tr>

</table>
 
</body>
</html>