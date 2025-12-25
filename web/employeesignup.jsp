<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="userheader.jsp"%>
        <form action="employeesignupjavacode.jsp">
        <table cellpadding="16" cellspacing="2" class = logintab border="0" style="color: whitesmoke">
            <tr>
                <td>Full Name</td>
                <td><input type = text placeholder = "Enter your name" name = "fNm" class = "texttheme"></td>
            </tr>
            <tr>
                <td>employee ID</td>
                <td><input type = text placeholder = "Enter Id here" name = "empId"class = "texttheme"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type = password placeholder = "Enter password here" name = "pass" class = "texttheme"></td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td><input type = password placeholder = "Enter confirm password here" name = "cpass" class = "texttheme"></td>
            </tr>
            <tr>
                <td>Post</td>
                <td><input type = text placeholder = "Enter your post" name = "post" class = "texttheme"></td>
            </tr>                      
            <tr>
                <td>Salary</td>
                <td><textarea placeholder = "Enter salary" name = "Salary" class = "texttheme"></textarea></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><textarea placeholder = "Enter your address" name = "address" class = "texttheme"></textarea></td>
            </tr>
            <tr>
                <td>Contact No.</td>
                <td><input type = number placeholder = "Enter your contact no." name = "contact" class = "texttheme"></td>
            </tr> 
            <tr>
                <td>Email ID</td>
                <td><input type = text placeholder = "Enter email id here" name = "eId" class = "texttheme"></td>
            </tr>
            <tr>
            <td>City</td>
                <td>
                    <select name ="city" class = "texttheme">
                        <option>select city</option>
                        <option>Indore</option>
                        <option>Bhopal</option>
                        <option>Delhi</option>
                        <option>Pune</option>
                    </select>
                </td>
            </tr>
            
            
            <tr align="center">
                <td>
                    <input type="submit" value="BACK" class="buttontheme" formaction="login.jsp">
                </td>
                <td colspan="2">
                    <input type = submit value="CREATE" class = buttontheme>
                </td>
            </tr>
        </table>
    </body>
</html>