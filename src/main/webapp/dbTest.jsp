<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>mysql ���� üũ</title>
</head>
<body>
	<%
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/jsp_testdb";
		String username = "root";
		String password = "1234";
		
		Connection conn = null;
		
		try {
			Class.forName(driverName); //����̹� �ε�		
			conn = DriverManager.getConnection(url,username,password); //���� ����
			out.println("DB ���� ����!!!!!!: " + conn);
			
		} catch(ClassNotFoundException e) {
			out.println("DB ����̹� �ε� ����!!");
		} catch(SQLException e) {
			out.println("DB ���� ����!!!!!");
		} finally {
			try {
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace(); //���� �߻��� ������ ������ ���
			}
		}
			
		
	%>
</body>
</html>