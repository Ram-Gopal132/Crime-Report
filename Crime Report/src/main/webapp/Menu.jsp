
<%
response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage.jsp");
	
	}

%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="stmenu.js"></script></head>
<body>
<script type="text/javascript">
<!--
stm_bm(["menu0f4d",980,"","blank.gif",4,"","",0,0,250,0,1000,1,0,0,"","540",67109119,0,1,2,"default","hand","",1,25],this);
stm_bp("p0",[0,4,0,0,0,0,0,0,100,"",-2,"",-2,50,0,0,"#799BD8","transparent","060417line.gif",3,0,0,"#000000"]);
stm_ai("p0i0",[0,"HOME","","",-1,-1,0,"index.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"","bg2.gif",2,3,0,0,"#FFFFF7","#000000","#66FFFF","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"","bg1.gif","","bg3.gif",6,6,26],90,26);

stm_aix("p0i1","p0i0",[0,"COMPLAINT CATEGORY","","",-1,-1,0,"","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"","bg2.gif",3],90,26);
stm_bpx("p1","p0",[0,4,0,0,0,0,0,0,100,"",-2,"",-2,78,0,0,"#799BD8","#EEEEEE","060417line1.gif"]);
stm_aix("p1i0","p0i0",[0,"WOMEN/CHILD RELATED CRIME","","",-1,-1,0,"women.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],70,26);
stm_aix("p1i1","p1i0",[0,"REPORT A CYBER CRIME","","",-1,-1,0,"cyber.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],70,26);
stm_aix("p1i2","p1i1",[0,"FINANCIAL FRAUD","","",-1,-1,0,"financial.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],70,26);
stm_aix("p1i3","p1i1",[0,"REPORT A RAPIST CRIME","","",-1,-1,0,"rape.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],70,26);
stm_aix("p1i4","p1i1",[0,"REPORT A MURDERER CRIME","","",-1,-1,0,"murder.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],70,26);
stm_ep();
stm_aix("p0i2","p0i1",[0,"CRIME STATISTICS","","",-1,-1,0,"static.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],90,26);
stm_aix("p0i3","p0i2",[0,"FILE YOUR COMPLAINT","","",-1,-1,0,"file_track.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],90,26);
stm_aix("p0i4","p0i2",[0,"TRACK YOUR COMPLAINT","","",-1,-1,0,"Track.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"060417line1.gif","060417line1.gif",3,3,0,0,"#FFFFF7","#000000","#333399","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"060417line1.gif","060417line1.gif","060417line1.gif","060417line1.gif",10,10],90,26);
stm_aix("p0i5","p0i2",[0,"CONTACT US","","",-1,-1,0,"Contactus.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"",".gif",2,3,0,0,"#FFFFF7","#000000","#66FFFF","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"","bg1.gif","","bg3.gif",6,6,26],90,26);
stm_aix("p0i5","p0i2",[0,"ABOUT US","","",-1,-1,0,"About.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"",".gif",2,3,0,0,"#FFFFF7","#000000","#66FFFF","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"","bg1.gif","","bg3.gif",6,6,26],90,26);

<% if(session.getAttribute("uid")!=null && session.getAttribute("ps")!=null)
	
{
%>

stm_aix("p0i5","p0i2",[0,"LOGOUT","","",-1,-1,0,"Logout.jsp","_self","","","","",0,0,0,"","",0,0,0,1,1,"#FFFFF7",1,"#B5BED6",1,"",".gif",2,3,0,0,"#FFFFF7","#000000","#66FFFF","#FF0000","bold 7pt Verdana","bold 7pt Verdana",0,0,"","bg1.gif","","bg3.gif",6,6,26],90,26);

<%
}

%>



stm_ep();
stm_em();
//-->
</script>

</body>
</html>