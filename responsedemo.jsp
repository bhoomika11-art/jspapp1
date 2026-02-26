<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Response Object</title>
</head>
<body>
    <form method="post">
        <button type="submit" name="submit">My Blog</button>
    </form>
    <%
    if(request.getParameter("submit")!=null){
        response.sendRedirect("https://csupports.blogspot.com/p/menu.html");
    }
    %>
</body>
</html>