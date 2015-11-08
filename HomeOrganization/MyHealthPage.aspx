﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyHealthPage.aspx.cs" Inherits="HomeOrganization.MyHealthPage" %>

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
          $("#datepicker_AutoOUt").datepicker({ showButtonPanel: true, dateFormat: 'dd-mm-yy' }); //{ dateFormat: 'dd-mm-yy' }
      });
  </script>
    <script src="DatePicker_Jquery.js"></script>
    <script>
        $(function () {
            $("#datepicker_B").datepicker({ showButtonPanel: true, dateFormat: 'dd-mm-yy' }); //{ dateFormat: 'dd-mm-yy' }
        });
  </script>
    <script>
        $(function () {
            $("#datepicker_L").datepicker({ showButtonPanel: true, dateFormat: 'dd-mm-yy' }); //{ dateFormat: 'dd-mm-yy' }
        });
  </script>
    <script>
        $(function () {
            $("#datepicker_D").datepicker({ showButtonPanel: true, dateFormat: 'dd-mm-yy' }); //{ dateFormat: 'dd-mm-yy' }
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

                    &nbsp;&nbsp;

                </div>
            
            </div>
            <div class="row">
            <asp:Panel ID="AutoPanel" runat="server" BackColor="#FF6699" Height="100px" Width="1000px" BorderStyle="Outset" Direction="RightToLeft" BorderColor="#FF66CC" Visible="False">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="KindOfOut_DropDownList" runat="server" Width="140px">
                    <asp:ListItem Selected="True" Value="רגיל">רגיל</asp:ListItem>
                    <asp:ListItem Value="שלשול">שלשול</asp:ListItem>
                    <asp:ListItem Value="שלשול חריף">שלשול חריף</asp:ListItem>
                    <asp:ListItem Value="נוזלי">נוזלי</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;<asp:DropDownList ID="EscapeDropDownList" runat="server" Width="100px">
                    <asp:ListItem Value="ברח">ברח</asp:ListItem>
                    <asp:ListItem Value="לא ברח" Selected="True">לא ברח</asp:ListItem>
                    <asp:ListItem Value="ברח קצת">ברח קצת</asp:ListItem>
                    <asp:ListItem Value="ברח הרבה">ברח הרבה</asp:ListItem>
                </asp:DropDownList>
                &nbsp;
                <asp:TextBox ID="OutCommentsTextBox1" runat="server" BorderStyle="Dotted" ForeColor="#CC0000" TextMode="MultiLine" ToolTip="הכנס הערות"></asp:TextBox>
                &nbsp; &nbsp;<asp:Button ID="AddAUtoPanelButton" runat="server" CssClass="btn-danger disabled" Height="40px" Text="Update" Width="110px" OnClick="AddAUtoButtonPanel_Click" />
                &nbsp;&nbsp;&nbsp; &nbsp;</asp:Panel>
        </div>
        <div class="row">
            <asp:Panel ID="MenualPanel" runat="server" BackColor="#FF6600" Height="100px" Width="1000px" BorderStyle="Outset" Direction="RightToLeft" Visible="False">
                <asp:TextBox ID="datepicker_AutoOUt" runat="server" BorderStyle="Ridge" ForeColor="Maroon" ToolTip="בחר תאריך ">
בחר תאריך</asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DAYDropDownList" runat="server" CssClass="active">
                    <asp:ListItem Value="ראשון">ראשון</asp:ListItem>
                    <asp:ListItem Value="שני">שני</asp:ListItem>
                    <asp:ListItem Value="שלישי">שלישי</asp:ListItem>
                    <asp:ListItem Value="רביע">רביעי</asp:ListItem>
                    <asp:ListItem Value="חמישי">חמישי</asp:ListItem>
                    <asp:ListItem Value="שישי">שישי</asp:ListItem>
                    <asp:ListItem Value="שבת">שבת</asp:ListItem>
                    <asp:ListItem Selected="True" Value="day">יום</asp:ListItem>
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
                    <asp:ListItem Selected="True" Value="רגיל">רגיל</asp:ListItem>
                    <asp:ListItem Value="שלשול">שלשול</asp:ListItem>
                    <asp:ListItem Value="שלשול חריף">שלשול חריף</asp:ListItem>
                    <asp:ListItem Value="נוזלי">נוזלי</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:DropDownList ID="EscapeDropDownList0" runat="server" Width="100px">
                    <asp:ListItem Value="ברח">ברח</asp:ListItem>
                    <asp:ListItem Value="לא ברח" Selected="True">לא ברח</asp:ListItem>
                    <asp:ListItem Value="ברח קצת">ברח קצת</asp:ListItem>
                    <asp:ListItem Value="ברח הרבה">ברח הרבה</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="OutCommentsTextBox2" runat="server" BorderStyle="Dotted" ForeColor="Red" TextMode="MultiLine">הכנס הערות</asp:TextBox>
                &nbsp;
                <asp:Button ID="AddMenualPanelButton" runat="server" Text="Update" Width="107px" CssClass="btn-danger disabled" Height="40px" BorderStyle="Solid" OnClick="AddMenualPanelButton_Click" />
            </asp:Panel>
        </div>

        <div class="row">
            <asp:Panel ID="FoodPanel" runat="server" Height="350px" Width="1000px" BorderStyle="Outset" Direction="RightToLeft" BackColor="#FFCC99" BorderColor="#FFCC99" Visible="False">
                <asp:TextBox ID="BreakfastTextBox" runat="server" ForeColor="Black" Height="76px" TextMode="MultiLine" ToolTip="ארוחת בוקר שלי" Width="269px">ארוחת בוקר </asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="UpdateBreakfastButton" runat="server" BorderStyle="Outset" Height="40px" OnClick="UpdateBreakfastButton_Click" Width="100px">הוסף ארוחת בוקר</asp:LinkButton>
                &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="datepicker_B" runat="server" BorderStyle="Ridge" ForeColor="Maroon" Height="29px" ToolTip="בחר תאריך " Width="104px">DATE</asp:TextBox>
                &nbsp;<br />&nbsp;
                <br />
                &nbsp;&nbsp;<asp:TextBox ID="LunchTextBox" runat="server" ForeColor="#CC0000" Height="76px" TextMode="MultiLine" ToolTip="ארוחת צהריים שלי" Width="270px">ארוחת צהריים</asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:LinkButton ID="UpdateLunchLinkButton" runat="server" BorderStyle="Outset" ForeColor="#990000" Height="40px" OnClick="UpdateLunchLinkButton_Click" ToolTip="עדכן ארוחת צהריים" Width="100px">עדכן ארוחת צהריים</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="datepicker_L" runat="server" BorderStyle="Ridge" ForeColor="Maroon" Height="29px" ToolTip="בחר תאריך " Width="104px">DATE</asp:TextBox>
                <br />
                <br />
&nbsp;<asp:TextBox ID="DinnerTextBox" runat="server" ForeColor="#006600" Height="76px" TextMode="MultiLine" Width="270px">ארוחת ערב</asp:TextBox>
                &nbsp;&nbsp;<asp:TextBox ID="CommentsTextBox" runat="server" ForeColor="Red" Height="75px" TextMode="MultiLine" ToolTip="תוספות והערות" Width="150px">תוספות,נישנושים והערות</asp:TextBox>
&nbsp;
                <asp:LinkButton ID="UpdateDinnerLinkButton" runat="server" BorderStyle="Outset" ForeColor="#FF9900" Height="40px" OnClick="UpdateDinnerLinkButton_Click" ToolTip="עדכן ארוחת ערב" Width="100px">עדכן ארוחת ערב</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="datepicker_D" runat="server" BorderStyle="Ridge" ForeColor="Maroon" Height="29px" ToolTip="בחר תאריך " Width="104px">DATE</asp:TextBox>
            </asp:Panel>
        </div>
              
              
       </section>  
        </div>
    </form>
</body>
</html>

