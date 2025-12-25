<html>
    <link  href="style.css" rel="stylesheet"/>
    <body class="publicbodytheme">

        <%@include  file="employeeheader.jsp" %>
        <form  action="complainupdatejavacode.jsp">
            <table   cellspacing="20px"  class="formtheme">
                <tr>
                    <td style="color: azure">COMPLAIN ID </td>
                </tr>
                <tr>
                    <td><input type="text" name="comId" class="texttheme" placeholder="enter complain id here"></td>
                </tr>
                <tr>
                <td style="color: azure">Status</td>
                </tr>
                <tr>
                <td>
                    <select name="status" class="texttheme">
                        <option>select option</option>
                        <option>Under Process</option>
                        <option>Solved</option>
                        <option>Invalid Complain</option>
                    </select>
                </td>
            </tr>

                <tr>
                    <td><input type="submit" value="Update"  class="buttontheme"></td>
                
                    <td><input type="submit" value="Back"  class="buttontheme" formaction="employeedashboard.jsp"></td>
                </tr>
            </table>
        </form> 
        </body>
</html>