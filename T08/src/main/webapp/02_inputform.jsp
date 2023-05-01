<%@ page contentType="text/html; charset=UTF-8" %>
<%--
[문제] 다음의 입력 양식에서 입력받은 모든 데이터들을 02_output.jsp을 사용하여 출력하시오.
		단, 출력양식은 입력 양식과 동일한 양식으로 구성해 보며, 
		출력 양식에서의 모든 입력 항목은 readonly 또는 disable로 설정하시오. 
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<form action="02_output.jsp" method="post">
<table>
<tr>
	<td>아이디</td>
	<td>
		<input type="text" name="id">
	</td>
</tr>
<tr>
	<td>성명</td>
	<td>
		<input type="text" name="name">
	</td>
</tr>
<tr>
	<td>암호</td>
	<td>
		<input type="password" name="pwd">
	</td>
</tr>
<tr>
	<th>음식</th>
	<td>
		<input type="checkbox" name="foods"	value="사과">사과
		<input type="checkbox" name="foods" value="바나나">바나나
		<input type="checkbox" name="foods" value="포도">포도
	</td>
</tr>
<tr>
	<th>직업</th>
	<td>
		<select name="job" id="job">
		<option value="0">컴퓨터기사</option>
		<option value="1">요리사</option>
		<option value="2">프로게이머</option>
		<option value="3">학생</option>
		</select>
	</td>
</tr>
<tr>
	<td colspan="2">
		<input type="submit" value=" 전 송 ">
		<input type="reset" value=" 취 소 ">
	</td>
</tr>
</table>
</form>
</body>
</html>