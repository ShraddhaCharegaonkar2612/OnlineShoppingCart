
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="new.css">
    </head>
   <body>
     <%
           String unm1=(String)session.getAttribute("unm");
           
           String id1=request.getParameter("id");
       %> 
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
                <h1>Cancel Order</h1>
               
            </div>
           
            </div>
            
</section><br><br><br>
    <div class="Register">
    <div class="container1">
          <marquee> UserName=<%=unm1%></marquee>
    <div class="registration" align="center">Cancel Order Info </div>
     
    
    <form align="center">
        <div class="user-details" >
           
            
            <%
               int i1=0;
              Statement st=con.createStatement();
               String str="select count(*) from cancelorder";
               ResultSet rs=st.executeQuery(str);
               while (rs.next())
               {
                 i1=rs.getInt(1);
                 i1++;
               }
                %>
 <div class="input-box">
                <span class="details">Cancel Id:</span>
                <input type="text" name="txcid" value="<%=i1%>" readonly="true" />
            </div>
             <div class="input-box">
                <span class="details">Cancel Date:</span>
                <input type="Date" name="txtcdate" value="" step="1" />
            </div>
                <%
                 String id3=null;
           String dt2=null;
           String cnm2=null;
           String mobile2=null;
           String add2=null;
           String pin2=null;
           String cate2=null;
            String pname2=null;
             String color2=null;
              int qty3=0;
              Statement st1=con.createStatement();
               String str1="select * from confirmorder where id="+id1+"";
               ResultSet rs1=st1.executeQuery(str1);
               while (rs1.next())
               {
                   dt2=rs1.getString(2);
                   cnm2=rs1.getString(3);
                   mobile2=rs1.getString(4);
                   add2=rs1.getString(5);
                   pin2=rs1.getString(6);
                   cate2=rs1.getString(7);
                   pname2=rs1.getString(8);
                   color2=rs1.getString(9);
                   qty3=rs1.getInt(12);
               }
                    

                %>
            <div class="input-box">
                <span class="details">Order Id:</span>
                <input type="text" name="txorno" value="<%=id1%>" readonly="true" />
            </div>
             <div class="input-box">
                <span class="details">Order Date:</span>
                <input type="text" name="txtodate" value="<%=dt2%>" readonly="true" />
            </div>
                 <div class="input-box">
                <span class="details">Customer Name:</span>
                <input type="text" name="txtcnm" value="<%=cnm2%>" readonly="true" />
            </div>
                 <div class="input-box">
                <span class="details">Mobile No:</span>
                <input type="text" name="txtmob" value="<%=mobile2%>" readonly="true" />
            </div>
                 <div class="input-box">
                <span class="details">Address:</span>
                <input type="text" name="txtadd" value="<%=add2%>" readonly="true" />
            </div>
                 <div class="input-box">
                <span class="details">Pin Code:</span>
                <input type="text" name="txtpin" value="<%=pin2%>" readonly="true" />
            </div>
            <div class="input-box">
                <span class="details">Categories :</span>
                <input type="text" name="txtcat" value="<%=cate2%>" readonly="true" />
            </div>
           <div class="input-box">
                <span class="details">  Product Name  :</span>
               <input type="text" name="txtpnm" value="<%=pname2%>" readonly="true" />
            </div>
            <div class="input-box">
                <span class="details">Color :</span>
                <input type="text" name="txtcolor" value="<%=color2%>" readonly="true" />
            </div>
           
 <div class="input-box">
                <span class="details">Order Qty:</span>
                <input type="text" name="txtqty" value="<%=qty3%>" readonly="true" />
            </div>

        </div>
               
        <div class="button4" align="center">
                
          
                <input type="submit" value="CancelOrder" name="CancelOrder">
              
        </div>
        
         
         <%
         int sqty=0;
           Statement st6=con.createStatement();
                   
                        
                       String str6="select * from addproduct where productnm='"+pname2+"'";
                       ResultSet rs6=st6.executeQuery(str6);
                       while(rs6.next())
                       {
                           sqty=rs6.getInt(7);
                       
                       } 
                   
          id3=request.getParameter("txorno");
           dt2=request.getParameter("txtodate");
         cnm2=request.getParameter("txtcnm");
            mobile2=request.getParameter("txtmob");
            add2=request.getParameter("txtadd");
            pin2=request.getParameter("txtpin");
            cate2=request.getParameter("txtcat");
             pname2=request.getParameter("txtpnm");
              color2=request.getParameter("txtcolor");
              String qty31=request.getParameter("txtqty");
         String cdt=request.getParameter("txtcdate");
       Statement st2=con.createStatement();
       
       if (cdt!=null && cdt!="")    
       {
               String str2="insert into cancelorder(id,canceldate,orderid,orderdate,customername,mobileno,address,pincode,category,productname,color,orderqty)values("+i1+",'"+cdt+"',"+id3+",'"+dt2+"','"+cnm2+"','"+mobile2+"','"+add2+"','"+pin2+"','"+cate2+"','"+pname2+"','"+color2+"',"+qty3+")";
               int i=st2.executeUpdate(str2);
               
               out.println("<script>alert('Your Order Cancel Sucess....')</script>");
             
               
               int a=0;
               int stock=0;
               a=Integer.valueOf(qty31);
               stock=sqty+a;
                  Statement st5=con.createStatement();
                   
                        
                       String str5="update addproduct set qty="+stock+" where productnm='"+pname2+"'";
                       int i12=st5.executeUpdate(str5);
                       out.println("<script>alert('Stock Update sucessefully...')</script>");
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
