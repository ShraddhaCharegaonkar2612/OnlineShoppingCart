
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <link rel="stylesheet" type="text/css" href="new.css">
  
<script language="javascript">
          function editRecord(id)
          {
              var f = document.form;
              f.method="post";
              f.action='ConfirmOrder.jsp?id='+id;
              f.submit();
          }
            </script>

  </head>
<body>
    
<section class="sub-header">
            <div class="main">
            <div class="container">
             <nav>
             <ul>
                <li ><a href="userhomepage.jsp">Home<br></a></li>
                <li><a href="Gallery.jsp">Gallery</a></li>
                <li><a href="SearchProduct.jsp">Search Product</a></li>
                <li><a href="ChqueOrder To Customer.jsp">Cancel Order</a></li>                
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
    <div class="registration" align="center">Search Product  </div>
    
    <form method="post" name="form">
       
        <div class="user-details" >
           
            <table border="2" width="800px">

              <tr>-->
                          <td>Sr No</td>
                          <td>categories</td>
                          <td>Product Name</td>
                          <td>Color</td>
                          <td>Price</td>
                           <td>Image</td>
                           <td>Qty</td>

                      </tr>
<%
             int srno=0;
String cate=null;

String pnm=null;
int price=0;
String img=null;
String img11=null;
String col=null;
int qty=0;
    Statement st=con.createStatement();

        String str="select * from addproduct";
        ResultSet rs=st.executeQuery(str);
        
        while(rs.next())
        {
            srno=rs.getInt(1);
            cate=rs.getString(2);
            pnm=rs.getString(3);
             col=rs.getString(4);
             price=rs.getInt(5);
            img="img/"+ rs.getString(6);
            img11=img;
             qty=rs.getInt(7);
 %>
           
            
            <tr>
                          <td><%=srno%></td>
                          <td><%=cate%></td>
                          <td><%=pnm%></td>
                           <td><%=col%></td> 
                           <td><%=price%></td>
                          <td><img src="<%=img%>" width="75" height="75"></td> 
                           
                          
                            <td><%=qty%></td>  
                              <td><input type="button" name="Order" value="Order" style="background-color: olive;font-weight: bold;color: white"  onclick="editRecord(<%=rs.getInt(1)%>);" </td></tr>
                           <% 
        }
   
  
                           %> 
            </table>
         
        
          </div>
        
        </form>
       </div>
    </div> 
     
</body>
</html>
