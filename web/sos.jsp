<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.DriverManager,java.util.ArrayList,java.sql.ResultSet"%>

<%
    int UPDATE = 0;
    String btn = request.getParameter("btn");
    if (btn != null && btn.equals("UPDATE")) {
        String fNm = request.getParameter("fNm");
        String uId = request.getParameter("uId");
        String gen = request.getParameter("gen");
        String eId = request.getParameter("eId");
        String contact = request.getParameter("contact");
        String address = request.getParameter("address");
        String city = request.getParameter("city");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        PreparedStatement st = con.prepareStatement("update signup set fullName=?,gender=?,address=?,contact=?,emailId=?,city=? where userId=?");
        st.setString(1, fNm);
        st.setString(2, gen);
        st.setString(3, address);
        st.setString(4, contact);
        st.setString(5, eId);
        st.setString(6, city);
        st.setString(7, uId);
        st.executeUpdate();
        UPDATE = 1;
    }
%>


<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="userheader.jsp"%>
        <%@page import= "java.sql.PreparedStatement"%>
        <%@page import= "java.sql.Connection"%>
        <%@page import= "java.sql.DriverManager,java.util.ArrayList,java.sql.ResultSet"%>

        <%
            String id = (String) session.getAttribute("CALL");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from signup where userId=?");
            st.setString(1, id);

            ResultSet rs = st.executeQuery();
            String fullName = "";
            String userId = "";
            String gen = "";
            String eId = "";
            String contact = "";
            String address = "";
            String city = "";

            if (rs.next()) {
                fullName = rs.getString(1);
                userId = rs.getString(2);
                gen = rs.getString(4);
                eId = rs.getString(7);
                contact = rs.getString(6);
                address = rs.getString(5);
                city = rs.getString(8);

            }

        %>
        <form action="">
            <table cellpadding="16" cellspacing="2" class = "signuptab" border="0">
                <tr align = "center">
                    <td colspan="2"><h1 style = "color: black; size: 35px; font-family: rockwell;margin-bottom: -5px;letter-spacing: 5px; word-spacing: 7px; text-transform: uppercase">PERSONAL INFORMATION</h1></td>
                </tr>
               
                <%                    if (UPDATE == 1) {
                %>
                <tr align="center">
                    <td colspan="2"><h2 style="color: blue;font-size: 25px; margin-left: -10px;margin-top: -10px">Your profile has been updated!!!</h2></td>
                </tr>
                <%
                        }%>
                <tr>
                    <td>Full Name</td>
                    <td><input type = text value="<%=fullName%>" name = "fNm" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td><input type = text value="<%=userId%>" readonly="true" name = "uId"class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="text" value="<%=gen%>" name="gen" class="texttheme">
                    </td>
                </tr>
                <tr>
                    <td>Email ID</td>
                    <td><input type = text value="<%=eId%>" name = "eId" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Contact No.</td>
                    <td><input type = "text" value="<%=contact%>" name = "contact" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" value="<%=address%>" name = "address" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <input type="text" name="city" value="<%=city%>" class="texttheme">
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <input type="submit" value="BACK" class="buttontheme" formaction="login.jsp">
                    </td>
                    <td colspan="2">
                        <input type = submit value="UPDATE" name="btn" class = buttontheme>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>