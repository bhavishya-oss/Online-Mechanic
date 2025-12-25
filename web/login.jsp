<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    int RESULT = 0;
    int ID_VALIDATION = 0;
    int PASS_VALIDATION = 0;
    int BOTH_VALIDATION = 0;
    String btn = request.getParameter("btn");
    if (btn != null && btn.equals("Login")) {

        String userId = request.getParameter("uId");
        String password = request.getParameter("pass");
        if (userId.equals("") && password.equals("")) {
            BOTH_VALIDATION = 1;
        } else if (userId.equals("")) {
            ID_VALIDATION = 1;
        } else if (password.equals("")) {
            PASS_VALIDATION = 1;
        } else {
            Class.forName("com.mysql.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

            PreparedStatement st = con.prepareStatement("select * from signup where userid=? and password=?");
            st.setString(1, userId);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) 
            {
                session.setAttribute("CALL",userId);
                response.sendRedirect("userdashboard.jsp");
            } 
            else 
            {
                RESULT = 1;
            }
        }
    }

%>


<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">        
        <%@include file = "header.jsp"%>
        <form>
            <marquee direction="down" scrollamount="60" behavior="slide">
            <table cellspacing = "20px"  class = "formtheme"  >
                
                <tr>
                    <td>ID</td>
                </tr>
                <tr>
                    <td><input type="text" name="uId" class="texttheme" placeholder="enter id here"></td>
                </tr>

                <% 
		if (ID_VALIDATION == 1) {
                %>
                <tr>
                    <td colspan="2"><h2 style="color: red;font-size: 20px; margin-left: 105px; margin-top: -20px; margin-bottom: -30px">*ID is mandatory</h2></td>
                </tr>
                <%}%>
                 <tr>
                    <td>Password</td>
                </tr>

                <tr>
                    <td><input type="password" name="pass"  class="texttheme" placeholder="enter password here"></td>
                </tr>

                <%
                    if (PASS_VALIDATION == 1) {
                %>
                <tr>
                    <td colspan="2"><h2 style="color: red;font-size: 20px; margin-left: 105px; margin-top: -20px">*Password is mandatory</h2></td>
                </tr>
                <%}
                    if (RESULT == 1) {
                %>
                <tr align="center">
                    <td colspan="2"><h2 style="color: red;font-size: 20px; margin-left: 105px;margin-top: -20px">Invalid ID/Password</h2></td>
                </tr>
                <%
                    }
                    if (BOTH_VALIDATION == 1) {
                %>
                <tr>
                    <td colspan="2"><h2 style="color: red;font-size: 20px; margin-left: 10px;margin-top: -20px;margin-bottom: -15px">ID and Password both fields are mandatory</h2></td>
                </tr>
                <%}%>
                <tr>
                    
                    <td>
                        <input type ='submit' value='Login' class ='loginbutton' formaction="" name="btn">
                    </td>
                </tr>
            </table>
                </marquee>
        </form>
    </body>
</html>