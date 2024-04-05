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
          String id2=request.getParameter("id");
          
        %>
        <div class="user-details" >
           
            <marquee> UserName=<%=unm1%></marquee>
           
                <%
                 String cnm=null;
                 String pin=null;
                 String mobile=null;
                 String add=null;
                 Statement st1=con.createStatement();
                 String str1="select * from userregistration where username='"+unm1+"'";
                 ResultSet rs1=st1.executeQuery(str1);
                 while(rs1.next())
                 {
                     cnm=rs1.getString(2);
                     mobile=rs1.getString(3);
                     add=rs1.getString(4);
                     pin=rs1.getString(5);
                 }
                
                 
                %>
                 <div class="input-box">
                <span class="details">Customer Name:</span>
                <input type="text" name="txtcnm" value="<%=cnm%>" readonly="true" />
            </div>
                 <div class="input-box">
                <span class="details">Mobile No:</span>
                <input type="text" name="txtmob" value="<%=mobile%>" readonly="true" />
            </div>
                 <div class="input-box">
                <span class="details">Address:</span>
                <input type="text" name="txtadd" value="<%=add%>" readonly="true" />
            </div>
                 <div class="input-box">
                <span class="details">PinCode:</span>
                <input type="text" name="txtpin" value="<%=pin%>" readonly="true" />
            </div>
                <%
             String cate2=null;
          String pnm2=null;
          String col2=null;
          String img2=null;
          int price3=0;
           int qty3=0;
           
                 Statement st4=con.createStatement();
                 String str4="select * from addproduct where id="+id2+"";
                 ResultSet rs5=st4.executeQuery(str4);
                 while(rs5.next())
                   
                 { cate2=rs5.getString(2);
                     pnm2=rs5.getString(3);
                     col2=rs5.getString(4);
                     img2="img/"+rs5.getString(6);
                     price3=rs5.getInt(5);
                      qty3=rs5.getInt(7);

                 }
                 
                %>
            <div class="input-box">
                <span class="details">Categories</span>
                <input type="text" name="txtcat" value="<%=cate2%>" readonly="true" />
            </div>
           <div class="input-box">
                <span class="details">  Product Name  :</span>
               <input type="text" name="txtpnm" value="<%=pnm2%>" readonly="true" />
            </div>
            <div class="input-box">
                <span class="details">Color :</span>
                <input type="text" name="txtcolor" value="<%=col2%>" readonly="true" />
            </div>
            <div class="input-box">
                <span class="details">Price :</span>
                <input type="text" name="txtprice" value="<%=price3%>" readonly="true" />
            </div>
          
            
            
            <div class="input-box">
                <span class="details">Product Image </span>       
              <img  src = "<%=img2%>" width = "100" height = "100" />
          </div>
 

        </div>
               
         <div class="button4" align="center">
                
             <a href="ConfirmOrder1.jsp">ConfirmOrder</a>
          </div>
        <%
             
   session.setAttribute("cnm1", cnm);
   session.setAttribute("mobile1", mobile);
   session.setAttribute("add1", add);
   session.setAttribute("pin1", pin);
   session.setAttribute("cate2", cate2);
   session.setAttribute("pnm3", pnm2);
     session.setAttribute("col3", col2);
      session.setAttribute("img3", img2);
     
        String price1=String.valueOf(price3);       
             session.setAttribute("price4", price1);
              String qty4=String.valueOf(qty3);       
             session.setAttribute("qty5", qty4);

        %>
        
        
        
    </form>
        
                  </div>
       </div>
      
</body>
</html>
