
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
            <nav>
                
                <ul>
                    <li><a href="AdminLogin.jsp">Login</a></li>
                    <li><a href="Logout.jsp">Logout</a></li>
               
                </ul>
                            </nav>

            </div>
                
            <div class="title6">
                <h1>Admin Login</h1>
               
            </div>
           
    
    
            </div>
            
        </section>
        <div class="login">
        <div class="loginbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Login Here</h1>
            <form>
               <% 
                    String admin=null;
                    String pass=null;
                    
                    admin=request.getParameter("txname");
                    pass=request.getParameter("txpass");
                    
                %>

                
                <p>Username</p>
                <input type="text"  placeholder="Enter Admin name" name="txname">
                <p>Password</p>
                <input type="password" placeholder="Enter password" name="txpass">
                <input type="Submit" name="Login" value="Login">
                <a href="Admin Forget Password.jsp">Forget Password??</a><br>
                
               <% 
                     Statement st=con.createStatement();
                    if(admin!=null && admin!="" && pass!=null && pass!="")
                    {
                        
                       String str="select * from adminlogin where adminname='"+admin+"' and password='"+pass+"'";
                       ResultSet rs1=st.executeQuery(str);
                        if(rs1.next())
                        {
                            out.println("<script>alert('Admin login sucesseful...')</script>");
                         
                            response.sendRedirect("AdminHomePage.jsp");
                        }
                        else{
                            out.println("<script>alert('Admin login failed...')</script>");
                          
                        }
                        
                    }
                %>
               
            </form>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <!--footer start-->

     <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi & Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
     
    
    </div>
    


</body>
</html>
