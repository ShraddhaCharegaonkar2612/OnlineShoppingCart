
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link rel="stylesheet" type="text/css" href="new.css">
    
    <script type="text/javascript">
function validate()
{ 
if( document.mobilenumbervalidation.txmobile.value == "" ||
isNaN( document.mobilenumbervalidation.txmobile.value) ||
document.mobilenumbervalidation.txmobile.value.length != 10 )
{
alert( "Please provide a 10 digit no" );
document.mobilenumbervalidation.txmobile.focus() ;

return false;
}

var email = document.mobilenumbervalidation.txemail.value;
atpos = email.indexOf("@");
dotpos = email.lastIndexOf(".");
if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
{
alert("Please enter correct email ID");
document.mobilenumbervalidation.txemail.focus() ;
return false;
}

return( true );
}
</script> 
  
</head>
<body>
   
    <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
                
                <ul>
                    <li><a href="registeration.jsp">Registeration</a></li>
                   <li><a href="MainHomePage.jsp">Logout</a></li>
               
                </ul>
                
            </nav>
                </div>
                
                <br><br>
            <div class="title6">
                <h1>Registration</h1>
               
    
            </div>
           
    
    
            </div>
           
    </section><br><br><br>
    <div class="Register">
    <div class="container1">
    <div class="registration">Registration</div><br>
    <%
        String fnm=null;
      
        String pin=null;
        String email=null;
        String mobile=null;
        String uname=null;
        String pass=null;
      
        String add=null;
        String rid=null;
        
        fnm=request.getParameter("txfname");
       
        pin=request.getParameter("txpcode");
        email=request.getParameter("txemail");
        mobile=request.getParameter("txmobile");
        uname=request.getParameter("txuname");
        pass=request.getParameter("txpassword");
      
        add=request.getParameter("txaddress");
      
        
        %>
   <form method="get" action="" name="mobilenumbervalidation" onsubmit="return(validate());"> 
        <div class="user-details">
            <%
               int i1=0;
               Statement st=con.createStatement();
               String str="select count(*) from userregistration";
               ResultSet rs=st.executeQuery(str);
               while (rs.next())
               {
                 i1=rs.getInt(1);
                 i1++;
               }
                %>
            
            <div class="input-box">
                <span class="details">Registration ID</span>
                <input type="text"  name="txrid" value="<%=i1%>" readonly= "true" />
            </div>
             <div class="input-box">
                <span class="details">Full Name</span>
                <input type="text" placeholder="Enter your name" name="txfname" required>
            </div>
            <div class="input-box">
                <span class="details">Mobile Number</span>
                <input type="text" placeholder="Enter your mobile number" name="txmobile" required>
            </div>
            
            <div class="input-box">
                <span class="details">Address</span>
                <input type="text" placeholder="Enter your address"  name="txaddress" required>
            </div>
            
              
           
            <div class="input-box">
                <span class="details">Pincode</span>
                <input type="text" placeholder="Enter your pincode" name="txpcode">
            </div>
            
            <div class="input-box">
                <span class="details">Email</span>
                <input type="text" placeholder="Enter your email"  name="txemail">
            </div>
           
            <div class="input-box">
                <span class="details">User Name</span>
                <input type="text" placeholder="Enter your Username" name="txuname">
            </div>
            <div class="input-box">
                <span class="details">Password</span>
                <input type="password" placeholder="Enter your Password"  name="txpassword">
            </div>
            
        </div>
       <div class="button1" >
           <input type="submit" value="Register">
       </div>
        
        <%
        
            
            Statement st1=con.createStatement();
        if (fnm!=null && fnm!=""  && pin!=null && pin!="" && email!=null && email!="" && mobile!=null && mobile!="" && uname!=null && uname!="" && pass!=null && pass!="" && add!=null && add!="")
            {
                String str1="insert into userregistration(id,fullname,mobileno,address,pincode,emailid,username,password) values("+i1+",'"+fnm+"',"+mobile+",'"+add+"','"+pin+"','"+email+"','"+uname+"','"+pass+"')";
                int i=st.executeUpdate(str1);
                out.println("<script>alert('Your Registration  success......')</script>");
                
            }
      
        %>
        </form>
    
</div>
</div>
        
      <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi & Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
     
  
</body>
</html>