<html>
    <head>
    <link  href="style.css" rel="stylesheet"/>
    </head>
    
    <body  class="publicbodytheme">
        <%@include  file="adminheader.jsp" %>
        <form>
            <table cellpadding="10" cellspacing="10" style="color: navajowhite">
                <tr>
                    <td><input type="submit" value="CREATE PRODUCT" formaction="addproduct.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="DELETE PRODUCT" formaction="deleteproduct.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="UPDATE UPDATE" formaction="updateproduct.jsp" style="width:250px" class="dashbutton"></td>
                </tr>
                               
            </table>
    </body>
</html>