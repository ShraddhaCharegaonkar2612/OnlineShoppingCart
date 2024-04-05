
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
                <h1>Online Payment</h1>
               
            </div>
           
            </div>
            
</section><br><br><br>
    <div class="Register">
    <div class="container1">
    <div class="registration" align="center">Online Payment
    </div>
     
    
    <form align="center">
        <%
          String unm1=(String)session.getAttribute("unm");
        String cnm2=(String)session.getAttribute("cnm1");
         String mobile2=(String)session.getAttribute("mobile1");
        
         String pnm4=(String)session.getAttribute("pnm3");
        String qty3=(String)session.getAttribute("qty2");
         String price5=(String)session.getAttribute("price7");
          
        %>
        <div class="user-details" >
           
            <marquee> UserName=<%=unm1%></marquee>
            <%
               int i1=0;
               Statement st=con.createStatement();
               String str="select count(*) from oinlinepayment";
               ResultSet rs=st.executeQuery(str);
               while (rs.next())
               {
                 i1=rs.getInt(1);
                 i1++;
               }
                %>

            
            <div class="input-box">
                <span class="details">Receipt Id:</span>
                <input type="text" name="txsrno" value="<%=i1%>" readonly="true" />
            </div>
             <div class="input-box">
                <span class="details">Receipt Date:</span>
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
                <span class="details">  Product Name  :</span>
               <input type="text" name="txtpnm" value="<%=pnm4%>" readonly="true" />
            </div>
            
            <div class="input-box">
                <span class="details">Order Qty:</span>
                <input type="text" name="txtqty" value="<%=qty3%>" readonly="true"  />
            </div>
            <div class="input-box">
                <span class="details">Price :</span>
                <input type="text" name="txtprice" value="<%=price5%>" readonly="true" />
            </div>
          <%
            int qty=0;
            int rate=0;
            int amt=0;
            qty=Integer.valueOf(qty3);
             rate=Integer.valueOf(price5);
             amt=qty*rate;
            %>
           
 
            <div class="input-box">
                <span class="details">Bill Amount:</span>
                <input type="text" name="txtqty" value="<%=amt%>"readonly="true"  />
            </div>
            <% 
            String s="online";
            %>
<div class="input-box">
                <span class="details">Payment Type:</span>
                <input type="text" name="txtptype" value="<%=s%>" readonly="true"  />
            </div>
               
                <div class="input-box">
                <span class="details">QR Code:</span>
                <img src="img/paymentQR.jpeg" width="200" height="200" alt="paymentQR"/>


            </div>
             
        </div>
               
         <div class="button4" align="center">
                     <input type="submit" value="Payment" name="Payment">
          </div>
        
          
         <%
         String bdt=request.getParameter("txtodate");
         Statement st1=con.createStatement();
         if(bdt!=null && bdt!="")
         {
         String str1="insert into oinlinepayment(receiptno,receiptdate,customername,mobilenumber,productname,qty,price,billamount,paytype)values("+i1+",'"+bdt+"','"+cnm2+"','"+mobile2+"','"+pnm4+"',"+qty3+","+price5+","+amt+",'"+s+"')";
          int i=st1.executeUpdate(str1);
               
               out.println("<script>alert('Payment Success.....')</script>");
        
         }        
                    
                %>
            
         
    </form>
        
                  </div>
       </div>
           
       
</body>
</html>

