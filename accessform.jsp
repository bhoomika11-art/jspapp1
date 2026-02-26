<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New User Details</title>
</head>
<body>
    <strong>Full Name: </strong>
    <% out.print(request.getParameter("fullname")); %><br>
    <strong>Password: </strong>
    <% out.print(request.getParameter("pwd")); %><br>
    <strong>E-Mail ID: </strong>
    <% out.print(request.getParameter("mailid")); %><br>
    <strong>Mobile: </strong>
    <% out.print(request.getParameter("mno")); %><br>
    <strong>Date of Birth: </strong>
    <% out.print(request.getParameter("dob")); %><br>
    <strong>Branch: </strong>
    <% out.print(request.getParameter("branch")); %><br>
    <strong>Technical Skills: </strong>
    <%
    String[] ts = request.getParameterValues("ts");
    for(String skill:ts){
        out.print(skill+" ");
    }
    %><br>
    <strong>Gender: </strong>
    <% out.print(request.getParameter("gender")); %><br>
    <strong>Address: </strong>
    <% out.print(request.getParameter("address")); %><br>
</body>
</html>