
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
                    <li><a href="UserLogin.jsp">Login</a></li>
                    <li><a href="Logout.jsp">Logout</a></li>
               
                </ul>
            </nav>

                </div>
                
                
            <div class="title6">
                <h1>Login</h1>   
            </div>
           
    
    
            </div>
            
        </section>
        <div class="login">
        <div class="loginbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Login Here</h1>
            <form>
                <% 
                    String user=null;
                    String pass=null;
                    
                    user=request.getParameter("txname");
                    pass=request.getParameter("txpass");
                    
                %>
                <p>Username</p>
                <input type="text"  placeholder="Enter Username" name="txname">
                <p>Password</p>
                <input type="password" placeholder="Enter password" name="txpass">
                <input type="Submit" name="Login" value="Login">
                <a href="userforgetpass.jsp">Forget Password??</a><br>
                <a href="registeration.jsp">Don't have an account?</a>
                <% 
                     Statement st=con.createStatement();
                    if(user!=null && user!="" && pass!=null && pass!="")
                    {
                        
                       String str="select * from userregistration where username='"+user+"' and password='"+pass+"'";
                       ResultSet rs1=st.executeQuery(str);
                        if(rs1.next())
                        {
                            out.println("<script>alert('User login sucesseful...')</script>");
                           session.setAttribute("unm", user);
                            response.sendRedirect("userhomepage.jsp");
                        }
                        else{
                            out.println("<script>alert('User login failed...')</script>");
                           response.sendRedirect("registeration.jsp");
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
