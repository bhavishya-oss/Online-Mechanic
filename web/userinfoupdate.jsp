<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="header.jsp"%>

        <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.Connection"%>
        <%@page import="java.sql.ResultSet"%>

        <%
            String uId = (String) session.getAttribute("CALL");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con;
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

            PreparedStatement st = con.prepareStatement("select * from signup where userId=?");
            st.setString(1, uId);

            ResultSet rs = st.executeQuery();
            String fullname = "";
            String userId = "";
            String gender = "";
            String address = "";
            String contact = "";
            String email = "";
            String city = "";

            if (rs.next()) {
                fullname = rs.getString(1);
                userId = rs.getString(2);
                gender = rs.getString(4);
                address = rs.getString(5);
                contact = rs.getString(6);
                email = rs.getString(7);
                city = rs.getString(8);
            }

        %>

        <form action="userinfoupdate2.jsp">
            <table cellpadding="16" cellspacing="2" class = logintab border="0">
                <tr>
                    <td>EDIT USER DETAILS</td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type = text value="<%=fullname%>" placeholder = "Enter your name" name = "fNm" class = "texttheme"></td>
                </tr>

                <tr>
                    <td>ID</td>
                    <td><input type = text value="<%=userId%>" readonly="true"  name = "uId" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type = text value="<%=gender%>" name = "gender" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type = text value="<%=address%>" name = "address" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Contact No.</td>
                    <td><input type = text value="<%=contact%>" name = "contact" class = "texttheme"></td>
                </tr> 
                <tr>
                    <td>Email ID</td>
                    <td><input type = text value="<%=email%>" name = "eId" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><input type = text value="<%=city%>" name = "city" class = "texttheme"></td>
                </tr>

                <tr align="center">
                    <td>
                        <input type="submit" value="BACK" class="buttontheme" formaction="userdashboard.jsp">
                    </td>
                    <td colspan="2">
                        <input type = submit value="UPDATE" class = buttontheme>
                    </td>
                </tr>
            </table>
        </form>           

    </body>
</html>