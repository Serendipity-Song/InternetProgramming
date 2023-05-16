<%@ page  contentType="text/html;charset=utf-8" 
		import="java.sql.*" %>
<%-- 1. page 지시어에 JDBC 프로그래밍을 위한 필요 패키지 import 시킨다. --%>
<%
//2. JDBC 드라이버를 로드하기 위해 클래스 패키지를 지정한다.
Class.forName("org.mariadb.jdbc.Driver");
String DB_URL = "jdbc:mariadb://localhost:3306/mydb?useSSL=false";
		//★주의 : mydb를 자신이 생성한 DB이름으로 변경하여 테스트 할것~!

String DB_USER = "admin";
String DB_PASSWORD= "1234";

Connection con= null;
Statement stmt = null;
ResultSet rs   = null;

try {
    
	//3. 연결자를 생성한다.
    con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

    //4. Statement 객체를 생성한다.
    stmt = con.createStatement();

    
    String query = "SELECT idx, id, name, pwd FROM member"; 
    
    //5.쿼리를 전달하고, ResultSet 객체를 반환 받는다.
    rs = stmt.executeQuery(query);

%>
<a href="input.jsp">추가</a>
<table border="1" style="border-collapse:collapse">
<tr>
<td>Number</td>
<td>ID</td>
<td>Name</td>
<td>password</td>
<td>비고</td>

</tr>
<%
    while(rs.next()) {
%><tr>
<td><%=rs.getInt("idx")%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString("name")%></td>
<td><%=rs.getString("pwd")%></td>
<td>
<!-- 8. 삭제를 처리하기 위한 링크를 구성한다. 
		삭제 페이지는 delete_do.jsp인것으로 한다. -->
<a href="delete_do.jsp?idx=<%=rs.getInt(">삭제</a>

<!-- 9. 수정 기능을 구현하기 위한 버튼을 만든다. 
		단, 수정페이지는 DB에 저장된 정보를 먼저 출력해주어야 할 것이다.
			수정을 위한 정보 출력 페이지는 modify.jsp인 것으로 한다 -->
<input type="button" value="수정"
       onclick="location.href='modify.jsp?idx=<%=rs.getInt("idx")%>'">

</td>

</tr>
<%
    } // end while
%></table>
<%

	rs.close();     // ResultSet 종료

    stmt.close();     // Statement 종료

    con.close(); 	// Connection 종료

} catch (SQLException e) {
      out.println("err:"+e.toString());
      return;
} 
%>