<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_page.aspx.cs" Inherits="HomeOrganization.super_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>super page</title>
    <link href="main.css" rel="stylesheet" />

                <!-- Jquery is requierd-->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>        

            <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/>

            <!-- Optional theme -->
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css"/>

            <!-- Latest compiled and minified JavaScript -->
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="mycontainer">
            <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
                <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
                       
                     <div class="navbar-header">
                           <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                          <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                           </button>
                             <a class="navbar-brand" href="#"><asp:Button ID="HomeLogoButton" runat="server" Text="Organizion-Home" BackColor="#990099" BorderColor="Black" BorderStyle="Dotted" CssClass="carousel" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" OnClick="HomeLogoButton_Click" /></a>
                         <a class="navbar-brand" href="#"><asp:Label ID="logInUserLabel" runat="server" Text="ברוך הבא : אורח"></asp:Label></a>
                           <%--<asp:Label ID="LogInLabel" runat="server" Text="Home-Organization"></asp:Label>--%>
                         <%--<a class="navbar-brand" href="#"><asp:Label ID="navBarLogoLabel" runat="server" Text="Home-Organization"></asp:Label></a>--%>
                         
                         
                          </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse ">
                   <ul class="nav navbar-nav navbar-right  "  id="menu_items">
                <li class="active navbar-right"><a href="#">דף הבית</a></li>
                 <li class="navbar-right"><a href="#">אודות</a></li>
                  <li class="navbar-right"> <a href="#">מוצרים</a></li>
                  <li class="navbar-right"><a href="#">צרו קשר</a></li>
                 <li  class="navbar-right">
                 
                   <a href="#" class="dropdown-toggle " data-toggle="dropdown">עזרה <b class="caret"></b></a>
                      <ul class="dropdown-menu ">
                             <li ><a href="#">בלוג</a></li>
                             <li ><a href="#">פורום</a></li>
                             <li ><a href="#">שאלות ותשובות</a></li>
                             <li ><a href="#">גירסה 1.0.1</a></li>
                     </ul>
                     
                 </li>
               </ul>
                   <%-- <asp:Button class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs " ID="RegisterButton" runat="server" Text="הרשמה   " />
               <%-- &nspb--%><%--                <asp:Button class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs " ID="LogInButton" runat="server" Text="התחברות" />--%><%--     <button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs "  >הרשמה</button>
             <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"  >התחברות</button>--%>
             </div><!-- /.navbar-collapse -->
             
           </nav> <!-- End of Nav Bar    ------------------------>
            </nav>
        <br /><br /> <br />
        <section id="products">
            <!-- new row - row1 -->
             <div class="row1" >
            <div class="col-sm-12" id="superHeadLine">
               
                      <h1>כותרת העמוד</h1> 
                  </div>
            </div>
            <%--<div class="row1" >
            <div class="col-sm-12" id="space">
            </div>
            </div>--%>
            <br />
            <!-- new row - row2 -->
            <div class="row" id="row2">
                <div class="col-sm-4" id="col3">

                </div>
                <div class="col-sm-4" id="col4">
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Height="23px" Width="167px" Text="חפש או כתוב מוצר להוספה" BackColor="#FFFF99" BorderStyle="Dotted" AutoCompleteType="Enabled" ForeColor="Maroon" ToolTip="חפש או כתוב מוצר להוספה"></asp:TextBox>
                    <asp:DropDownList ID="QuntityDropDownList" runat="server" BackColor="#FFFF99" Height="50px" Width="60px">
                        <asp:ListItem Value="headLine">כמות</asp:ListItem>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>1 KG</asp:ListItem>
                        <asp:ListItem>2 KG</asp:ListItem>
                        <asp:ListItem>3 KG</asp:ListItem>
                        <asp:ListItem>4 KG</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="UrgencyDropDownList" runat="server" Height="50px" ToolTip="בחר את רמת הדחיפות לקנייה" Width="60px" OnSelectedIndexChanged="UrgencyDropDownList_SelectedIndexChanged">
                        <asp:ListItem>דחיפות</asp:ListItem>
                        <asp:ListItem Value="1">רגילה</asp:ListItem>
                        <asp:ListItem Value="2">מידי</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="AddProductButton" runat="server" Text="הוסף מוצר" Height="27px" Width="74px" BorderColor="#FFCCCC" BorderStyle="Solid" Font-Bold="True" Font-Size="Small" OnClick="AddProductButton_Click" ViewStateMode="Enabled" />
                </div>
            
            </div>

        <!-- new row - row3 -->

        <div class="row" id="row3">
                <div class="col-sm-4" id="col3">
                    
                </div>
                <div class="col-sm-4" id="col4">
                    <asp:CheckBoxList ID="ShoppingListCheckBoxList" runat="server" BorderColor="#3333FF" BorderStyle="Dashed" ToolTip="סמן לביטול קנייה או אם קנית כבר" Width="280px" Font-Size="X-Large" ForeColor="#003300" OnSelectedIndexChanged="ShoppingListCheckBoxList_SelectedIndexChanged" AutoPostBack="True" BackColor="#FFFFCC" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" CellPadding="1" CellSpacing="1">
                    </asp:CheckBoxList>
                    <%-- <asp:ListBox ID="ListBox1" runat="server">
                    <asp:ListItem>item1</asp:ListItem>
                    <asp:ListItem>item2</asp:ListItem>
                     <asp:ListItem>item3</asp:ListItem>
                     <asp:ListItem>item4</asp:ListItem>
                    </asp:ListBox>--%>
                </div>
            
            </div>
           
            
          
            
        
              
   
           

      
            
         
        
           
          
                 
       </section>  
        </div>
    </form>
</body>
</html>
