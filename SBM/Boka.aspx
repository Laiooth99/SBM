<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Boka.aspx.cs" Inherits="SBM.Boka" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bokning</title>


    <meta name="description" content="UngDrive® är ett rikstäckande nätverk av framstående företagare som hjälper dig som är 15-18 år starta eget och tjäna egna pengar på sommarlovet. Vi ger dig en kick-ass företagsutbildning och är tillsammans inställda på ge allt för att inspirera och stötta dig att nå de mål du sätter upp. Exakt så som vi själva skulle velat haft det när vi startade företag.">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover" name="viewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta charset="utf-8">
		<link rel="apple-touch-icon" href="apple-touch-icon.png">
		<link rel="stylesheet" href="Main.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="canonical" href="https://ungdrive.se/">
		<link rel="alternate" type="application/rss+xml" title="" href="/feed.xml">
		<link rel="alternate" type="application/atom+xml" title="" href="/atom.xml">
		 
 
	 
		 
	
		 
	 
</head>
 <body class='page-template-dark'>
    <form id="form1" runat="server">
       <div class="container fixed-top">
			<nav class="navbar" id="mainNav">
					<a class="navbar-brand"   style="color:white !important; font-size:50px">SBM Biltvätt</a>
				<ul class="navbar-nav mr-auto"></ul>
				<form class="form-inline">
					
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
			<div class="modal-dialog" role="document">></div>
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
									<li class="hvr-buzz caps fat hvr-sweep-to-right"><a href="/kommuner/">Galleri</a></li>
									<li class="hvr-buzz caps fat hvr-sweep-to-right"><a href="/kontakt/">Kontakt</a></li>
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
								<a href="http://m.me/ungdrive" target="_blank" class="btn btn-dark w-100 text-right"><small><i class="fa fa-commenting-o" aria-hidden="true"></i></small></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




        <div class="sectionForm">
	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2 intro text-center">
				<i class="fa fa-CAR fa-4x hvr-bob" aria-hidden="true"></i>
				<h2>Boka</h2>
				<p>Alright, en företagarsommar i sikte!<br class="d-none d-md-inline">
				Glöm inte bort nedanstående:</p>
			</div>
			<div class="col-md-6 offset-md-3 videoContent">
			</div>
			<div class="col-md-6 offset-md-3 intro text-center">
				<ul>
					<li>En ansökan per person som vill delta gäller</li>
					<li>Antagning sker löpande = tidig ansökan går före</li>
					<li>Du ska vara folkbokförd i kommunen du ansöker till</li>
					<li>Du kan tacka nej då ansökan inte är bindande</li>
					<li>Ansöker du hellre via video? <a href="mailto:hej@ungdrive.se">Maila oss</a>!</li>
				</ul>
			</div>
			<div class="col-md-6 offset-md-3 intro text-center">
			  <form class="webforms" id="webform" data-locale="sv_SE" enctype="multipart/form-data" action="/webforms/3112613/240463" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="authenticity_token" value="Cg8fiUsuq4S4S4VSuEeMsr5BjRH+pgsb+RUQWm5GMqu4hBeDGoO+1i7OEkbq3d9ifOmKx2e0gfzRRB5raG8gmQ==" />

   
    


  <div id="webforms__fields-container">
      <div class="form-group">
         <div class="webforms__field-description small">
            <p>Förnamn:</p>
          </div>
         <div class="webforms__field text-field">
            <input type="text" name="fname" id="fname" runat="server" class="form-control" required="required" />

        </div>
      </div>
      <div class="form-group">
          <div class="webforms__field-description small">
            <p>Efternamn:</p>
          </div>

        <div class="webforms__field text-field">
            <input type="text" name="fields[last-name]" id="field_lastname" runat="server" class="form-control" required="required" />

        </div>
      </div>
       <div class="form-group">
          

            <div class="webforms__field-description small">
            <p>Bil Regnr:</p>
          </div>
        <div class="webforms__field text-field">
            <input type="text" name="fields[program-och-inriktning]" runat="server" id="Bilregnr" class="form-control" />

        </div>
      </div>
      <div class="form-group">
         <div class="webforms__field-description small">
            <p>Personnummer:</p>
          </div>
          
        <div class="webforms__field text-field">
            <input type="number" name="fields[personnummer]" runat="server" id="field_personnummer" class="form-control" required="required" />

        </div>
      </div>
      <div class="form-group">
          <div class="webforms__field-description small">
            <p>E-post:</p>
          </div>

        <div class="webforms__field text-field">
            <input type="email" name="fields[e-postadress]" runat="server" id="field_epostadress" class="form-control" required="required" />

        </div>
      </div>
      <div class="form-group">
           <div class="webforms__field-description small">
            <p>Mobil tel:</p>
          </div>

        <div class="webforms__field text-field">
            <input type="number" name="fields[mobile-phone]"  runat="server" id="field_mobilephone" class="form-control" required="required" />

        </div>
      </div>
      <div class="form-group">
         <div class="webforms__field-description small">
            <p>Gatanamn:</p>
          </div>

          
        <div class="webforms__field text-field">
            <input type="text" name="fields[adress]" runat="server" id="gata_adress" class="form-control" required="required" />

        </div>
      </div>
      <div class="form-group">
          <div class="webforms__field-description small">
            <p>Postnummer:</p>
          </div>

        <div class="webforms__field text-field">
            <input type="number" name="fields[postnummer]" runat="server" id="field_postnummer" class="form-control" required="required" />

        </div>
      </div>
      <div class="form-group">
         <div class="webforms__field-description small">
            <p>Postort:</p>
          </div>

        <div class="webforms__field text-field">
            <input type="text" name="fields[postort]" runat="server" id="field_postort" class="form-control" required="required" />

        </div>
      </div>

       <div class="form-group">
         <div class="webforms__field-description small">
            <p>Tid:</p>
          </div>

        <div class="webforms__field text-field">
            <input type="time" name="fields[postort]" runat="server" id="fieldtime" class="form-control" required="required" />

        </div>
      </div>


       <div class="form-group">
         <div class="webforms__field-description small">
            <p>Datum:</p>
          </div>

        <div class="webforms__field text-field">
            <input type="date" name="fields[postort]" runat="server" id="fielddate" class="form-control" required="required" />

        </div>
      </div>
         
      <div class="form-group">
        
         <div class="webforms__field category-field">
             <center>
             <table>

                 <tr>
                     <td>
                           <input  style="margin-bottom:30px" type="checkbox" name="fields[hur-fick-du-hora-talas-om-ungdrive][]" runat="server" id="policy" value="1" />  
                     </td>

                     <td>
                          <p style="font-size:22px">Jag accepterar sidans policy,</p>
                     </td>
                     <td><a style="margin-bottom:20px" class="btn" href="#">Läs mer.</a></td>
                 </tr>
             </table>
                 </center>
            </div>
      </div>
   </div>


  <div class="webforms__submit-box form-group">
    <button name="button" runat="server" id="DONEBOKNING" type="submit" class="btn btn-primary">Boka!</button>
  </div>

</form>
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
</body>
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
</html>
