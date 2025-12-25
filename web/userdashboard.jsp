<%@include  file="securityguard.jsp" %>
<html>
    <head>
        <link href="style.css" rel="stylesheet"/>
    </head>
    <body  class="publicbodytheme">
        <%@include  file="userheader.jsp" %>
        <h1 style="color: aqua; margin-left: 250px; font-size: 50px;margin-top: 200px; letter-spacing: 25px">WELCOME</h1>
        <h2 style="color: dodgerblue; margin-left: 420px; font-size: 30px"><%=session.getAttribute("CALL")%></h2> 

        <form>
            <table cellpadding="10" cellspacing="10" border="0" style="margin-top: -300px; margin-left: 1100px">
                <tr>
                    <td><input type="submit" value="SOS" formaction="sos.jsp" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="order" formaction="order.jsp" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="cancel order" formaction="cancel.jsp" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="complain" formaction="complain.jsp" class="dashbutton"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="feedback" formaction="feedback.jsp" class="dashbutton" ></td>
                </tr>
            </table>
    </body>
</html>