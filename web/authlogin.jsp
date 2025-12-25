<html>
    <link  href="style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <form  action="authloginjavacode.jsp">
            <table   cellspacing="20px"  class="formtheme">
                
                <td><h1 style="font-family: algerian;color: white; font-size: 50px">WELCOME</h1></td>

                <tr>
                    <td>ID</td>
                </tr>
                <tr>
                    <td><input type="text" name="uId" class="texttheme" placeholder="enter id here"></td>
                </tr>
                <tr>
                    <td>Password</td>
                </tr>

                <tr>
                    <td><input type="password" name="pass"  class="texttheme" placeholder="enter password here"></td>
                </tr>

                <tr>
                    <td>Post</td>
                </tr>
                <tr>
                    <td><select name ="post" class = "texttheme" >
                        <option>select post</option>
                        <option>admin</option>
                        <option>operator</option>
                        <option>employee</option>
                    </select></td>
                </tr>
                <tr>
                    <td><input type="submit" value="signin"  class="button"></td>
                </tr>
            </table>
        </form>
    </body>
</html>