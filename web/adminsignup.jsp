<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="adminheader.jsp"%>
        <form action="adminsignupjavacode.jsp">
        <table cellpadding="16" cellspacing="2" class = logintab border="0">
            <tr>
                <td>Full Name</td>
                <td><input type = text placeholder = "Enter your name" name = "fNm" class = "texttheme"></td>
            </tr>
            <tr>
                <td>Admin ID</td>
                <td><input type = text placeholder = "Enter Id here" name = "aId"class = "texttheme"></td>
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
                <td>Gender</td>
                <td>
                    <select name="gen" class="texttheme">
                        <option>select option</option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                </td>
            </tr>                       
            <tr>
                <td>Organization Name</td>
                <td><textarea placeholder = "Enter org name" name = "orgname" class = "texttheme"></textarea></td>
            </tr>
            <tr>
                <td>Organization Address</td>
                <td><textarea placeholder = "Enter org address" name = "orgaddress" class = "texttheme"></textarea></td>
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