<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String fullName = request.getParameter("fNm");
    String userId = request.getParameter("uId");
    String password = request.getParameter("pass");
    String cpassword = request.getParameter("cpass");
    if(password.equals(cpassword))
    {
        String gender = request.getParameter("gen");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String emailId = request.getParameter("eId");
        String city = request.getParameter("city");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        
        PreparedStatement st = con.prepareStatement("insert into signup values(?,?,?,?,?,?,?,?)");
        st.setString(1, fullName);
        st.setString(2, userId);
        st.setString(3, password);
        st.setString(4, gender);
        st.setString(5, address);
        st.setInt(6, Integer.parseInt(contact));
        st.setString(7, emailId);
        st.setString(8, city);
        st.executeUpdate();
        response.sendRedirect("login.jsp");
    }
    
    else
    {
        out.println("password and confirm password does not match!!!");
    }
%>