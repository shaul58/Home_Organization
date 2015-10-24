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
         <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <script>
      $(function () {
          $("#datepicker").datepicker({  showButtonPanel: true });
      });
  </script>

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
            
        <div class="row" id="row3" >

            <div class="col-sm-4" id="col3" >...
                </div>
            <div class="col-sm-4" id="col3" >---
                </div>
            
                <div class="col-sm-4" id="col3" >
                    
                   
                    <asp:Button ID="ShowAutoPanelButton" runat="server" BackColor="#FFFF99" BorderStyle="Ridge" Height="80px" OnClick="ShowAutoPanelButton_Click" Text="הוספה אוטומטית" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ShowMenualPanelButton" runat="server" BackColor="#FFFF99" BorderStyle="Ridge" Height="80px" OnClick="ShowMenualPanelButton_Click" Text="הוספה ידנית" Width="100px" />
&nbsp;&nbsp;&nbsp;      
                    <asp:Button ID="ShowFoodPanelButton" runat="server" BackColor="#FFCC00" BorderStyle="Ridge" Height="80px" OnClick="ShowFoodPanelButton_Click" Text="הוספת ארוחה" Width="100px" />

                    
                   
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
                &nbsp;&nbsp;<asp:DropDownList ID="EscapeDropDownList" runat="server" Width="100px">
                    <asp:ListItem Value="escape">ברח</asp:ListItem>
                    <asp:ListItem Value="noEscape" Selected="True">לא ברח</asp:ListItem>
                    <asp:ListItem Value="littelEscape">ברח קצת</asp:ListItem>
                    <asp:ListItem Value="bigEscape">ברח הרבה</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;<asp:Button ID="AddAUtoPanelButton" runat="server" CssClass="btn-danger disabled" Height="40px" Text="Update" Width="110px" OnClick="AddAUtoButtonPanel_Click" />
                &nbsp;</asp:Panel>
        </div>
        <div class="row">
            <asp:Panel ID="MenualPanel" runat="server" BackColor="#FF6600" Height="100px" Width="1000px" BorderStyle="Outset" Direction="RightToLeft" Visible="False">
                <asp:TextBox ID="datepicker" runat="server"></asp:TextBox>
                &nbsp;
                <asp:DropDownList ID="DAYDropDownList" runat="server" CssClass="active">
                    <asp:ListItem Value="SUNDAY">ראשון</asp:ListItem>
                    <asp:ListItem Value="MONDAY">שני</asp:ListItem>
                    <asp:ListItem Value="Tuesday">שלישי</asp:ListItem>
                    <asp:ListItem Value="Wednesday">רביעי</asp:ListItem>
                    <asp:ListItem Value="Thursday">חמישי</asp:ListItem>
                    <asp:ListItem Value="Friday ">שישי</asp:ListItem>
                    <asp:ListItem Value="Saturday">שבת</asp:ListItem>
                    <asp:ListItem Selected="True">יום</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
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
                    <asp:ListItem Selected="True">דקה</asp:ListItem>
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
                    <asp:ListItem Selected="True">שעה</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;<asp:DropDownList ID="KindOfOut_DropDownList2" runat="server" Width="140px">
                    <asp:ListItem Selected="True" Value="normal">רגיל</asp:ListItem>
                    <asp:ListItem Value="shilahol">שלשול</asp:ListItem>
                    <asp:ListItem Value="hardShilshol">שלשול חריף</asp:ListItem>
                    <asp:ListItem Value="נוזלי">Liquid</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:DropDownList ID="EscapeDropDownList0" runat="server" Width="100px">
                    <asp:ListItem Value="escape">ברח</asp:ListItem>
                    <asp:ListItem Value="noEscape" Selected="True">לא ברח</asp:ListItem>
                    <asp:ListItem Value="littelEscape">ברח קצת</asp:ListItem>
                    <asp:ListItem Value="bigEscape">ברח הרבה</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="AddMenualPanelButton" runat="server" Text="Update" Width="100px" CssClass="btn-danger disabled" Height="40px" BorderStyle="Solid" OnClick="AddMenualPanelButton_Click" />
            </asp:Panel>
        </div>

        <div class="row">
            <asp:Panel ID="FoodPanel" runat="server" Height="100px" Width="1000px" BorderStyle="Outset" Direction="RightToLeft" BackColor="#FFCC99" BorderColor="#FFCC99" Visible="False">
                <asp:TextBox ID="BreakfastTextBox" runat="server" ForeColor="Black" Height="49px" TextMode="MultiLine" ToolTip="ארוחת בוקר שלי" Width="176px">ארוחת בוקר </asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="LunchTextBox" runat="server" ForeColor="#CC0000" Height="49px" TextMode="MultiLine" ToolTip="ארוחת צהריים שלי" Width="257px">ארוחת צהריים</asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="DinnerTextBox" runat="server" ForeColor="#006600" Height="49px" TextMode="MultiLine" Width="182px">ארוחת ערב</asp:TextBox>
                &nbsp;
                <asp:Button ID="UpdateFoodPanelButton" runat="server" BorderStyle="Outset" CssClass="btn-danger disabled" Height="40px" Text="עדכן ארוחה" Width="100px" OnClick="UpdateFoodPanelButton_Click" />
            </asp:Panel>
        </div>
              
              
       </section>  
        </div>
    </form>
</body>
</html>

