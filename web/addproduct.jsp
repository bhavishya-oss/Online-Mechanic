<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="adminheader.jsp"%>
        <form action="addproductjavacode.jsp">
        <table cellpadding="16" cellspacing="2" class = logintab border="0">
            <tr>
                <td>Product Name</td>
                <td><input type = text placeholder = "Enter product name " name = "pNm" class = "texttheme"></td>
            </tr>
            <tr>
                <td>Category</td>
                <td><input type = text placeholder = "Enter Category " name = "cat"class = "texttheme"></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><textarea placeholder = "Enter description" name = "des" class = "texttheme"></textarea></td>
            </tr>
            <tr>
                <td>Cost</td>
                <td><input type = text placeholder = "Enter cost" name = "cost" class = "texttheme"></td>
            </tr>
            <tr>
                <td>Offer</td>
                <td><input type = text placeholder = "Enter offer" name = "offer" class = "texttheme"></td>
            </tr>
            
            <tr align="center">
                <td>
                    <input type="submit" value="BACK" class="buttontheme" formaction="login.jsp">
                </td>
                <td colspan="2">
                    <input type = submit value="ADD" class = buttontheme>
                </td>
            </tr>
        </table>
    </body>
</html>