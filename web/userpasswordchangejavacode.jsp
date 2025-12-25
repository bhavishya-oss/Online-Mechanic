<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId = request.getParameter("uId");
    String password = request.getParameter("pass");
    String npassword = request.getParameter("npass");
    String cnpassword = request.getParameter("cnpass");

    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

    PreparedStatement st = con.prepareStatement("select * from signup where userid=? and password=?");
    st.setString(1, userId);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        if (npassword.equals(cnpassword)) {
            PreparedStatement st1 = con.prepareStatement("update  signup set password=? where userId=?");
            st1.setString(1, npassword);
            st1.setString(2, userId);
            st1.executeUpdate();
            response.sendRedirect("login.jsp");
        } else {
            out.println("new and confirm new pssword does not match");
        }
    } else {
        out.println("invalid id/password");
    }
%>