<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<%
    String adminId = request.getParameter("aId");
    String password = request.getParameter("password");
    String productId = request.getParameter("pId");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");

      PreparedStatement st = con.prepareStatement("select * from admin where adminId=? and adminPass=? ");
    st.setString(1, adminId);
    st.setString(2, password);
    ResultSet rs = st.executeQuery();
    if (rs.next()) {
        PreparedStatement st1 = con.prepareStatement("delete from product where proId=?");
        st1.setString(1, productId);
        st1.executeUpdate();
        out.println("Product record deleted!!!");
        response.sendRedirect("deleteproduct.jsp");
    } else {
        out.println("invalid id/password");
    }



%>