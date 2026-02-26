<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>
<body>
    <%
    String loginid = request.getParameter("mailid");
    String loginpwd = request.getParameter("pwd");

    String url = "jdbc:mysql://localhost:3307/ajt2";
    String username = "root";
    String password = "root";
    Connection conn = null;
    try{
        conn = DriverManager.getConnection(url, username, password);
        if(conn==null){
            out.println("Database Error");
        }else{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM newuser WHERE mailid='"+loginid+"' AND pwd='"+loginpwd+"';";
            ResultSet rs = stmt.executeQuery(query);
            boolean status = false;
            while(rs.next()){
                if(rs.getString("mailid").equals(loginid) && rs.getString("pwd").equals(loginpwd)){
                    status = true;
                    break;
                }
            }
            if(status){
                out.print("<h2>Welcome "+rs.getString("fullname")+"</h2>");
            }else{
                out.print("<h2>Invalid Login ID or Password...!</h2>");
            }
        }
    }catch(Exception e){
        out.print(e.getMessage());
    }
    %>
</body>
</html>