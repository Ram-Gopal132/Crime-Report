/**
 * 
 */function makeRequestObject()
	{
		var xmlHttp=false;
		try
			{
				xmlHttp=new ActiveXObject('Msxml2.XMLHTTP');
			}
		catch(e)
			{
				try
					{
						xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');		
						
					}
				catch(E)
					{
						
						xmlHttp=false;
					}
				}
			if(!xmlHttp && typeof(XMLHttpRequest)!='undefined')
			{
				
				xmlHttp=new XMLHttpRequest();
			}
			
		return xmlHttp;
		
	}

  function check(val)
 	{
		 var xmlHttp=makeRequestObject();
		 var _url='emailcheck.jsp?uid='+val;
		 	 
		 xmlHttp.open('GET',_url,true);
		 xmlHttp.onreadystatechange=function()
		 	{
				if(xmlHttp.readyState==4 && xmlHttp.status==200)
					 {
						var content=xmlHttp.responseText;
						if(content)
						{
							document.getElementById("info").innerHTML=content;
						}
						else
						{
							document.getElementById("info").innerHTML="";
						}	 
					}
				}
		  xmlHttp.send(null);
	 	}
	 	
	 	
	function populateCities(val)
		{
			var xmlHttp=makeRequestObject();
			
			var _url='PopulateCity.jsp?sname='+val;
			
			alert(_url);
			xmlHttp.open('GET',_url,true);
			
			xmlHttp.onreadystatechange=function()
											{
												if(xmlHttp.readyState==4 && xmlHttp.status==200)
													{
														var content=xmlHttp.responseText;
														
														if(content)
															{
																
																document.getElementById("info").innerHTML=content;
															}
														
													}
												
												
											}
			
			
			xmlHttp.send(null);
			
		}
	
	 function getQuestion()
		{
			var xmlHttp=makeRequestObject();
			var _url='Getsecurityques.jsp?uid='+document.getElementById("uid").value;
			alert(_url);
				
			xmlHttp.open('GET',_url,true);
			xmlHttp.onreadystatechange=function()
				{
					if(xmlHttp.readyState==4 && xmlHttp.status==200)
					var content=xmlHttp.responseText;
																	
					if(content)
					{
						document.getElementById("info").innerHTML=content;
					}
				}
			
			xmlHttp.send(null);
			}
			
			
			function populateCities(val)
	{
		
		var xmlHttp=makeRequestObject();
		
		var _url='PopulateCity.jsp?sname='+val;

		
		xmlHttp.open('GET',_url,true);
		
		xmlHttp.onreadystatechange=function()
										{
											if(xmlHttp.readyState==4 && xmlHttp.status==200)
												{
													var content=xmlHttp.responseText;
													
													if(content)
														{
															document.getElementById("info").innerHTML=content;
															
														}
													
												}
											
											
											
											
										}
		xmlHttp.send(null);
	}	
	
function populateStats()
	{
		
			var xmlHttp=makeRequestObject();
			
			var _url='ShowCrimeStats.jsp?sname='+document.getElementById("cmb1").value+'&cname='+document.getElementById("info").value;
			
			xmlHttp.open('GET',_url,true);
			
			xmlHttp.onreadystatechange=function()
												{
													if(xmlHttp.readyState==4 && xmlHttp.status==200)
														{
															var content=xmlHttp.responseText;
															
															if(content)
																{
																	
																	document.getElementById("display").innerHTML=content;
																}
															
														}
													
													
													
												}
		
		
		xmlHttp.send(null);
		
	}
	
		
																	
													
		