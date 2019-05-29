<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kontakt.aspx.cs" Inherits="SBM.Kontakt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kontakta Oss</title>


     <style>

        .bg {
  /* The image used */
  background-image: url("carwash2.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}


        .cc{

            color:white;
        }
    </style>
    
		<meta name="description" content="UngDrive® är ett rikstäckande nätverk av framstående företagare som hjälper dig som är 15-18 år starta eget och tjäna egna pengar på sommarlovet. Vi ger dig en kick-ass företagsutbildning och är tillsammans inställda på ge allt för att inspirera och stötta dig att nå de mål du sätter upp. Exakt så som vi själva skulle velat haft det när vi startade företag.">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover" name="viewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta charset="utf-8">
		<link rel="apple-touch-icon" href="apple-touch-icon.png">
		<link rel="stylesheet" href="Main.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
 		<link rel="alternate" type="application/rss+xml" title="" href="/feed.xml">
		<link rel="alternate" type="application/atom+xml" title="" href="/atom.xml">
</head>
<body class='indexpage-template bg'>
    <form id="form1" runat="server">
        
               <div class="container fixed-top">
			<nav class="navbar" id="mainNav">
				<a  class="navbar-brand"   style="color:white !important; font-size:50px">SBM Biltvätt</a>
                <br />
                <br />
               
  				<ul class="navbar-nav mr-auto"></ul>
				<form class="form-inline">
					<a class="navApply hvr-sweep-to-left fat caps" href="Boka.aspx">Boka</a>
                   

                    <asp:Panel ID="Panel1" runat="server">
                         <a class="navApply hvr-sweep-to-left fat caps" href="Login.aspx">Logga In</a>
                    </asp:Panel>

                    <asp:Panel ID="Panel2" runat="server">

                        <asp:Label ID="wlc" runat="server" CssClass="cc" ></asp:Label>


                          <a class="navApply hvr-sweep-to-left fat caps"> <asp:Button ID="dash" runat="server"  CssClass="cc" Text="Dashboard"/></a>
                          

                        
                    </asp:Panel>
                    
					<a data-toggle="modal" data-target="#meny" href="#meny">
						<div id="navBurger">
							<span></span>
							<span></span>
							<span></span>
							<span></span>
						</div>
					</a>
				</form>
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
									<img src="logo.jpg"/>
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
								<a href="tel:0370-665010" class="btn btn-dark w-100"><small><i class="fa fa-phone" aria-hidden="true"></i> : 0707646205</small></a>
								<a href="https://www.facebook.com/SBM-Biltv%C3%A4tt-435316736878575/" target="_blank" class="btn btn-dark w-100 text-right"><small><i class="fa fa-commenting-o" aria-hidden="true"></i>  : FB-Chat</small></a>
							</div>
						</div>
						<div class="col d-lg-none">
							<div class="btn-group d-flex" role="group">
								<a href="mailto:sbm.skane@gmail.com" class="btn btn-dark w-100 text-left"><small><i class="fa fa-envelope" aria-hidden="true"></i></small></a>
								<a href="tel:0370-665010" class="btn btn-dark w-100"><small><i class="fa fa-phone" aria-hidden="true"></i></small></a>
								<a href="https://www.facebook.com/SBM-Biltv%C3%A4tt-435316736878575/" target="_blank" class="btn btn-dark w-100 text-right"><small><i class="fa fa-commenting-o" aria-hidden="true"></i></small></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> 
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <h1 class="text-danger text-center">Kontakta Oss:</h1>
  
                <div class="section2">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-10 offset-md-1 col-lg-8 offset-lg-2">
						<div id="info" class="infoContainer text-center">
							<div id="intro" class="carousel slide" data-wrap="false" data-interval="false">
								<div id="introInner" class="carousel-inner" role="listbox">
										<div class="carousel-item active">
											<div class="carouselContentWrapper">
												<img width="159" height="157" src="phone.png"/>
												<p>Då och då händer det.<br>
											Och du märker inte ens av det.<br>
											Antagligen för att Daft Punk stör i öronen,<br>
											eller för att en kompis visar ett kul<br>
											klipp med en blå enhörning.</p>

											<p>En möjlighet passerar obemärkt förbi.<br>
											Låt inte det här bli ett sånt tillfälle.</p>

											<p><span class="fat caps">Allt om UngDrive på 1 minut.</span><br>
											Swipa höger!</p>
										</div>
										</div>
    									</div>
									<div class="carousel-nav">
									<div class="d-flex justify-content-between align-items-stretch">
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
								<a href="tel:0370-665010" class="btn btn-dark w-100"><small><i class="fa fa-phone" aria-hidden="true"></i> : 0707646205</small></a>
								<a href="https://www.facebook.com/SBM-Biltv%C3%A4tt-435316736878575/" target="_blank" class="btn btn-dark w-100 text-right"><small><i class="fa fa-commenting-o" aria-hidden="true"></i>  : FB-Chat</small></a>
							</div>
						</div>
						<div class="col d-lg-none">
							<div class="btn-group d-flex" role="group">
								<a href="mailto:sbm.skane@gmail.com" class="btn btn-dark w-100 text-left"><small><i class="fa fa-envelope" aria-hidden="true"></i></small></a>
								<a href="tel:0370-665010" class="btn btn-dark w-100"><small><i class="fa fa-phone" aria-hidden="true"></i></small></a>
								<a href="https://www.facebook.com/SBM-Biltv%C3%A4tt-435316736878575/" target="_blank" class="btn btn-dark w-100 text-right"><small><i class="fa fa-commenting-o" aria-hidden="true"></i></small></a>
							</div>
						</div>
					</div>
				</div>
			</div>
                    </div>
                    </div>
				</div>
					</div>



            <footer class="footer">
			<div class="container">
				
				<div class="row">
					<div class="col text-center">
						<hr>
						<div class="partner">
							<p class="caps">Nationell huvudpartner</p>
							<a href="http://www.foretagarna.se/Natverk/Ung/" target="_blank">
								<img class="hvr-bounce-in img-fluid" src="ud-logo.svg" />
							</a>
						</div>
					</div>
				</div>
  			</div>
			<div class="container-fluid">
				<div class="row">
				<div class="col"></div>
					<div class="col-md-10 col-sm-12 text-center">
						<p class="legal">UngDrive<sup>®</sup> och YoungDrive<sup>®</sup> är registrerade varumärken tillhörande non-profitbolaget UngDrive AB (svb).
						<br>Visste du att vårt community även hjälpt snart <strong>17 000</strong> ungdomar i utvecklingsländer att starta företag? <a href="http://youngdrive.io/" data-toggle="tooltip" data-placement="top" title="YoungDrive ♥︎ Vårt eget initiativ för att uppnå de globala målen genom entreprenörskap i utvecklingsländer."><u>Läs mer</u></a>.</p>
					</div>
					<div class="col text-right d-none d-md-block nofilter2">
						<a data-toggle="tooltip" data-placement="left" title="With love and support from internet wizard Daniel Marklund at #nofilter."><i class="fa fa-hashtag"></i></a>
					</div>
					<div class="col text-center d-inline d-md-none nofilter">
						<a data-toggle="tooltip" data-placement="top" title="With love and support from internet wizard Daniel Marklund at #nofilter."><i class="fa fa-hashtag"></i></a>
					</div>
				</div>
			</div>
		</footer>


    </form>


       <!-- GENERAL SCRIPTS-->
		<script src="Jquery214.js"></script>
		<script src="Functions.js" type="text/javascript"></script>
		<script src="Proper.js"></script>
		<script src="Bootstrap.js"></script>
		<script src="Jqueryvide.js"></script>
		<script src="Hamburger.js"></script>
		<script src="Custommodel.js"></script>
		<script src="instagramfeed.js"></script>
	 
		<!-- INDEX PAGE SCRIPTS-->
		<script src="funcindex.js"></script>
		<script src="carousel.js"></script>
		<script src="medlight.js"></script>
		<script src="mixitup.js"></script>
		<script src="mixtuppeng.js"></script>
 		<script src="vimpsedon.js"></script>
</body>
</html>
