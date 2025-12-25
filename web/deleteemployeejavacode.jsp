<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<%
    String adminId = request.getParameter("aId");
    String password = request.getParameter("password");
    String empId = request.getParameter("eId");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

      PreparedStatement st = con.prepareStatement("select * from admin where adminId=? and adminPass=? ");
    st.setString(1, adminId);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        PreparedStatement st1 = con.prepareStatement("delete from employee where empId=?");
        st1.setString(1, empId);
        st1.executeUpdate();
        out.println("Admin record deleted!!!");
        response.sendRedirect("admindashboard.jsp");
    } else {
        out.println("invalid id/password");
    }



%>