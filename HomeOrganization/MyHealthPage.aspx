<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyHealthPage.aspx.cs" Inherits="HomeOrganization.MyHealthPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Health page</title>
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
<body dir="rtl">
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
                           <%--<asp:Label ID="LogInLabel" runat="server" Text="Home-Organization"></asp:Label>--%><%--<a class="navbar-brand" href="#"><asp:Label ID="navBarLogoLabel" runat="server" Text="Home-Organization"></asp:Label></a>--%>
                         
                         
                          </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse ">
                   <ul class="nav navbar-nav navbar-right  "  id="menu_items">
                <li class="active navbar-right"><a href="#">דף הבית</a></li>
                 <li class="navbar-right"><a href="#">אודות</a></li>
                  <li class="navbar-right"> <a href="#">מוצרים</a></li>
                  <li class="navbar-right"><a href="#">צרו קשר</a></li>
                 <li  class="navbar-right">
                 
                  
             </div><!-- /.navbar-collapse -->
             
           </nav> <!-- End of Nav Bar    ------------------------>
            </nav>
        <br /><br /> <br />
        <section id="products">
            <!-- new row - row1 -->
             <div class="row1" >
            <div class="col-sm-12" id="superHeadLine">
               
                      <h1 align="center">דף היציאות היומיות שלי</h1> 
                  </div>
            </div>
            <div class="row">
                
                <div class="col-lg-12">
                    ..
                    <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br /> 
                    <br />
                    <br />
                </div>
            </div>
           
        <!-- new row - row3 -->
            
        <div class="row" id="row3" dir="rtl">
            
                <div class="col-sm-4" id="col3" dir="rtl">
                    
                   
                    <asp:Button ID="AddAutoButton" runat="server" BackColor="#FFFF99" BorderStyle="Ridge" Height="80px" OnClick="AddAutoButton_Click" Text="הוספה אוטומטית" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="AddMenualButton" runat="server" BackColor="#FFFF99" BorderStyle="Ridge" Height="80px" OnClick="AddMenualButton_Click" Text="הוספה ידנית" Width="100px" />
&nbsp;
                    
                   
                </div>
                <div class="col-sm-4" id="col4" dir="rtl">

                </div>
            
            </div>
            <div class="row">
            <asp:Panel ID="AutoPanel" runat="server" BackColor="#FF6699" Height="100px" Width="1000px" BorderStyle="Outset" Direction="RightToLeft" BorderColor="#FF66CC" Visible="False">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="KindOfOut_DropDownList" runat="server" Width="140px">
                    <asp:ListItem Selected="True" Value="normal">רגיל</asp:ListItem>
                    <asp:ListItem Value="shilahol">שלשול</asp:ListItem>
                    <asp:ListItem Value="hardShilshol">שלשול חריף</asp:ListItem>
                    <asp:ListItem Value="נוזלי">Liquid</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="AddAUtoButtonPanel" runat="server" Text="ADD" Width="110px" />
                &nbsp;</asp:Panel>
        </div>
        <div class="row">
            <asp:Panel ID="MenualPanel" runat="server" BackColor="#FF6600" Height="100px" Width="1000px" BorderStyle="Outset" Direction="RightToLeft" Visible="False">
                <asp:TextBox ID="DateTextBox" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:DropDownList ID="TimeMinute_DropDownList2" runat="server" Width="50px">
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>35</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>55</asp:ListItem>
                    <asp:ListItem Selected="True">null</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:DropDownList ID="TimeHour_DropDownList" runat="server" Width="50px">
                    <asp:ListItem>01</asp:ListItem>
                    <asp:ListItem>02</asp:ListItem>
                    <asp:ListItem>03</asp:ListItem>
                    <asp:ListItem>04</asp:ListItem>
                    <asp:ListItem>05</asp:ListItem>
                    <asp:ListItem>06</asp:ListItem>
                    <asp:ListItem>07</asp:ListItem>
                    <asp:ListItem>08</asp:ListItem>
                    <asp:ListItem>09</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>00</asp:ListItem>
                    <asp:ListItem Selected="True">null</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="KindOfOut_DropDownList2" runat="server" Width="140px">
                    <asp:ListItem Selected="True" Value="normal">רגיל</asp:ListItem>
                    <asp:ListItem Value="shilahol">שלשול</asp:ListItem>
                    <asp:ListItem Value="hardShilshol">שלשול חריף</asp:ListItem>
                    <asp:ListItem Value="נוזלי">Liquid</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:Button ID="AddMenualButtonPanel" runat="server" Text="ADD" Width="100px" />
            </asp:Panel>
        </div>
              
              
       </section>  
        </div>
    </form>
</body>
</html>

