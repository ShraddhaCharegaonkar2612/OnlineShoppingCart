
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" type="text/css" href="new.css">
  


  </head>
<body>
    
<section class="sub-header">
            <div class="main">
            <div class="container">
             <nav>
              <ul>
                <li ><a href="userhomepage.jsp">Home<br></a></li>
                <li><a href="SearchProduct.jsp">SearchProduct</a></li>
                <li><a href="ChqueOrder To Customer.jsp">CancelOrder</a></li>                
                <li><a href="MainHomePage.jsp">Logout</a></li>
                
            </ul>
                            </nav>

                </div>
                
                
                 
            <div class="title6">
                <h1>Search Product</h1>
               
            </div>
           
    
    
            </div>
            
</section><br><br><br>
    <div class="Register">
    <div class="container1">
          <%
         
          
           String unm1=(String)session.getAttribute("unm");
       %> 
          <marquee> UserName=<%=unm1%></marquee>
    <div class="registration" align="center"> Our Products  </div>
    
    <form>
       
        <div class="user-details" >
           
           
             
<%
            
String img=null;

    Statement st=con.createStatement();
  
        String str="select * from addproduct";
        
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
            
            img="img/"+ rs.getString(6);
            
            
 %>
           
         
 <tr>         
 <td>
 <img src="<%=img%>" width="75" height="75"><td></tr>
                          <%
                              }
   
  
                           %> 
  
          </div>
              
        </form>
       </div>
    </div> 
        
           
   <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi & Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
 
</body>
</html>
