
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
            
        </section>
        <div class="login">
        <div class="loginbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Forget Password</h1>
            <form>
                <% 
                    String user=null;
                    String pass=null;
                    
                    user=request.getParameter("txname");
                    pass=request.getParameter("txpass");
                    
                %>
                <p>Username</p>
                <input type="text"  placeholder="Enter Username" name="txname">
                <p> New Password</p>
                <input type="password" placeholder="Enter password" name="txpass">
                <input type="Submit" name="Update" value="Update">
                <% 
                     Statement st=con.createStatement();
                    if(user!=null && user!="" && pass!=null && pass!="")
                    {
                        
                       String str="update userregistration set password='"+pass+"' where username='"+user+"'";
                       int i=st.executeUpdate(str);
                       out.println("<script>alert('Password Forget sucessefully...')</script>");
                       response.sendRedirect("UserLogin.jsp");
    
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
