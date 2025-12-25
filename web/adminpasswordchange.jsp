<html>
    <link  href="style.css" rel="stylesheet"/>
    <body class="publicbodytheme">

        <%@include  file="adminheader.jsp" %>
        <form  action="adminpasswordchangejavacode.jsp">
            <table   cellspacing="20px"  class="formtheme">
                <tr>
                    <td>ID</td>
                </tr>
                <tr>
                    <td><input type="text" name="aId" class="texttheme" placeholder="enter adminid here"></td>
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
                    <td><input type="password" name="cnpass"  class="texttheme" placeholder="enter comnfirm new password here"></td>
                </tr>

                <tr>
                    <td><input type="submit" value="SUBMIT"  class="button"></td>
                </tr>
            </table>
        </form> 
        </body>
</html>