<html>
    <link  href="style.css" rel="stylesheet"/>
    <body class="publicbodytheme">

        <%@include  file="employeeheader.jsp" %>
        <form  action="employeepasswordchangejavacode.jsp">
            <table   cellspacing="20px"  class="formtheme">
                <tr>
                    <td>ID</td>
                </tr>
                <tr>
                    <td><input type="text" name="eId" class="texttheme" placeholder="enter employeeid here"></td>
                </tr>
                <tr>
                    <td>Password</td>
                </tr>

                <tr>
                    <td><input type="password" name="pass"  class="texttheme" placeholder="enter old password here"></td>
                </tr>
                
                <tr>
                    <td>Password</td>
                </tr>

                <tr>
                    <td><input type="password" name="npass"  class="texttheme" placeholder="enter new password here"></td>
                </tr>
                
                <tr>
                    <td>Password</td>
                </tr>

                <tr>
                    <td><input type="password" name="cnpass"  class="texttheme" placeholder="enter confirm new password here"></td>
                </tr>

                <tr>
                    <td><input type="submit" value="SUBMIT"  class="button"></td>
                </tr>
            </table>
        </form> 
        </body>
</html>