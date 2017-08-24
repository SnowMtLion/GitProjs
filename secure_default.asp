<!-- #include file="config.asp" -->
<%
Session.Abandon

' ------------------------------------------------------------------
' This part is for sending the dummy value to correct 
' the Page Refresh problem.
' ------------------------------------------------------------------
vDummyValue = Now
vDummyValue = Replace(vDummyValue," ","")
vDummyValue = Replace(vDummyValue,"/","x")
vDummyValue = Replace(vDummyValue,":","x")
' ------------------------------------------------------------------
'test edit git

'test 2 commit

'third 3 from gui 

'=======  SSL redirect  =======
sHTTP_HOST = Request.ServerVariables("HTTP_HOST")
%>
<html>
<head>
    <title>
        <%= sWebSiteName %></title>
        <style>
            A:link
            {
                color: Blue;
            }
            A:visited
            {
                color: Blue;
            }
            A:hover
            {
                color: Red;
            }
        </style>
    </head>
    <body>
        <div align="center">
            <table border="0">
                <tr>
                    <td align="center">
                        <img src="<%= sLogoPath %>" border="0" alt="">
                    </td>
                    <td>
                        <font face="Verdana" size="5" color="navy"><b></b></font>
                    </td>
                </tr>
                <!-- #include virtual = "/Errors/websiteDownNotification.asp" -->
                <tr>
                    <td colspan="2">
                        <hr>
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <form name="SysLogin" action="/UM/authen4_0.asp" method="post">
                            <table border="0">
                                <tr>
                                    <td align="center" colspan="2">
                                        <font face="Verdana" size="2" color="black">Password is case sensitive</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font face="Verdana" size="2" color="black">User Name:</font>
                                    </td>
                                    <td>
                                        <input type="text" name="<%=vDummyValue%>UID">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font face="Verdana" size="2">Password: </font>
                                    </td>
                                    <td>
                                        <input type="password" name="<%=vDummyValue%>PWD">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <br>
                                        <font face="Arial" size="2"><a tabindex="99" href="/UM/forgotPassword.asp?dv=<%= vDummyValue %>">
                                            Forgot password? or Locked account?</a></font>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td colspan="2">
                                            <br>
                                            <input type="button" name="Enter" onclick="document.SysLogin.submit()" value="Enter">
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="center">
                                <font face="Arial" size="2"><a href="/UM/userexistcheck.asp">PLEASE CLICK HERE TO REQUEST USER REGISTRATION</a></font><br>
                            </div>
                        </td>
                    </tr>
                </table>
                <table width="650">
                    <tr>
                        <td width="142">
                        </td>
                        <td>
                            <!-- #include virtual = "/Errors/commonNotification.asp" -->
                            <font face="Arial" size="2">________________________________</font><font face="Arial"
                            size="2">_____________________________________________________</font><br>
                            <font face="Arial" size="2">All the system generated date and time displayed are US
                                Eastern Standard Time (EST) and do not switch between summer (daylight saving) and
                                winter (standard) time. All date and time entered by the investigational site are
                                local time.</font>
                            </td>
                        </tr>
                    </table>
                </div>
                <iframe name="oWW" id="oWW" style="width: 160px; height: 160px; display: none;" src="ww.aspx">
                </iframe>
            </body>
            </html>
