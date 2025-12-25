<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="userheader.jsp"%>
        <form action="contactjavacode.jsp">
            <table cellpadding="16" cellspacing="2" class = logintab border="0">
                <tr>
                    <td>Full Name</td>
                    <td><input type = text placeholder = "Enter your name" name = "fNm" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><input type = text placeholder = "Enter contact here" name = "contact" class = "texttheme"></td>
                </tr>
                <a href="userpasswordchange.jsp"></a>
                <tr>
                    <td>Purpose</td>
                    <td><textarea  placeholder = "Enter purpose here" name = "purpose" class = "texttheme"></textarea></td>
                </tr>
           
            <tr align="center">
                <td colspan="2">
                    <input type = submit value="SUBMIT" class = buttontheme>
                </td>
            </tr>
        </table>
        </form>
        
        <iframe style="margin-left:80px; border-radius: 20px ; margin-top: 50px" width="90%" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" id="gmap_canvas" src="https://maps.google.com/maps?width=520&amp;height=400&amp;hl=en&amp;q=Rau%20Indore+(Medicaps%20University)&amp;t=&amp;z=12&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
            
    </body>
</html>