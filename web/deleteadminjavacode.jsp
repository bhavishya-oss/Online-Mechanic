<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<%
    String adminId = request.getParameter("aId");
    String password = request.getParameter("password");
    String opId = request.getParameter("oId");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

      PreparedStatement st = con.prepareStatement("select * from operator where opId=? and opPassword=? ");
    st.setString(1, opId);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        PreparedStatement st1 = con.prepareStatement("delete from admin where adminId=?");
        st1.setString(1, adminId);
        st1.executeUpdate();
        out.println("Admin record deleted!!!");
        response.sendRedirect("operatordashboard.jsp");
    } else {
        out.println("invalid id/password");
    }



%>