<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String proName = request.getParameter("pNm");
    String category = request.getParameter("cat");
    String description = request.getParameter("des");
    String cost = request.getParameter("cost");   
    String offer = request.getParameter("offer");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        
        PreparedStatement st = con.prepareStatement("insert into product (proName,category,description,cost,offer) values(?,?,?,?,?)");
        st.setString(1, proName);
        st.setString(2, category);
        st.setString(3, description);
        st.setString(4, cost);
        st.setString(5, offer);
        st.executeUpdate();
        response.sendRedirect("addproduct.jsp");
        
%>