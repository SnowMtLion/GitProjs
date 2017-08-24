<!-- #include file="config.asp" -->

<%
Response.Buffer = True


vDummyValue = Now
vDummyValue = Replace(vDummyValue," ","")
vDummyValue = Replace(vDummyValue,"/","x")
vDummyValue = Replace(vDummyValue,":","x")


sHTTP_HOST = Request.ServerVariables("HTTP_HOST")


'If InStr(sHTTP_HOST, "devedc.") > 0 or InStr(sHTTP_HOST, "demoedc.") > 0 or InStr(sHTTP_HOST, "dr.") > 0 or InStr(sHTTP_HOST, "localhost.") > 0 then
If InStr(sHTTP_HOST, "localhost.") > 0 then
	sRedir = "secure_default.asp?dv=" & vDummyValue
Else
	'sRedir = "https://edc." & sWebSiteName & ".com/default.asp?dv=" & vDummyValue
End if
%>


<html>
<head>
	<title><%= sWebSiteName %></title>
</head>

<body>


<!-- #include virtual = "/Errors/PopupMessage.asp" -->


</body>
</html>
