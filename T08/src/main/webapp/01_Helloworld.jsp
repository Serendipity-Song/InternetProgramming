<%@ page contentType="text/html;charset=UTF-8"%>
<%--
오늘의 날짜와 시간을 출력하는 jsp 프로그램을 작성하여 실행시키고,
아래의 경로에서 서블릿 java와 class 파일이 생성되었는지 확인합니다.
.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\...
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 첫페이지</title>
</head>
<body>

<H2>Hello World : JSP 첫페이지</H2>
오늘의 날짜와 시간 : <%= new java.util.Date() %>
</body>
</html>