<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.DriverManager"%>
<%@page import= "java.util.ArrayList"%>
<%@page import= "java.sql.ResultSet"%>


<%
    int UPDATE = 0;

    String btn = request.getParameter("btn");
    if  (btn != null && btn.equals("UPDATE")) {
        String aNm = request.getParameter("aNm");
        String uId = request.getParameter("uId");
        String gender = request.getParameter("gender");
        String orgName = request.getParameter("orgName");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String eId = request.getParameter("eId");
        String city = request.getParameter("city");

        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        PreparedStatement st = con.prepareStatement("update admin set adminName=?,gender=?,orgName=?,orgAddress=?,adminContact=?,adminMailId=?,city=? where adminId=?");
        st.setString(1, aNm);
        st.setString(2, gender);
        st.setString(3, orgName);
        st.setString(4, address);
        st.setString(5, contact);
        st.setString(6, eId);
        st.setString(7, city);
        st.setString(8, uId);
        st.executeUpdate();
        UPDATE = 1;
    }
%>


<html>
    <link href = "style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include file="userheader.jsp"%>
        <form action="">
            <table cellpadding="16" cellspacing="2" style="color: white" border="0">
                <tr align = "center">
                    <td colspan="2"><h1 style = "color: white; size: 35px; font-family: rockwell;margin-bottom: -5px;letter-spacing: 5px; word-spacing: 7px; text-transform: uppercase">ADMIN  PERSONAL INFORMATION</h1></td>
                </tr>

                <%                    if (UPDATE == 1) {
                %>
                <tr align="center">
                    <td colspan="2"><h2 style="color: blue;font-size: 25px; margin-left: -10px;margin-top: -10px">Your profile has been updated!!!</h2></td>
                </tr>
                <%}%>
                <%
                    String uId = request.getParameter("uId");
                    String adminId = "";
                    adminId = uId;
                %>
                <tr>
                    <td>Admin ID</td>
                    <td><input type = text name = "uId" value="<%=adminId%>" class = "texttheme">
                        <input type="submit" name="load" formaction="" value="LOAD"></td>
                </tr>
                <%

                    String load = request.getParameter("load");
                    if (load != null && load.equals("LOAD")) {
                        

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
                        PreparedStatement st = con.prepareStatement("select * from admin where adminId=?");
                        st.setString(1, uId);
                        ResultSet rs = st.executeQuery();

                        String adminName = "";
                        String gender = "";
                        String eId = "";
                        String contact = "";
                        String orgName = "";
                        String address = "";
                        String city = "";

                        if (rs.next()) {
                            adminName = rs.getString(1);
                            gender = rs.getString(4);
                            orgName = rs.getString(5);
                            address = rs.getString(6);
                            contact = rs.getString(7);
                            eId = rs.getString(8);
                            city = rs.getString(9);

                        }

                %>
                <tr>
                    <td>Full Name</td>
                    <td><input type = text value="<%=adminName%>" name = "aNm" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="text" value="<%=gender%>" name="gender" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Organization Name</td>
                    <td><input type="text" value="<%=orgName%>" name="orgName" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Organization Address</td>
                    <td><input type="text" value="<%=address%>" name = "address" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Contact No.</td>
                    <td><input type = "text" value="<%=contact%>" name = "contact" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>Email ID</td>
                    <td><input type = text value="<%=eId%>" name = "eId" class = "texttheme"></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <input type="text" name="city" value="<%=city%>" class="texttheme">
                    </td>
                </tr>
                <%}%>
                <tr align="center">
                    <td>
                        <input type="submit" value="BACK" class="buttontheme" formaction="operatordashboard.jsp">
                    </td>
                    <td colspan="2">
                        <input type = submit value="UPDATE" name="btn" class = buttontheme>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>