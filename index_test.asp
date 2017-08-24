<!DOCTYPE html>
<html>
<head>

   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Hello World</title>
</head>
<body>
   <p>Hello World</p>
   <% 

	  
Dim ObjSendMail
Set ObjSendMail = CreateObject("CDO.Message") 
     
'This section provides the configuration information for the remote SMTP server.
     
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 'Send the message using the network (SMTP over the network).
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver") ="smtp.mail.yahoo.com"
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 465  
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = True 'Use SSL for the connection (True or False)
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60
     
' If your server requires outgoing authentication uncomment the lines bleow and use a valid email address and password.
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 'basic (clear-text) authentication
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="sporteron@yahoo.com"
ObjSendMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="Th!data1"
     
ObjSendMail.Configuration.Fields.Update
     
'End remote SMTP server configuration section==
     
ObjSendMail.From = "sporteron@yahoo.com"
ObjSendMail.Subject = "this is the subject"
ObjSendMail.To = "stephen.y.zhu@gmail.com"
ObjSendMail.CC = "stephen.y.zhu@hotmail.com"
ObjSendMail.BCC = "sporteron@outlook.com"
     
' we are sending a text email.. simply switch the comments around to send an html email instead
'ObjSendMail.HTMLBody = "this is the body"
ObjSendMail.TextBody = "Test Email"

ObjSendMail.Send


     
Set ObjSendMail = Nothing 


   %>




   <script src="local:///chrome/webworks.js" type="text/javascript"></script>
   <script>
      function ready() {
         var ele = document.createElement("div");
         ele.innerHTML = "uuid: " + blackberry.identity.uuid;
         document.documentElement.appendChild(ele);
      }
      window.addEventListener("load", function(e) {
         document.addEventListener("webworksready", ready);
      }, false);
   </script>
</body>
</html>