<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.DriverManager"%>
<%@page import= "java.util.Date"%>
<%@page import= "java.text.DateFormat"%>

<%
    int RESULT = 0;
    int ID_VALIDATION = 0;
    int PASS_VALIDATION = 0;
    int ALL_VALIDATION = 0;
    int COMPLAIN_VALIDATION = 0;
    String btn = request.getParameter("btn");
    if (btn != null && btn.equals("Register")) {
        
        String fullName = request.getParameter("fNm");
        String contact = request.getParameter("contact");
        String complain = request.getParameter("complain");
        String uId = request.getParameter("uId");
        if (fullName.equals("") && contact.equals("") && complain.equals("")) {
            ALL_VALIDATION = 1;
        } else if (fullName.equals("")) {
            ID_VALIDATION = 1;
        } else if (contact.equals("")) {
            PASS_VALIDATION = 1;
        } else if (complain.equals("")) {
            COMPLAIN_VALIDATION = 1;
        } else {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

            Date date = new Date();
            DateFormat df = DateFormat.getDateInstance(DateFormat.FULL);
            PreparedStatement st = con.prepareStatement("insert into complain(fullName, contact, complain, date, status, userId) values(?,?,?,?,?,?)");
            st.setString(1, fullName);
            st.setString(2, contact);
            st.setString(3, complain);
            st.setString(4, df.format(date));
            st.setString(5, "under process");
            st.setString(6, uId);
            st.executeUpdate();
            RESULT =1;
        }
    }
%>

<html>
    <link  href="style.css" rel="stylesheet"/>
    <body class="publicbodytheme">
        <%@include  file="userheader.jsp" %>
        <h1 class="info">COMPLAIN</h1>
                <%if (RESULT == 1) {
                %>
                <h2 style="color: darkblue;font-size: 30px; margin-left: 800px;margin-bottom: 20px; margin-top: -20px">Complain Registered Successfully!!!</h2>
                <%
                    }%>
                
        <form>
            <table cellpadding="5" cellspacing="10" class="complaintab" style="margin-top: -10px">
                <tr>
                    <td>User ID</td>
                    <td><input value="<%=session.getAttribute("CALL")%>" name="uId" readonly="true" type="text" class="texttheme"></td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input placeholder="enter your full name" name="fNm" type="text" class="texttheme"></td>
                </tr>
                <% if (ID_VALIDATION == 1) {
                %>
                <tr>
                    <td colspan="2"><h2 style="color: red;font-size: 10px; margin-left: 185px; margin-top: -12px;">Full Name is mandatory</h2></td>
                </tr>
                <%}%>
                <tr>
                    <td>Contact</td>
                    <td><input name="contact" type="number" placeholder="Enter your contact" class="texttheme"></td>
                </tr>
                <%
                    if (PASS_VALIDATION == 1) {
                %>
                <tr>
                    <td colspan="2"><h2 style="color: red;font-size: 10px; margin-left: 185px; margin-top: -12px">Contact is mandatory</h2></td>
                </tr>
                <%}%>
                <tr>
                    <td style="margin-top: -10px">Complain</td>
                    <td><textarea name="complain" placeholder="type your complain" class="texttheme" style="height: 50px"></textarea></td>
                </tr>
                <%
                    if (COMPLAIN_VALIDATION == 1) {
                %>
                <tr>
                    <td colspan="2"><h2 style="color: red;font-size: 10px; margin-left: 185px; margin-top: -12px">*Complain is required</h2></td>
                </tr>
                <%}
                    if (ALL_VALIDATION == 1) {
                %>
                <tr>
                    <td colspan="2"><h2 style="color: red;font-size: 15px; margin-left: 200px;letter-spacing: 3px;margin-top: -10px;margin-bottom: -15px">All fields are compulsory</h2></td>
                </tr>
                <%}%>
                <tr align="center">
                    <td>
                        <input type="submit" value="Back" class="buttontheme" formaction="userdashboard.jsp">
                    </td>
                    <td>
                        <input type="submit" value="Register" name="btn" class="buttontheme" formaction="">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>