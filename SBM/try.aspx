<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="try.aspx.cs" Inherits="SBM._try" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="ad5ra.css" />

    <link rel="stylesheet" href="Main.css">

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
       <link rel="alternate" type="application/rss+xml" title="" href="/feed.xml">

       <link rel="alternate" type="application/atom+xml" title="" href="/atom.xml">

    <link rel="stylesheet" href="sweetalert2.css" />
    <script src="sweetalert2.all.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
      <asp:HiddenField ID="hfId" runat="server" />

         <div class="container fixed-top">
            <nav class="navbar" id="mainNav">
                <a class="navbar-brand" style="color: white !important; font-size: 50px">SBM Biltvätt</a>
                <ul class="navbar-nav mr-auto"></ul>
                  
                
                      <a data-toggle="modal" data-target="#meny" href="#meny">
                        <div id="navBurger">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </a>
                   
             </nav>
        </div>

                <div class="modal fade fullscreen" id="meny" role="dialog" aria-labelledby="meny" aria-hidden="true" data-kind="meny">
            <div class="modal-dialog" role="document"></div>
            <div class="modal__header"></div>
            <div class="modal__content">
                <div class="vertical-center">
                    <div class="container">
                        <div class="row">
                            <div class="col text-right d-none d-lg-block">
                                <div class="dream hvr-bob">
                                    <img src="logo.jpg" />
                                </div>
                            </div>
                            <div class="col">
                                <ul>
                                    <li class="hvr-buzz caps fat hvr-sweep-to-right"><a href="index.aspx">SBM-Biltvätt</a></li>
                                    <li class="hvr-buzz caps fat hvr-sweep-to-right"><a href="Galleri.aspx">Galleri</a></li>
                                    <li class="hvr-buzz caps fat hvr-sweep-to-right"><a href="Kontakt.aspx">Kontakt</a></li>
                                    <li class="hvr-buzz caps smallNav hvr-sweep-to-right"><a href="/kontakt/">Framtid</a></li>
                                    <li class="hvr-buzz caps smallNav hvr-sweep-to-right"><a href="/kontakt/">FAQ</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal__footer">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col d-none d-lg-block">
                            <div class="btn-group d-flex" role="group">
                                <a href="mailto:sbm.skane@gmail.com" class="btn btn-dark w-100 text-left"><small><i class="fa fa-envelope" aria-hidden="true"></i>: sbm.skane@gmail.com  </small></a>
                                <a href="tel:0370-665010" class="btn btn-dark w-100"><small><i class="fa fa-phone" aria-hidden="true"></i>: 0707646205</small></a>
                                <a href="https://www.facebook.com/SBM-Biltv%C3%A4tt-435316736878575/" target="_blank" class="btn btn-dark w-100 text-right"><small><i class="fa fa-commenting-o" aria-hidden="true"></i>: FB-Chat</small></a>
                            </div>
                        </div>
                        <div class="col d-lg-none">
                            <div class="btn-group d-flex" role="group">
                                <a href="mailto:sbm.skane@gmail.com" class="btn btn-dark w-100 text-left"><small><i class="fa fa-envelope" aria-hidden="true"></i></small></a>
                                <a href="tel:0370-665010" class="btn btn-dark w-100"><small><i class="fa fa-phone" aria-hidden="true"></i></small></a>
                                <a href="http://m.me/ungdrive" target="_blank" class="btn btn-dark w-100 text-right"><small><i class="fa fa-commenting-o" aria-hidden="true"></i></small></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <br />
        <br />


           <div class="col-md-6 offset-md-3 intro text-center">
         
                        <!-----Main-Code Here-->


    
          <div class="upload">
			 
		<div class="login-form">
 				<div>
					<span>Förnamn:</span>
						 
                     <input type="text" id="fname2" class="title" runat="server" />
				</div>
				<div   id="h1">
					<span>Efternamn:</span>
 					 <input type="text" id="field_lastname2" class="describe" runat="server" />	
                      
				</div>
            <div  id="h2">
					<span>Bil Regnr:</span>
 				 <input type="text" id="Bilregnr2" class="describe" runat="server" />		
 				</div>
             <br />
             <div id="h3">
					<span>Personnummer:</span>
 				  <input type="number" id="field_personnummer2" class="describe" runat="server" />		
 				</div>
             <br />
            <div id="h4">
                <span>E-post:</span>
     <input type="email" id="field_epostadress2" class="describe" runat="server" />
              </div>

            <div id="h5">
                <span>Mobil tel:</span>
      <input type="number" id="field_mobilephone2" class="describe" runat="server" />
              </div>
               <div id="h6">
                <span>Gatanamn:</span>
      <input type="text" id="gata_adress2" class="describe" runat="server" />
              </div>
                 <div id="h7">
                <span>Postnummer:</span>
     <input type="number" id="field_postnummer2" class="describe" runat="server" />
              </div>
                <div id="h8">
                <span>Postort:</span>
      <input type="text" id="field_postort2" class="describe" runat="server" />
              </div>
            <div id="h9">
                <span>Tid:</span>
        <input type="time" id="fieldtime2" class="describe" runat="server" />
              </div>
            <div id="h10">
                <span>Datum:</span>
        <input type="date" id="fielddate2" class="describe" runat="server" />
              </div>

             
             <table>

                 <tr>
                     <td>
                            <input  style="margin-bottom:30px" type="checkbox"  runat="server" id="policy" value="1" />  
                     </td>
                      <td>
                          <p style="font-size:22px">Jag accepterar sidans policy,</p>

                     </td>
                     <td><a style="margin-bottom:20px" class="btn sss" href="Policy.aspx">Läs mer.</a></td>
                 </tr>
             </table>
                 </center>

             
 				 
        <div id="_btn">
            <asp:Button CausesValidation="false"  ID="Done" runat="server" OnClick="Done_Click" CssClass="test" Text="Boka!" />
            
         </div>
                     <br /> 
      <asp:Label ID="lblMessage" runat="server" CssClass="test"></asp:Label>
      <asp:Label ID="errorlabel" runat="server" CssClass="test"></asp:Label>
  </div>
  		</div>
              
            </center>



            </div>

    </form>
</body>
    <script src="Jquery214.js"></script>
    <script src="Functions.js" type="text/javascript"></script>
    <script src="Proper.js"></script>
    <script src="Bootstrap.js"></script>
    <script src="Jqueryvide.js"></script>
     <script src="Hamburger.js"></script>
    <script src="Custommodel.js"></script>
    <script src="instagramfeed.js"></script>
    <script src="mixitup.js"></script>
    <script src="funcindex.js"></script>
    <script src="carousel.js"></script>
    <script src="medlight.js"></script>
    <script src="mixtuppeng.js"></script>
    <script src="vimpsedon.js"></script>
</html>
