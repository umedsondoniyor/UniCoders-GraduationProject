<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Insert title here</title>
<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;

	if(x=="java")
    	{
    	
		x="public class HelloWorld{public static void main(String []args){System.out.println(\"Hello World\");}}";
    	}
    
	else if(x=="python3"){
    	
		x="print ('Hello World!');";
    	}
    
	else if(x=="python2"){
		
		x="print \"Hello World!\"";
		}
	else if(x=="c"){
	
		x="#include <stdio.h>\nint main()\n{\nprintf(\"Hello, World!\n\");\nreturn 0;\n}";
		}
	/*
	else if(x=="cpp"){
 	
 		x="#include <iostream>\nusing namespace std;\nint main()\n{\ncout << \"Hello World\" << endl; \nreturn 0;\n}"";
 		}
	
	else if(x=="php"){
	
		x="<html>\n<head>\n<title>Online PHP Script Execution</title>\n</head>\n<body>\n<?php\necho \"<h1>Hello, PHP!</h1>\n\";\n?>\n</body>\n</html>";
		}
	
	
else if(x=="python3"){
	
	x="print (\"Hello World!\");";
}
    */
   
   
    document.getElementById("kod").innerHTML = x;
}
</script>
</head>
<body>
<%

String id=request.getParameter("id"); 
if(id==null){
	
	response.sendRedirect("Anasayfa.jsp");
}
session.setAttribute( "soru_id", id);

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
Statement st= conn.createStatement(); 

ResultSet rs=st.executeQuery("SELECT yarisma_adi,icerik,girisler FROM unicodes.yarismalar where id_y='"+id+"';"); 
String sorular="";
while(rs.next()) {

    sorular += "<p>Soru</p><p>" + rs.getString(1)+"</p>";
    sorular += "<p>İçerik</p><p>" + rs.getString(2)+"</p>";
    sorular += "<p>Girirşler</p><p>" + rs.getString(3)+"</p>";

}
out.print(sorular);


%>


<FORM METHOD=POST ACTION="Kontrol_yarisma.jsp">

<select name=dil id="mySelect" onchange="myFunction()">
<option value="java">Java</option>
<option value="python3">Python 3</option>
<option value="python2">Python 2</option>
<option value="c">C</option>
</select>
<br>
		
		<textarea rows="40" cols="250" name=kod id=kod>
public class HelloWorld{
public static void main(String []args){
System.out.println("Hello World");
}
}
</textarea>
		
<br>
<INPUT TYPE=SUBMIT value="Cevapla" id="button">

<p id="demo"></p>

</FORM>


</body>
</html>