
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
                <li ><a href="AdminHomePage.jsp">Home<br></a></li>
                <li><a href="AddProduct.jsp">Add Product</a></li>
                <li><a href="AdminShowProduct.jsp">Show Product</a></li>
                <li><a href="Datebetween Order Report.jsp">OrdersReport</a></li>                
                <li><a href="Datebetween Cancel Order.jsp">CanceledOrderReport </a></li>
                <li><a href="ReportRegister.jsp">RegisterReport</a></li>
                <li><a href="ReportFeedBack.jsp">FeedbackReport </a></li>
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
    <div class="registration" align="center">Search Order  </div>
    
    <form>
        <div class="user-details" >
           
     <table border="2" width="1000px">
         <tr>
             <td class="input-box"  colspan="2">
                <span class="details">Start Order Date</span></td>
             <td class="input-box" colspan="2">  <input type="text" name="txtorderdate" value=""  />("yyyy-MM-dd")
            </td>
         
             <td class="input-box"  colspan="2">
                <span class="details">End Order Date</span></td>
             <td class="input-box" colspan="3">  <input type="text" name="txtorderdate1" value=""  />("yyyy-MM-dd")
            </td>
         </tr>
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
                        String cnm=null;
                 String pin=null;
                 String mobile=null;
                 String add=null;
                  String cate=null;
                String pname=null;
                String img=null;
                String color=null;
                 String img1=null;
                   String dt=request.getParameter("txtorderdate");
                   String dt1=request.getParameter("txtorderdate1");
                int price=0;
                int qty=0;
                Statement st=con.createStatement();
                if(dt!=null && dt!="")
                {
             
                 
      String str="select * from confirmorder where orderdate >='"+dt+"' and orderdate <='"+dt1+"'";
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
            id=rs.getInt(1);
            dt=rs.getString(2);
            cnm=rs.getString(3);
             mobile=rs.getString(4);
             //add=rs.getString(5);
          
             cate=rs.getString(7);
             pname=rs.getString(8);
             color=rs.getString(9);
             price=rs.getInt(10);
           
             qty=rs.getInt(12);
 %>
           
            

         
           
            <tr>
                          <td><%=id%></td>
                          <td><%=dt%></td>
                          <td><%=cnm%></td>
                        
                         <td><%=mobile%></td>
                           <td><%=cate%></td>
                         
                          <td><%=pname%></td>
                           <td><%=color%></td> 
                           <td><%=price%></td>
                       
                           
                          
                            <td><%=qty%></td> 
                            <%}
   }
                
                      %>
              
            </table>
           
  
       </div>  
        
        <div class="button4" align="center">
                
          
                <input type="submit" value="Search Order" name="Search Oreder">
            
             </div>
     </form>
       </div>
    </div> 
           
   <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi & Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
 
</body>
</html>
