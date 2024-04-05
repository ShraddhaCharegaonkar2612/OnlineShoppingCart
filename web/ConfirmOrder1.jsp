
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
                
            </ul>     </nav>

                </div>
                
               
            <div class="title6">
                <h1>Confirm Order</h1>
               
            </div>
           
            </div>
            
</section><br><br><br>
    <div class="Register">
    <div class="container1">
    <div class="registration" align="center">Order Info </div>
     
    
    <form align="center">
        <%
          String unm1=(String)session.getAttribute("unm");
         String cnm2=(String)session.getAttribute("cnm1");
         String mobile2=(String)session.getAttribute("mobile1");
         String add2=(String)session.getAttribute("add1");
         String pin2=(String)session.getAttribute("pin1");
         String cate3=(String)session.getAttribute("cate2");
         String pnm4=(String)session.getAttribute("pnm3");
         String col4=(String)session.getAttribute("col3");
         String img4=(String)session.getAttribute("img3");
         String price5=(String)session.getAttribute("price4");
          String qty6=(String)session.getAttribute("qty5");
 
        %>
        <div class="user-details" >
           
            <marquee> UserName=<%=unm1%></marquee>
            <%
               int i1=0;
               Statement st=con.createStatement();
               String str="select count(*) from confirmorder";
               ResultSet rs=st.executeQuery(str);
               while (rs.next())
               {
                 i1=rs.getInt(1);
                 i1++;
               }
                %>

            
            <div class="input-box">
                <span class="details">Order Id:</span>
                <input type="text" name="txsrno" value="<%=i1%>" readonly="true" />
            </div>
             <div class="input-box">
                <span class="details">Order Date:</span>
                <input type="Date" name="txtodate" value=""  step="1"/>
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
                <span class="details">PinCode:</span>
                <input type="text" name="txtpin" value="<%=pin2%>" readonly="true" />
            </div>
           
            <div class="input-box">
                <span class="details">Categroies</span>
                <input type="text" name="txtcat" value="<%=cate3%>" readonly="true" />
            </div>
           <div class="input-box">
                <span class="details">  Product Name  :</span>
               <input type="text" name="txtpnm" value="<%=pnm4%>" readonly="true" />
            </div>
            <div class="input-box">
                <span class="details">Color :</span>
                <input type="text" name="txtcolor" value="<%=col4%>" readonly="true" />
            </div>
            <div class="input-box">
                <span class="details">Price :</span>
                <input type="text" name="txtprice" value="<%=price5%>" readonly="true" />
            </div>
          
            <div class="input-box">
                <span class="details">Product Image </span>       
              <img  src = "<%=img4%>" width = "100" height = "100" />
          </div>
 <div class="input-box">
                <span class="details">Order Qty:</span>
                <input type="text" name="txtqty" value=""  />
            </div>
<div class="input-box">
                <span class="details">Payment Type:</span>
                <select name="drpptype" style="font-size: x-large">
                    <option>cashondelivery</option>
                    <option>online</option>
                </select>
            </div>
              
          
        </div>
               
         <div class="button4" align="center">
                
          <input type="submit" value="ConfirmOrder" name="ConfirmOrder">
          </div>
        
             <div class="button4" align="center">
                
                 <a href="CashPayment.jsp">CashOnDelivery</a>
                
          </div>    
               
            <div class="button4" align="center">
               
                <a href="onlinepayment.jsp">Online</a>
          </div> 
        
         <%
        String odt=request.getParameter("txtodate");
         String qty=request.getParameter("txtqty");
         String ptype=request.getParameter("drpptype");
         
       Statement st2=con.createStatement();
        if (odt!=null && odt!="" && cnm2!=null && cnm2!="" && mobile2!=null && mobile2!="" && add2!=null && add2 !="" && pin2!=null && pin2!="" && cate3!=null && cate3!="" && pnm4!=null && pnm4!="" && col4!=null && col4!="" && img4!=null && img4!="" && qty!=null && qty!="")
            {
               String str2="insert into confirmorder(id,orderdate,customername,mobileno,address,pincode,categories,productname,color,price,image,qty,paytype)values("+i1+",'"+odt+"','"+cnm2+"',"+mobile2+",'"+add2+"','"+pin2+"','"+cate3+"','"+pnm4+"','"+col4+"','"+price5+"','"+img4+"',"+qty+",'"+ptype+"')";
               int i=st2.executeUpdate(str2);
               
               out.println("<script>alert('Your Order Confirm Sucess....')</script>");
            }
         int stock=0;
        if(qty!=null && qty!="")
        {
             int qty1=Integer.valueOf(qty);
             
                int qty2=Integer.valueOf(qty6);
                
             
              stock=qty2-qty1;
            
                         }

       
                     Statement st3=con.createStatement();
                   
                        
                       String str3="update addproduct set qty1="+stock+" where productnm='"+pnm4+"'";
                       int i=st3.executeUpdate(str3);
                      
        String qty1=String.valueOf(qty);
        session.setAttribute("qty2", qty1);
         String price6=String.valueOf(price5);
        session.setAttribute("price7", price6);
       
                %>
            
        
    </form>
        
                  </div>
       </div>
           
       
</body>
</html>
