<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- DECLARATION -->
	<%!boolean formatar = true; %>
	
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		}
	%>
	
	
	
	<!-- EXPRESSION -->
	<h1>A data de hoje ï¿½: <%=new java.util.Date() %></h1>
	<h1>A data de hoje ï¿½: <%=today() %></h1>
	
	
	
	<!-- SCRIPTLET -->
	<h1>A data de hoje ï¿½: <% if (formatar){
								out.println(today());
							 }else{
								 out.println(new java.util.Date());
						   }%>
	</h1>
						   
						   
						   
						   
						   
						   
						   
						   
	<!-- EXERCICIO 2 -->
		<!-- DECLARATION -->
			<%!int contador = 10; %>
			<%!String menor = "menor"; %>
			<%!String maior = "maior"; %>
		<!-- END DECLARATION -->
		
	
		
		<!-- SCRIPLET -->
				<%if(contador<100){
					out.println(maior);
				} else {
					out.println(menor);
				}%>
		<!-- END SCRIPLET -->
		
		<!-- EXPRESSION -->
			<h1><%=contador%></h1>
		<!-- END EXPRESSION -->
		


<!-- EXERCICIO 3 -->
		<!-- DECLARATION -->
		<%! Calendar cal = Calendar.getInstance();%>
		<%!int segundos(){
			return cal.get(Calendar.SECOND);
		}%>
		<%!String par = "par";%>
		<%!String impar = "impar";%>
		<!-- END DECLARATION -->
		
		<!-- SCRIPLET -->
			<%if(segundos() % 2 == 0){
				out.println(par);
				}else{
					out.println(segundos());
				}%>
		<!-- END SCRIPLET -->
		
		<!-- EXPRESSION -->
			<h1>São <%=segundos()%> segundos</h1>
		<!-- END EXPRESSION -->


	

</body>
</html>