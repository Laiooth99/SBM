<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SBM.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inloggning</title>

    
		<meta name="description" content="UngDrive® är ett rikstäckande nätverk av framstående företagare som hjälper dig som är 15-18 år starta eget och tjäna egna pengar på sommarlovet. Vi ger dig en kick-ass företagsutbildning och är tillsammans inställda på ge allt för att inspirera och stötta dig att nå de mål du sätter upp. Exakt så som vi själva skulle velat haft det när vi startade företag.">
		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, viewport-fit=cover" name="viewport">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta charset="utf-8">
		 
		<link rel="stylesheet" href="Main.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="canonical" href="https://ungdrive.se/">
		<link rel="alternate" type="application/rss+xml" title="" href="/feed.xml">
		<link rel="alternate" type="application/atom+xml" title="" href="/atom.xml">
		<!-- OG: Meta -->
		<meta property="og:title" content="Starta eget företag i sommar!">
		<meta property="og:type" content="website">
		<meta property="og:url" content="https://ungdrive.se/">
		<meta property="og:image" content="/img/OG_UngDrive2019.jpg">
		<!-- FB: Pixel Code -->
		<script>!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
		document,'script','https://connect.facebook.net/en_US/fbevents.js');
		fbq('init', '1551938211770154');	//HQ
		fbq('init', '1800718543524803');	//Örebro
		fbq('init', '10150172913941489');	//Skaraborg
		fbq('init', '428887693972423');		//Jönköping
		fbq('init', '428293950845928');		//Norrbotten
		fbq('init', '538424153182070');		//Kronoberg
		fbq('track', 'PageView');</script>
		<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1551938211770154&ev=PageView&noscript=1"></noscript>
	 
</head>
 <body class='page-template-dark'>
    <form id="form1" runat="server">
        

        			<div class="col-md-6 offset-md-3 intro text-center">
			  <form class="webforms" id="webform" enctype="multipart/form-data" />

    
  <div id="webforms__fields-container">
      <div class="form-group">
         <div class="webforms__field-description small">
            <p>Användarnamn:</p>
          </div>
         <div class="webforms__field text-field">
            <input runat="server" id="Username" type="text"   class="form-control" required="required" />
         </div>
      </div>
      <div class="form-group">
          <div class="webforms__field-description small">
            <p>Lösenord:</p>
          </div>
         <div class="webforms__field text-field">
            <input runat="server" id="Password" type="password"   class="form-control" required="required" />
         </div>
      </div>
    </div>


  <div class="webforms__submit-box form-group">
    <button name="_login" runat="server" onserverclick="_login_ServerClick" id="_login" type="submit" class="btn btn-primary">Logga in!</button>
  </div>

</form>
			</div>
        

    </form>
</body>
</html>
