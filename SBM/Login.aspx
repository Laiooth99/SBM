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
 		<link rel="alternate" type="application/rss+xml" title="" href="/feed.xml">
		<link rel="alternate" type="application/atom+xml" title="" href="/atom.xml">
 
      <link rel="stylesheet" href="sweetalert2.css"/>
     <script src="sweetalert2.all.min.js"></script>
	 
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
     </form>
     </div>
</body>


    
    <script>

        function EmptyFields() {
            Swal.fire({
                type: 'error',
                title: 'Fel',
                text: 'Var vänlig och fyll i alla Fälten eller skriv rätt upggifter!'

            })
        }


        function SuccessCreate() {
            swal("Obs!", "Resan har Lagts till!" + "</br>", "success");


        }

          </script>
</html>
