<%@ page contentType="text/html; charset=UTF-8" %>
<%--Scriptlet에서 for문을 이용하여 h1~h6 태그까지 출력해봅니다.--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제</title>
</head>
<body>
<p>&lt;h&gt;태그 출력하기</p>
<%
for(int i=1; i<=6; i++){
%>	
	<h<%=i %>>h<%=i %>태그입니다</h<%=i %>>
<% 
}
%>

<br><br><br>
<%
for(int i=6; i>=1; i--){
	out.print("<h"+i+">h"+"태그입니다.</h"+i+">");
}
%>

</body>
</html>