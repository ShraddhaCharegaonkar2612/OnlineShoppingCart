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
              f.action='Cancel Order.jsp?id='+id;
              f.submit();
          }
            </script>

</head>
<body>
     <%
           String unm1=(String)session.getAttribute("unm");
       %> 
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
                <h1>Check My Order</h1>
               
            </div>
           
    
    
            </div>
            
</section><br><br><br>
    <div class="Register">
    <div class="container1">
         <marquee> UserName=<%=unm1%></marquee>
    <div class="registration" align="center">Check Order To Customer  </div>
    
 <form method="post" name="form">
        <div class="user-details" >
           
     <table border="2" width="1000px">
         <%
                 String cnm=null;
               
                 Statement st1=con.createStatement();
                 String str1="select * from userregistration where username='"+unm1+"'";
                 ResultSet rs1=st1.executeQuery(str1);
                 while(rs1.next())
                 {
                     cnm=rs1.getString(2);
                   
                 }
                %>
       
            <tr>
                          <td>Sr No</td>
                          <td>Orderdate</td>
                          <td>Customername</td>
                          <td>MobileNo</td>
                       
                         
                           <td>Categories</td>
                       <td>Productname</td>
                          <td>Color</td>
                          <td>Price</td>
                          
                           <td>Qty</td>
                      </tr>
        
                      <%
                      int id=0;
                      
                 String pin=null;
                 String mobile=null;
                 String add=null;
                  String cate=null;
                String pname=null;
                String img=null;
                String color=null;
                
                   String dt=null;
                int price=0;
                int qty=0;
                Statement st=con.createStatement();
                
                 
      String str="select id,orderdate,customername,mobileno,address,categories,productname,price,image,qty from confirmorder where customername='"+cnm+"'";
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
            id=rs.getInt(1);
            dt=rs.getString(2);
            cnm=rs.getString(3);
             mobile=rs.getString(4);
             add=rs.getString(5);
             //pin=rs.getString(6);
             cate=rs.getString(6);
             pname=rs.getString(7);
             //color=rs.getString(9);
             price=rs.getInt(8);
           
           qty = rs.getInt(10);
           
            
             
 %>
           
            

         
           
            <tr>
                          <td><%=id%></td>
                          <td><%=dt%></td>
                          <td><%=cnm%></td>
                        <td><%=mobile%></td>
                          <td><%=add%></td>
                           <td><%=cate%></td>
                         
                          <td><%=pname%></td>
                           
                           <td><%=price%></td>
                        <td><%=qty%></td>
                           
                          
                           
                             <td><input type="button" name="CancelOrder" value="CancelOrder" style="background-color: red;font-size: x-large;font-weight: bold;color: white"  onclick="editRecord(<%=rs.getInt(1)%>);" </td></tr>
                            <%
        }
       /* String id1=String.valueOf(id);
        session.setAttribute("id2", id1);
        session.setAttribute("dt1", dt);
        session.setAttribute("cnm1", cnm);
       
        session.setAttribute("mobile1", mobile);
          session.setAttribute("add1", add);
        session.setAttribute("pin1", pin);
        session.setAttribute("cate1", cate);
        session.setAttribute("pname1", pname);
        session.setAttribute("color1", color);
          String qty1=String.valueOf(qty);
        session.setAttribute("qty2", qty1);*/
         
                
        
        
        
        
                      %>
                
                
                
                
                
                
                
                
            </table>
           
  
         
         
        
        
       </div>  
        
      
     </form>
       </div>
    </div> 
           
   <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi & Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
 
</body>
</html>
