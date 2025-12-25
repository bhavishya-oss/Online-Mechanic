<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String adminId = request.getParameter("aId");
    String password = request.getParameter("pass");
    String npassword = request.getParameter("npass");
    String cnpassword = request.getParameter("cnpass");

    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

    PreparedStatement st = con.prepareStatement("select * from admin where adminId=? and adminPass=?");
    st.setString(1, adminId);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        if (npassword.equals(cnpassword)) {
            PreparedStatement st1 = con.prepareStatement("update  admin set adminPass=? where adminId=?");
            st1.setString(1, npassword);
            st1.setString(2, adminId);
            st1.executeUpdate();
            response.sendRedirect("authlogin.jsp");
        } else {
            out.println("new and confirm new pssword does not match");
        }
    } else {
        out.println("invalid id/password");
    }
%>