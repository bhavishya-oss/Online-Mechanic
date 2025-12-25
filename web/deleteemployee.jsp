<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="userheader.jsp"%>
        <form action="deleteemployeejavacode.jsp">
        <table cellpadding="16" cellspacing="2" class = logintab border="0">
            <tr>
                <td>Admin Id</td>
                <td><input type = text placeholder = "Enter your Admin ID" name = "aId" class = "texttheme"></td>
            </tr>
            <tr>
                <td>Admin password</td>
                <td><input type = text placeholder = "Enter password" name = "password"class = "texttheme"></td>
            </tr>
            <tr>
                <td>Employee Id</td>
                <td><input type = text placeholder = "Enter Employee Id" name = "eId" class = "texttheme"></td>
            </tr>
            
            <tr align="center">
                <td>
                    <input type="submit" value="BACK" class="buttontheme" formaction="login.jsp">
                </td>
                <td colspan="2">
                    <input type = submit value="DELETE" class = buttontheme>
                </td>
            </tr>
        </table>
    </body>
</html>