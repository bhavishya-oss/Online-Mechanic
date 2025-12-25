<%@include  file="operatorsecurityguard.jsp" %>
<html>
    <head>
        <link  href="style.css" rel="stylesheet"/>
    </head>
    <body  class="publicbodytheme">
        <%@include  file="operatorheader.jsp" %>

        <form>
            <table cellpadding="10" cellspacing="10">
                <tr>
                    <td><input type="submit" value="CREATE ADMIN ACCOUNT" formaction="adminsignup.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="DELETE ADMIN ACCOUNT" formaction="deleteadmin.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="UPDATE ADMIN ACCOUNT" formaction="admininfoupdate.jsp" style="width:250px" class="dashbutton"></td>
                </tr>

            </table>
    </body>
</html>