## SQL문 처리

MariaDB 실행 중


JDBC 드라이버 -> Class.forName()
<br>
DB연결 -> Connection con = DriverManager.getConnection(URL, ID, PW)

Statement 생성 -> Statement stmt = con.createStatement()


SQL문 구성
SQL문 전송
결과 받기
ResultSet 레코드 처리 : rs.next()와 rs.getString(), getlnt(), getFloat() 등 .. 
필드 값을 알아내기 위한 메소드 사용

연결 해제




## Java 예외 처리

SQL Exception-Exception

catch routine -> 하위에 있는 예외 class 부터 예외 처리.

"VALUES('"+id+'', '"+name+"', '"+tel+"')";
-> 작은 따옴표, 큰 따옴표 실수하기 쉬움.

## Statement와 PreparedStatement
-> PreparedSttatement가 더 빨라서, 더 권장. (따옴표 실수 etc..)

database setting -> utf-8
mariaDB -> SSL 인증서 X false

### DB 세팅
String sql = "INSERT INTO member(id, name, pwd) VALUES(?, ?, password(?))";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, request.getParameter("id");
pstmt.setString(2, request.getParameter("name");
pstmt.setString(3, request.getParameter("pwd");
pstmt.executeUpdate();


### 반환

ResultSet rs = pstmt.executeQuery();
rs.next();
rs.getString("id");
rs.getString("name");
rs.getString("pwd");

### 끝


### jdbc 로딩
static{
    try{
        Class.forName("com.mysql.jdbc.Driver");
    }catch(ClassNotFoundException e){
        System.out.println("e.toString()");
    }
}

### 커넥션 가져오기
public Connection getConnection() throws SQLException{
    return DriverManager.
 
[//]: # (exception 만들 부분.)
    getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
}






