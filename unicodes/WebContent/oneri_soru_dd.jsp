<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
  <%
  String id=request.getParameter("id"); 
  String durum="";

  Class.forName("com.mysql.jdbc.Driver"); 
  java.sql.Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/unicodes","root","umed"); 
  PreparedStatement ps=null;
  Statement st= conn.createStatement();  
  ResultSet rs=st.executeQuery("SELECT yatin_durumu FROM onerilen_sorular where  id_s ='"+id+"'"); 

  while(rs.next()) {
	  durum=rs.getString("yatin_durumu");
  }
  System.out.print(durum);
  if(durum.equals("0"))
	  durum="1";
  else
	  durum="0";
  String ekle="update onerilen_sorular set yatin_durumu='"+durum+"' where id_s='"+id+"';";

  ps=conn.prepareStatement(ekle);
  
  int sonuc=ps.executeUpdate();
  if(sonuc!=0){
	  response.sendRedirect("onerilen_soru_listesi.jsp");
  	}
  else {
  	%> <p>G�ncelleme i�lemi ba�ar�s�z olmu�tur. Dahasonra tekrara deneyin.</p><%
  }
  %>
  %>

</body>
</html>