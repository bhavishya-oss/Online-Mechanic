<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%
    String fullName = request.getParameter("fNm");
    String empId = request.getParameter("empId");
    String password = request.getParameter("pass");
    String cpassword = request.getParameter("cpass");
    if(password.equals(cpassword))
    {
        String post = request.getParameter("post");
        String salary = request.getParameter("Salary");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact");
        String emailId = request.getParameter("eId");
        String city = request.getParameter("city");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con;
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mechanic", "root", "root");
        
        PreparedStatement st = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?)");
        st.setString(1, fullName);
        st.setString(2, empId);
        st.setString(3, password);
        st.setString(4, post);
        st.setString(5, salary);
        st.setString(6, address);
        st.setString(7,contact);
        st.setString(8, emailId);
        st.setString(9, city);
        st.executeUpdate();
        response.sendRedirect("admindashboard.jsp");
    }
    
    else
    {
        out.println("password and confirm password does not match!!!");
    }
%>