
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link href="new.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
       
        <section class="sub-header">
            <div class="main">
            <div class="container">
             </div>
              
            <div class="title6">
                <h1>New Password</h1>   
            </div>
           
            </div>
            
        </section>&ensp;
        <div class="login">
        <div class="loginbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Forget Password</h1>
            <form>
                <% 
                    String admin=null;
                    String pass=null;
                    
                    admin=request.getParameter("txname"); 
                    pass=request.getParameter("txpass");
                %>
                <p>Adminname</p>
                <input type="text"  placeholder="Enter Adminname" name="txname">
                <p> New Password</p>
                <input type="password" placeholder="Enter password" name="txpass">
                <input type="Submit" name="Update" value="Update">
                <% 
                     Statement st=con.createStatement();
                    if(admin!=null && admin!="" && pass!=null && pass!="")
                    {
                        
                       String str="update adminlogin set password='"+pass+"' where adminname='"+admin+"'";
                       int i=st.executeUpdate(str);
                       out.println("<script>alert('Password Forget sucessefully...')</script>");
                      response.sendRedirect("AdminLogin.jsp");
    
                    }
                   
                %>
            </form>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
           
         <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi & Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
     
    </div>
    
</body>
</html>
