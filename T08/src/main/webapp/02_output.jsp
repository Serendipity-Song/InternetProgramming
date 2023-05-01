<%@ page contentType="text/html; charset=UTF-8" %>
<%
request.setCharacterEncoding("utf-8");
String sid = request.getParameter("id");
String sname = request.getParameter("name");
String spwd = request.getParameter("pwd");
String sjob = request.getParameter("job");
String sfoods[] = request.getParameterValues("foods");
%>

<%--
[문제] 다음의 입력 양식에서 입력받은 모든 데이터들을 02_output.jsp을 사용하여 출력하시오.
		단, 출력양식은 입력 양식과 동일한 양식으로 구성해 보며, 
		출력 양식에서의 모든 입력 항목은 readonly 또는 disable로 설정하시오. 
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력결과</title>
<script>
window.onload = function() {
	document.getElementById("job").selectedIndex = <%=sjob%>;
	var foodsArr = document.getElementsByName("foods");
<%
int foodIdx=-1;
for(int i=0; i<sfoods.length; i++) {
	if(sfoods[i].equals("사과")){
		foodIdx=0;
	}else if(sfoods[i].equals("바나나")){
		foodIdx=1;
	}else if(sfoods[i].equals("포도")){
		foodIdx=2;
	}
	%>
	foodsArr[<%=foodIdx%>].checked = true;
	<%
}
%>
	
	
}
</script>
</head>
<body>
<H1>사용자입력결과</H1>
<table>
<tr>
	<td>아이디</td>
	<td>
		<input type="text" name="id" readonly value="<%=sid%>">
	</td>
</tr>
<tr>
	<td>성명</td>
	<td>
		<input type="text" name="name" readonly value="<%=sname%>">
	</td>
</tr>
<tr>
	<td>암호</td>
	<td>
		<input type="password" name="pwd" readonly value="<%=spwd%>">
	</td>
</tr>
<tr>
	<th>음식</th>
	<td>
		<input type="checkbox" name="foods"	value="사과" disabled>사과
		<input type="checkbox" name="foods" value="바나나" disabled>바나나
		<input type="checkbox" name="foods" value="포도" disabled>포도
	</td>
</tr>
<tr>
	<th>직업</th>
	<td>
		<select name="job" id="job" disabled>
		<option value="0">컴퓨터기사</option>
		<option value="1">요리사</option>
		<option value="2">프로게이머</option>
		<option value="3">학생</option>
		</select>
	</td>
</tr>

</table>
</body>
</html>