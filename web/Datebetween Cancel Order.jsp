
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
                <h1>Search Cancel Order</h1>
               
            </div>
           
            </div>
            
</section>
   <br><br><br><br><br><br><br><br><br>
    <div class="registration" align="center">Search Cancel Order  </div>
    
    <form>
        <div class="user-details" width="1000px" align="center">
          
           <table border="2" width="1000px" align="center">
         <tr>
             <td class="input-box"  colspan="2">
                <span class="details">Enter Cancel Order Date</span></td>
             <td class="input-box" colspan="2">  <input type="text" name="txtcanceldate" value=""  />("yyyy-MM-dd")
            </td>
             <td class="input-box"  colspan="2">
                <span class="details">Enter Cancel Order Date</span></td>
             <td class="input-box" colspan="3">  <input type="text" name="txtcanceldate1" value=""  />("yyyy-MM-dd")
            </td>
         </tr>
             <tr> 
                         <td>CancelNo</td>
                          <td>Canceldate</td>
                          <td>Sr No</td>
                          <td>Orderdate</td>
                          <td>Customername</td>
                          <td>MobileNo</td>
                          <td>Pincode</td>
                          <td>Categories</td>
                          <td>Productname</td>
                          <td>Color</td>
                          <td>Price</td>
                          <td>Qty</td>
                      </tr>
        
                      <%
                      int cno=0;
                      int id=0;
                      String odt=null;
                 String cnm=null;
                 String pin=null;
                 String mobile=null;
                 String add=null;
                  String cate=null;
                String pname=null;
                String img=null;
                String color=null;
                 String img1=null;
                   String cdt=request.getParameter("txtcanceldate");
                    String cdt1=request.getParameter("txtcanceldate1");
                int price=0;
                int qty=0;
                Statement st=con.createStatement();
                if(cdt!=null && cdt!="")
                {
               
      String str="select * from cancelorder where canceldate>='"+cdt+"' and canceldate<='"+cdt+"'";
        ResultSet rs=st.executeQuery(str);
        while(rs.next())
        {
            cno=rs.getInt(1);
            cdt=rs.getString(2);
            id=rs.getInt(3);
           odt=rs.getString(4);
            cnm=rs.getString(5);
             mobile=rs.getString(6);
             add=rs.getString(7);
             pin=rs.getString(8);
             cate=rs.getString(9);
             pname=rs.getString(10);
             color=rs.getString(11);
             qty=rs.getInt(12);
 %>
          
            <tr>
                          <td><%=cno%></td>
                          <td><%=cdt%></td>
                            <td><%=id%></td>
                              <td><%=odt%></td>
                          <td><%=cnm%></td>
                          <td><%=mobile%></td>
                           <td><%=add%></td>
                           <td><%=pin%></td>
                           <td><%=cate%></td>
                         
                          <td><%=pname%></td>
                           <td><%=color%></td> 
                            <td><%=qty%></td> 
                            <%}
   }
                
                      %>
                
            </table>
            
        </div>
             
         <div class="button4" align="center">
                
                <input type="submit" value="Search Cancel Order" name="Search Cancel Order">
               
        </div>
        
       </div>  
        
    </form>
           
   <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Raut Siddhi & Charegaonkar Shraddha SGMCK 2023-24</marquee>
</div>
 
</body>
</html>
