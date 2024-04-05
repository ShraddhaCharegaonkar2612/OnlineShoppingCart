
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link rel="stylesheet" type="text/css" href="demo.css">
    
    
  
</head>
<body>
   
    <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
                
                 <ul>
                <li ><a href="MainHomePage.jsp">Home<br></a></li>
                <li><a href="AdminLogin.jsp">Admin Login</a></li>
                <li><a href="UserLogin.jsp">Customer Login</a></li>                
                <li><a href="contactus.jsp">Contact Us</a></li>
                 <li><a href="feedback.jsp">FeedBack</a></li>
            </ul>
                
            </nav>
                </div>
                
                <br><br>
            <div class="title6">
                <h1>FeedBack</h1>
               
            </div>
           
    
    
            </div>
           
    </section><br><br><br>
    <div class="Register">
    <div class="container1">
    <div class="registration">FeedBack</div><br>
    <%
        String fnm=null;
      
       
        String mobile=null;
        String msg=null;
       
      
        
        fnm=request.getParameter("txfname");
      
        mobile=request.getParameter("txmobile");
        msg=request.getParameter("txtmsg");
       
      
        
        %>
   <form> 
        <div class="user-details">
            
         
             <div class="input-box">
                <span class="details">Full Name</span>
                <input type="text" placeholder="Enter your name" name="txfname" required>
            </div>
            <div class="input-box">
                <span class="details">Mobile Number</span>
                <input type="text" placeholder="Enter your mobile number" name="txmobile" required>
            </div>
            
            <div class="input-box">
                <span class="details">Message</span>
                <input type="text" placeholder="Enter your feedback message"  name="txtmsg" required>
            </div>
            
              
           
           
           
            
            
        </div>
       <div class="button1" >
           <input type="submit" value="FeedBack">
       </div>
        
        <%
        
            
            Statement st1=con.createStatement();
        if (fnm!=null && fnm!=""   && mobile!=null && mobile!="" && msg!=null && msg!="")
            {
                String str1="insert into feedback(name,mobileno,feedbackmsg) values('"+fnm+"',"+mobile+",'"+msg+"')";
                int i=st1.executeUpdate(str1);
                out.println("<script>alert('Your FeedBack  success......')</script>");
                
            }
      
        %>
        </form>
    
</div>
</div>
        
      <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi and Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
     
  
</body>
</html>