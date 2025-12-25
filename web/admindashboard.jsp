<%@include  file="adminsecurityguard.jsp" %>
<html>
    <head>
        <link  href="style.css" rel="stylesheet"/>
    </head>

    <body  class="publicbodytheme">
        <%@include  file="adminheader.jsp" %>
        <form>
            <table cellpadding="10" cellspacing="10" style="color: navajowhite">
                <tr>
                    <td><input type="submit" value="CREATE EMPLOYEE ACCOUNT" formaction="employeesignup.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="DELETE EMPLOYEE ACCOUNT" formaction="deleteemployee.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="UPDATE EMPLOYEE ACCOUNT" formaction="employeeinfoupdate.jsp" style="width:250px" class="dashbutton"></td>
                </tr>

            </table>
    </body>
</html>