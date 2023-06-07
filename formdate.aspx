﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="formdate.aspx.cs" Inherits="formdate" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'/>
     <link   href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
   <link   rel="stylesheet" type="text/css" href="sear.css"/>
     <title></title>
</head>
<body>
    
 <div class="sidebar">
    <div class="logo-details">
      
      <span class="logo_name">I & S.B.S</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="Main.aspx" class="active">
            <i class='bx bx-grid-alt'></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="Registration.aspx">
            <i class='fa fa-user icons'></i>
            <span class="links_name">Registration</span>
          </a>
        </li>
           <li>
          <a href="RegistrationDetails.aspx">
            <i class='fa fa-user icons'></i>
            <span class="links_name">Registration Details</span>
          </a>
        </li>
        <li>
          <a href="Inventorypage.aspx">
            <i class='fa fa-tasks icons'></i>
            <span class="links_name">Inventory</span>
          </a>
        </li>
        <li>
          <a href="InventoryviewPage.aspx">
            <i class='fa fa-tasks icons'></i>
            <span class="links_name">Inventory Details</span>
          </a>
        </li>
        <li>
          <a href="Salbooking.aspx">
            <i class='fa fa-book icons'></i>
            <span class="links_name">Sales Booking</span>
          </a>
        </li>
        <li>
          <a href="Salesbookingviewpage.aspx">
            <i class='fa fa-book icons'></i>
            <span class="links_name">Salesbooking Details</span>
          </a>
        </li>
        <li>
          <a href="Formdate.aspx">
            <i class='fa fa-book icons'></i>
            <span class="links_name">SearchBooking</span>
          </a>
        </li>
       <%-- <li>--%>
          <%--<a href="#">
            <i class='bx bx-message'></i>
            <span class="links_name">Messages</span>
          </a>
        </li>
       
        <li>
          <a href="#">
            <i class='bx bx-cog'></i>
            <span class="links_name">Setting</span>
          </a>
        </li>--%>
        <li class="log_out">
          <a href="login.aspx">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
    <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Search Booking</span>
      </div>
     <%-- <div class="search-box">
        <input type="text" placeholder="Search..."/>
        <i class='bx bx-search' ></i>
      </div>--%>
      <div class="profile-details">
        <img src="megan.png" alt=""/>
        <span class="admin_name">Kavita singh</span>
     <%-- <i class='bx bx-chevron-down'></i>--%>
      </div>
    </nav>
        
   </section>
     <form id="form" runat="server">
         <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
         
             <lable> StartDate:</lable>
          <asp:TextBox ID="StartDate"  class="inset"   runat="server" ></asp:TextBox>
              <cc1:calendarextender ID="txt_CalendarExtender1" runat="server"  Format="dd/MM/yyyy"   CssClass="tt" TargetControlID="StartDate"></cc1:calendarextender>
             <lable>EndDate:</lable>
         <asp:TextBox ID="EndDate"  runat="server" CssClass="rrrr"></asp:TextBox>
             <cc1:calendarextender ID="Calendarextender1" runat="server"  Format="dd/MM/yyyy"  TargetControlID="EndDate"></cc1:calendarextender>

        <asp:Button ID="Search" Text="Search" runat="server" cssclass="btn btn-primary" onclick="Search_Click" BackColor="blue" CommandName="Search"/>
                    
        
     <div class="ggg" > 
         <asp:ListView ID="ListView1" runat="server">

                <LayoutTemplate>  
              <table border="1">  
                  <tr>
                       </td>
                      <th>Brand</th>  
                      <th>Agency</th>  
                      <th>Client</th>  
                      <th>CardRate</th>
                      <th>SealingRate</th>
                      <th>StartDate</th>
                      <th>EndDate</th>
                      <th>Booking Type</th>
                      <th>PONO</th>
                      <th>Item Select</th>
                      <th>Remark</th>
                      
                   
                     
                   
                      
                       </tr>
                  
                  <tr runat="server" id="itemPlaceholder"></tr>  
                  </table>  
          </LayoutTemplate> 
           
          <ItemTemplate> 
              <tr>
              <td> 
                    <%# Eval("Brand") %>  
                 
              </td>  
              <td>  
                  <%# Eval("Agency") %>  
              </td>  
              <td>  
                  <%# Eval("Client") %>  
              </td>  
              <td>  
                  <%# Eval("CardRate")%>  

              </td>
                  <td>
               <%# Eval("SealingRate")%>  

              </td>
                  
                  
                   <td><%# Eval("StartDate") %>
                  </td>
                   <td>
                      <%# Eval("EndDate") %>
                  </td>
                   <td>
                      <%# Eval("BookingType") %>
                  </td>
                   <td>
                      <%# Eval("PONO") %>
                  </td>
                   <td>
                      <%# Eval("ItemSelect") %>
                      
                      
                  </td>
                   <td>
                      <%# Eval("Remark") %>
                  </td>
                      
                      
                 </tr>
                  </td>
                  </tr>
                 <%-- <td><asp:button ID="ok" text="ok" runat="server"  cssclass="btn btn-primary "  Onclick="ok_Click"/></td>--%>
                 <%-- <td><asp:Button ID="Update" Text="update" runat="server" cssclass="btn btn-primary" BackColor="red" CommandName="Delete"  CommandArgument='<%# Eval("id") %>'  /></td>--%>
                    </ItemTemplate>  
            </asp:ListView>
           
         </div>
       </form>
        
   
</body>
</html>
