<html>
    <link  href="style.css" rel="stylesheet"/>
    <body class="publicbodytheme">

        <%@include  file="userheader.jsp" %>

        <form  action="feedbackjavacode.jsp">
            <table   cellspacing="20px"  class="formtheme">
               <tr>
                <td>Full Name</td>
                <td><input type = text placeholder = "Enter your name" name = "fNm" class = "texttheme"></td>
                </tr>
                
                <tr>
                <td>Contact No.</td>
                <td><input type = number placeholder = "Enter your contact no." name = "contact" class = "texttheme"></td>
                </tr> 
                
                <tr>
                <td>Feedback</td>
                <td><textarea placeholder = "Enter feedback" name = "feedback" class = "texttheme"></textarea></td>
                </tr>

                <tr>
                    <td><input type="submit"  value="submit"  class="button"></td>
                </tr>
            </table>
        </form>
    </body>
</html>