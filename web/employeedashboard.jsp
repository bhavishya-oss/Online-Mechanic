<%@include  file="employeesecurityguard.jsp" %>
<html>
    <head>
    <link  href="style.css" rel="stylesheet"/>
    </head>
    <body  class="publicbodytheme">
        <%@include  file="employeeheader.jsp" %>
        <form>
            <table cellpadding="10" cellspacing="10">
                <tr>
                    <td><input type="submit" value="MANAGE COMPLAIN" formaction="managecomplain.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                <td><input type="submit" value="VIEW FEEDBACK" formaction="viewfeedback.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                <td><input type="submit" value="MANAGE ORDER REQUEST" formaction="updateadmin.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
               
            </table>
    </body>
</html>