<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String empId = request.getParameter("eId");
    String password = request.getParameter("pass");
    String npassword = request.getParameter("npass");
    String cnpassword = request.getParameter("cnpass");

    Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

    PreparedStatement st = con.prepareStatement("select * from employee where empId=? and password=?");
    st.setString(1, empId);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        if (npassword.equals(cnpassword)) {
            PreparedStatement st1 = con.prepareStatement("update  employee set password=? where empId=?");
            st1.setString(1, npassword);
            st1.setString(2, empId);
            st1.executeUpdate();
            response.sendRedirect("authlogin.jsp");
        } else {
            out.println("new and confirm new pssword does not match");
        }
    } else {
        out.println("invalid id/password");
    }
%>