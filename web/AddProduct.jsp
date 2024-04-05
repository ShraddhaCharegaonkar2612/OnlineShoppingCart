
<%@include file="Connection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
                <h1>Add Product Info</h1>
               
            </div>
           
    
    
            </div>
            
</section><br><br><br>
    <div class="Register">
    <div class="container1">
    <div class="registration" align="center">Product Info </div>
     <%
                String cate=null;
                String name=null;
                
                String color=null;
                String price=null;
                String qty=null;
             
               
                name=request.getParameter("txpname");
                cate=request.getParameter("drpcat");
                 color=request.getParameter("txtcolor");
                 price=request.getParameter("txtprice");
                 qty=request.getParameter("txtqty");
             
                %>
    
    <form align="center">
        <div class="user-details" >
           
            
            <%
               int i1=0;
               Statement st=con.createStatement();
               String str="select count(*) from addproduct";
               ResultSet rs=st.executeQuery(str);
               while (rs.next())
               {
                 i1=rs.getInt(1);
                 i1++;
               }
                %>

            
            <div class="input-box">
                <span class="details">Product Id:</span>
                <input type="text" name="txsrno" value="<%=i1%>" readonly="true" />
            </div>
            
            <div class="input-box">
                <span class="details">Categories</span>
                <select name="drpcat" style="width: 300px ;height: 40px;border-radius: 5px; border-color: #9b59b6; font-size: medium" >
                    <option>Electronics</option>
                    <option>Furniture</option>
                    <option>Clothing</option>
                    <option>Footwear</option>
                    <option>Auto & Parts</option>
                     <option>HouseHold Item</option>
                </select>
            </div>
           <div class="input-box">
                <span class="details">  Product Name  :</span>
                <input type="text" placeholder="Product Enter  name" name="txpname" >
            </div>
            <div class="input-box">
                <span class="details">Color :</span>
                <input type="text" placeholder="color  name" name="txtcolor" value="" step="1">
            </div>
            <div class="input-box">
                <span class="details">Price :</span>
                <input type="text" placeholder="Enter  Price" name="txtprice" value="" step="1">
            </div>
          
             <%
            
           String img1=request.getParameter("upload");
            File f1=new File("img/"+img1);
           
            
          
            %>
            
            <div class="input-box">
                <span class="details">Product Image </span>       
 



               
                <input type="file" name="upload" value="" />
              
                
                  
            
            </div>
           
            <div class="input-box" align="center">
                <span class="details">Qty :</span>
                <input type="text"  placeholder="Enter  qty" name="txtqty" value="" step="1">
            </div>
        </div>
                 
        <div class="button4" align="center">
                
          
                <input type="submit" value="Add Product" name="Add Product">
               
               
           
        </div>
        
         
         
        
        
         <%
       Statement st1=con.createStatement();
        if ( name!=null && name!="" && cate!=null && cate!="" && color!=null && color!="" && price!=null && price!=""&& qty!=null && qty!="" && img1!=null && img1!="" )
            {
               String str1="insert into addproduct(id,categories,productnm,color,price,image,qty1)values("+i1+",'"+cate+"','"+name+"','"+color+"','"+price+"','"+img1+"',"+qty+")";
               int i=st1.executeUpdate(str1);
               
               out.println("<script>alert('Product Added Success.....')</script>");
             
                
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
