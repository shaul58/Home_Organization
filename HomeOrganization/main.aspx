<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="HomeOrganization.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
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
                         <a class="navbar-brand" href="#">Home-Organization</a>
                          </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse ">
                   <ul class="nav navbar-nav navbar-right  "  id="menu_items">
                <li class="active navbar-right"><a href="#">דף הבית</a></li>
                 <li class="navbar-right"><a href="#">מי אנחנו</a></li>
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
                <asp:Button class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs " ID="RegisterButton" runat="server" Text="הרשמה   " />
               <%-- &nspb--%>
                <asp:Button class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs " ID="LogInButton" runat="server" Text="התחברות" />
               <%--     <button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs "  >הרשמה</button>
             <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"  >התחברות</button>--%>
             </div><!-- /.navbar-collapse -->
             
           </nav> <!-- End of Nav Bar    ------------------------>

                      
                  
            </nav>
    </div>
         
    </form>
</body>
</html>
