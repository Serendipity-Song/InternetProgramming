<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");

//1. 사용자로 부터 idx, id, name, pwd 파라미터의 값 전달 받아 각 변수에 저장하기
String sidx = request.getParameter("idx");
String sid = request.getParameter("id");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");

try {
	//2. JDBC 드라이버를 로드하기 위해 클래스 패키지를 지정한다.
	Class.forName("org.mariadb.jdbc.Driver");
	String DB_URL ="jdbc:mariadb://localhost:3306/mydb?useSSL=false";

	//3. 연결자 생성
	Connection con =  DriverManager.getConnection(DB_URL, "admin", "1234");
	
	//4. member 테이블에서 idx에 해당하는 레코드에 id, name, pwd를 업데이트하기 위한 쿼리 문자열 구성
	String sql = "UPDATE member SET id=?, name=?, pwd=? WHERE idx=?";
//	암호화힐 경우
//	String sql = "UPDATE member SET id=?, name=?, pwd=password(?) WHERE idx=?";

	PreparedStatement pstmt = con.prepareStatement(sql);
	
	//5. pstmt에 UPDATE문 쿼리 구성하기 
	pstmt.setString(1, sid);
	pstmt.setString(2, name);
	pstmt.setString(3, pwd);
	pstmt.setString(4, Integer.parseInt(sidx));

	//6. 쿼리 실행
	pstmt.executeQuery();
	pstmt.close();
	con.close();
}catch(SQLException e) {
	out.print(e);
	return;
}
//7. 리스트 출력 페이지로 이동시키기
response.sendRedirect("list.jsp");
%>