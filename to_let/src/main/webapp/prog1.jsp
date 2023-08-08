<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
function makeRequestObject()
{
varxmlHttp=false;
try
   {
    xmlHttp=new ActiviXObject('Msml2.HTTP');
 
   }
 catch(e)
   {
   xmlHttp=new ActiviXObject('Microsoft.XMLHTTP');
   }
   
   
   catch(E)
   {
   xmlHttp=false
   }
   

}

if (!xmlHttp && typeof(XMLHttpRequest)!='undefined')
{
 xmlHttp=new XMLHttpRequest;
}
return xmlHttp;
}

function sendData(val)
{
var  xmlHttp=makeRequestObject();
var  _url='output.jsp?value='+val;

xmlHttp.open('Get', _url,true);

xmlHttp.onreadystatechange=function()

                                {
                                 if(xmlHttp.readyState==4 && xmlHttp==200)
                                 var content=xmlHttp.responseText;

                                   if(content)
                                   {
                                    document.getElementById("info").innerHTML=content;
                                   }
                                
                                }

                              }
xmlHttp.send(null);
}
</body>
</html>