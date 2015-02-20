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
    <script src="carouselSlide.js"></script>
     <%--<script>
             
               $(document).ready(function() {
                 $('.carousel').carousel({
                   interval: 3500
               })
           });
           </script>--%>
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
                         <%--<asp:Label ID="LogInLabel" runat="server" Text="Home-Organization"></asp:Label>--%>
                         <a class="navbar-brand" href="#"><asp:Label ID="navBarLogoLabel" runat="server" Text="Home-Organization"></asp:Label></a>
                         <a class="navbar-brand" href="#"><asp:Label ID="Label1" runat="server" Text="ברוך הבא : אורח"></asp:Label></a>
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
                <asp:Button class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs " ID="RegisterButton" runat="server" Text="הרשמה   " />
               <%-- &nspb--%>
                <asp:Button class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs " ID="LogInButton" runat="server" Text="התחברות" />
               <%--     <button type="button" class="btn btn-default navbar-btn  btn-inverse  navbar-left  btn-xs "  >הרשמה</button>
             <button type="button" class="btn btn-default navbar-btn  navbar-left btn-xs btn-primary"  >התחברות</button>--%>
             </div><!-- /.navbar-collapse -->
             
           </nav> <!-- End of Nav Bar    ------------------------>
            </nav>
         <!-- My Carousel     -->   
            <div id="carousel-example" class="carousel slide">
               
                   <!-- Indicators -->
                 <ol class="carousel-indicators">
                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                   <li data-target="#carousel-example" data-slide-to="1"></li>
                   <li data-target="#carousel-example" data-slide-to="2"></li>
                 </ol>
                 
                   
                  <!-- Wrapper for slides -->
                <div class="carousel-inner" >
                  
                           <div class="item active">
                                     <img id="imgSlide" src="gallery/img1.jpg" alt="IMG1" />
                                    <div class="carousel-caption" >  סלייד ראשון .   <button  type="button" class="btn btn-primary  btn-sm ">לפרטים</button>  </div>
                                  
                          </div>
                          
                          <div class="item ">
                                   <img src="gallery/img2.jpg" alt="IMG2" />
                                    <div class="carousel-caption">  סלייד שני .   </div>
                          </div>
                  
                          <div class="item ">
                                   <img src="gallery/img3.jpg" alt="IMG3" />
                                 <div class="carousel-caption">  סלייד שלישי ואחרון .   </div>
                         </div>
            
                 </div>
                  
               
           </div><!-- End of My Carousel     -->
           <!-- My  Products     -->  
             <section id="products" class="row">
           
                <div class="col-sm-4" id="img1">
                      <h4>קניות בסופר</h4>
                    <asp:ImageButton ID="superImageButton" runat="server" ToolTip="לחץ לעמוד הקניות-" ImageUrl="~/gallery/products/ShoppingList.JPG" Height="150px" Width="200px" ImageAlign="Middle" OnClick="superImageButton_Click" />
                      <%--<img src="gallery/thmb1.jpg" alt="..." >--%>
                      <p></p>
                       <br>
                     
                  </div>
                      <div class="col-sm-3" id="img2" >
                      <h4>מטלות הבית</h4>
                      <asp:ImageButton ID="ImageButton" runat="server" ToolTip="לחץ לעמוד מטלות הבית" ImageUrl="~/gallery/products/HomeTasks_1.jpg" Height="150px" Width="200px" />
                      <p></p>
                       <br>
                     
                  </div>

                 <div class="col-sm-3" id="img3" >
                      <h4>הודעות ועדכונים</h4>
                      <asp:ImageButton ID="messagesImageButton" runat="server" ToolTip="לחץ לעמוד הודעות ועדכונים" ImageUrl="~/gallery/products/MessagesAndUpdates_1.jpg" Height="150px" Width="200px" OnClick="messagesImageButton_Click" />
                      <p></p>
                       <br>
                     <button  type="button" ></button>
                  </div>

                 <div class="row">
                     <div class="col-sm-4" id="img4">
                      <h4></h4>
                    <asp:ImageButton ID="ImageButton4" runat="server" ToolTip="img4" ImageUrl="~/gallery/products/איקון.jpg" Height="150px" Width="200px" ImageAlign="Middle" />
                      <%--<img src="gallery/thmb1.jpg" alt="..." >--%>
                      <p></p>
                       <br>
                    
                  </div>
                      <div class="col-sm-3" id="img5" >
                      <h4></h4>
                      <asp:ImageButton ID="ImageButton5" runat="server" ToolTip="img5" ImageUrl="~/gallery/products/איקון.jpg" Height="150px" Width="200px" />
                      <p></p>
                       <br>
                    
                  </div>

                 <div class="col-sm-3" id="img6" >
                      <h4></h4>
                      <asp:ImageButton ID="ImageButton6" runat="server" ToolTip="img6" ImageUrl="~/gallery/products/איקון.jpg" Height="150px" Width="200px" />
                      <p></p>
                       <br />
                    
                  </div>

              </div>
                  
          </section><!--End of My  Products     -->



    </div>
         
    </form>
</body>
</html>
