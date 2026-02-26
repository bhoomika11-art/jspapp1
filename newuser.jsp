<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New User Registration</title>
</head>
<body>
<%

String fullname = request.getParameter("fullname");
String pwd = request.getParameter("pwd");
String mailid = request.getParameter("mailid");
String mno = request.getParameter("mno");
String dob = request.getParameter("dob");
String branch = request.getParameter("branch");
String[] skills = request.getParameterValues("ts");
String ts = "";
for(int i=0;i < skills.length;i++){
    ts = ts + skills[i];
}
String gender = request.getParameter("gender");
String address = request.getParameter("address");


String url = "jdbc:mysql://localhost:3307/ajt2";
String username = "root";
String password = "root";
Connection conn = null;
try{
conn = DriverManager.getConnection(url,username,password);
if(conn==null){
    out.println("<h3>Database Error.</h3>");
}else{
    Statement stmt = conn.createStatement();
    String query = String.format("insert into newuser values(null,'%s','%s', '%s', '%s', '%s', '%s', '%s', '%s','%s');",fullname, pwd, mailid, mno, dob, branch, ts, gender, address);
    stmt.executeUpdate(query);
    response.sendRedirect("login.html");
    stmt.close();
}
}catch(Exception e){
    out.println("<h3>Error: "+e.getMessage()+"</h3>");
}

if(conn != null){
    conn.close();
}
%>
</body>
</html>